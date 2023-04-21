package services.Impl;
import mapper.*;
import modle.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import services.WorkService;
import tool.ReturnObject;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class WorkServiceImpl implements WorkService {
    @Autowired
    private ComUserMapper commonUserMapper;

    @Autowired
    private CompanyMapper companyMapper;

    @Autowired
    private PersonMapper personMapper;

    @Autowired
    WorkMapper workMapper;

    @Autowired
    UserMapper userMapper;

    private int num = 5;//设置每一页数据的个数
    @Override
    public String InsertWork(WorkList workList, Model model, HttpSession session) {
        int i=workMapper.InsertWork(workList);
        if(i==0)
        {

            model.addAttribute("postJob",null);
        }else
        {


            model.addAttribute("postJob","1");
        }
        return "/post-job";
    }

    //查询每页的记录
    @Override
    public List<WorkList> queryWorkListPage(int page) {
        int n = this.num;
        int m = n * (page - 1);
        return workMapper.queryWorkList(m,n);
    }
    //查询最大页数
    @Override
    public int queryPage() {
        int count = workMapper.queryPage();
        int page;
        if (count%this.num==0) {
            page = count/this.num;
        } else {
            page = count/this.num + 1;
        }
        return page;
    }

    @Override
    public String GetAllWork(WorkList workList, Model model, HttpSession session,String page) {
        int max=queryPage();
        int   ReturnPage;
        try {
            ReturnPage=Integer.valueOf(page);
        }catch (Exception e)
        {
            ReturnPage=1;
        }

        //当传过来是空的时候,默认第一页
        if (page == null) {
            ReturnPage = 1;
        } else if (ReturnPage < 1){
            //不能小于第一页
            ReturnPage = 1;
        } else if (ReturnPage > max) {
            //不能大于最大页
            ReturnPage = max;
        }

        //绑定最大页数
        model.addAttribute("maxPage", max);
        //调用service层查询第几页的数据
        List<WorkList> list= queryWorkListPage(ReturnPage);
        //绑定查询的结果到列表
        model.addAttribute("list",list);
        //绑定当前的页码
        model.addAttribute("page", ReturnPage);
        return "/job-list";
    }

    @Override
    public String GetUserWork(WorkList workList, Model model, HttpSession session, String page) {
        GetAllWork(workList, model, session, page);
        return "user/worklist";
    }

    @Override
    public String SelectWorkByNameAndType(WorkList workList, Model model, HttpSession session)
    {

        List<WorkList> list=workMapper.queryConditional(workList);
        model.addAttribute("list",list);
        model.addAttribute("page", "1");
        return "/job-list";
    }

    @Override
    public String SelectWorkById(WorkList workList, Model model, HttpSession session,String id) {
        WorkList result=workMapper.queryWorkListById(id);
        PersonMg personMg=personMapper.selectByEmail(result.getPost_people());
        model.addAttribute("result",result);
        model.addAttribute("personMg",personMg);


        return "/job-details";
    }

    @Override
    public String deleteWork(String id, Model model, HttpSession session) {
        workMapper.deleteByid(Integer.valueOf(id));
        WorkList workList=null;
        GetAllWork(workList, model, session, null);
        return "/user/worklist";
    }

    @Override
    public String insertWorkByUser(WorkList workList, Model model, HttpSession session)
    {
        workMapper.InsertWorkByUser(workList);
        GetAllWork(workList, model, session, null);
        return "/user/worklist";
    }

    @Override
    public String updateWorkByUser(WorkList workList, Model model, HttpSession session)
    {
        workMapper.updateWorkByUser(workList);
        GetAllWork(workList, model, session, null);
        return "/user/worklist";
    }

    @Override
    public String GetWorkByUser(WorkList workList, Model model, HttpSession session, String id) {
        workList= workMapper.queryWorkListById(id);
        model.addAttribute("com",workList);
        model.addAttribute("update","1");
        GetAllWork(workList, model, session, null);
        return "/user/worklist";
    }

    @Override
    public void GotoCv(String id, Model model, HttpSession session) {
      String email= (String) session.getAttribute("email");
      PersonMg personMg=  personMapper.selectByEmail(email);
      WorkList workList=workMapper.queryWorkListById(id);
      model.addAttribute("postman",workList.getPost_people());
      model.addAttribute("JobSeekers",personMg.getEmail());
      model.addAttribute("post_cv",workList.getWorkName());

    }

    @Override
    public ReturnObject postCv(CurriculumVitae curriculumVitae, HttpSession session, Model model, String ssFile)
    {
        ReturnObject returnObject=new ReturnObject();
        FileModle fileModle = userMapper.selectFileByFileName(ssFile);
        curriculumVitae.setFile_Url(fileModle.getUrl()+"/"+ssFile);
        curriculumVitae.setState("未查看");
        int a=  userMapper.insertCv(curriculumVitae);
        if(a==1)
        {
            returnObject.setCode("0");
            userMapper.updateFileState(fileModle.getFilename(),"Cv");
        }
        else  returnObject.setCode("1");

        return returnObject;
    }


    @Override
    public String getWorkList_HR(HttpSession session, Model model,String page) {
        String  post_people= String.valueOf(session.getAttribute("user"));
        int max=queryPage_HR(post_people);
        int   ReturnPage;
        try {
            ReturnPage=Integer.valueOf(page);
        }catch (Exception e)
        {
            ReturnPage=1;
        }

        //当传过来是空的时候,默认第一页
        if (page == null) {
            ReturnPage = 1;
        } else if (ReturnPage < 1){
            //不能小于第一页
            ReturnPage = 1;
        } else if (ReturnPage > max) {
            //不能大于最大页
            ReturnPage = max;
        }
        model.addAttribute("page", ReturnPage);
        model.addAttribute("maxPage", max);
       String username= String.valueOf(session.getAttribute("user"));
       List<WorkList> list =queryWorkListPage_HR(ReturnPage,post_people);
       model.addAttribute("list",list);
       return "/user/worklist_HR";
    }

    @Override
    public List<WorkList> queryWorkListPage_HR(int page,String post_people) {
        int n = this.num;
        int m = n * (page - 1);
        return workMapper.queryWorkList_HR(m,n,post_people);
    }

    @Override
    public int queryPage_HR(String post_people) {
        int count = workMapper.queryPage_HR(post_people);
        int page;
        if (count%this.num==0) {
            page = count/this.num;
        } else {
            page = count/this.num + 1;
        }
        return page;
    }

    @Override
    public String deleteWork_HR(String id, Model model, HttpSession session) {

        String  post_people= String.valueOf(session.getAttribute("user"));
        workMapper.deleteById_HR(id,post_people);
        return getWorkList_HR(session,model,null);
    }

    @Override
    public String GotoPost_Job(HttpSession session, Model model) {
        String email= (String) session.getAttribute("email");
        model.addAttribute("email",email);
      PersonMg personMg= personMapper.selectByEmail(email);
        model.addAttribute("company",personMg.getCompany());
        return null;
    }



}
