package services.Impl;
import mapper.WorkMapper;
import modle.WorkList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import services.WorkService;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class WorkServiceImpl implements WorkService {
    @Autowired
    WorkMapper workMapper;

    private int num = 5;//设置每一页数据的个数
    @Override
    public String InsertWork(WorkList workList, Model model, HttpSession session) {
        int i=workMapper.InsertWork(workList);
        if(i==0)
        {
            String result="插入失败";
            model.addAttribute("message",result);
        }else
        {
            String result="插入成功";
            model.addAttribute("message",result);
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
        System.out.println("result内容"+result);
        model.addAttribute("result",result);
        return "/job-details";
    }
}
