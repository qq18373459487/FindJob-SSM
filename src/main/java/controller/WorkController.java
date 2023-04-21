package controller;

import mapper.WorkMapper;
import modle.CurriculumVitae;
import modle.FileModle;
import modle.User;
import modle.WorkList;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import services.UserService;
import services.WorkService;
import tool.ReturnObject;

import javax.mail.internet.MailDateFormat;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/work")
public class WorkController {

    @Autowired
    WorkService workService;

    @Autowired
    UserService userService;

    @Autowired
    WorkMapper workMapper;

    @RequestMapping("/ToAddWork")

     public String ToAddWork(HttpSession session,Model model)
    {
        workService.GotoPost_Job(session,model);
        return "/post-job";
    }

    @RequestMapping("/ToSelectWork")
    public String ToSelectWork()
    {
        return "/find-job";
    }

    @RequestMapping("/AddWork")

    public String AddWork(@ModelAttribute WorkList workList, Model model, HttpSession session)
    {
        return workService.InsertWork(workList, model, session);
    }


    @RequestMapping("/GetAllWork")
    //这里的获取所有主要是实现分页功能
    public String GetAllWork(@ModelAttribute WorkList workList,Model model,HttpSession session,String page)
    {
        return workService.GetAllWork(workList, model, session,page);
    }

    @RequestMapping("/DeleteWork")
    public String DeleteWork(String id,Model model,HttpSession session)
    {
        return workService.deleteWork(id, model, session);
    }
    @RequestMapping("/UpdateWork")
    public void UpdateWork(@ModelAttribute WorkList workList,Model model,HttpSession session)
    {
        return ;
    }

    @RequestMapping("/SelectWork")
    //查询这里也需要用到到分页
    public String SelectWork(@ModelAttribute WorkList workList,Model model,HttpSession session)
    {
        return workService.SelectWorkByNameAndType(workList, model, session);
    }
    @RequestMapping("/SelectWorkDetail")
    //查询这里也需要用到到分页
    public String SelectWorkDetail(@ModelAttribute WorkList workList,Model model,HttpSession session,String id)
    {
        return workService.SelectWorkById(workList, model, session,id);
    }
    @RequestMapping("/workList")
    public String workList(@ModelAttribute WorkList workList, Model model, HttpSession session, String page)
    {
        return workService.GetUserWork(workList, model, session, page);
    }
    @RequestMapping("/insertWorkByUser")
    public String insertWorkByUser(@ModelAttribute WorkList workList, Model model, HttpSession session)
    {
        return workService.insertWorkByUser(workList, model, session);
    }
    @RequestMapping("/updateWorkByUser")
    public String updateWorkByUser(@ModelAttribute WorkList workList, Model model, HttpSession session)
    {
        return workService.updateWorkByUser(workList, model, session);
    }
    @RequestMapping("/GetWorkByUser")
    public String updateWorkByUser(@ModelAttribute WorkList workList, Model model, HttpSession session,String id)
    {
        return workService.GetWorkByUser(workList, model, session,id);
    }
    //进入简历发布页面
    @RequestMapping("/GotoCv")
    public String GotoCv(String id, Model model, HttpSession session)
    {
        workService.GotoCv(id,model,session);
        return "postCurriculumVitae";
    }
     //简历发布接口
    @RequestMapping("/postCv")
    @ResponseBody
    public ReturnObject postCv(@ModelAttribute CurriculumVitae curriculumVitae, HttpSession session, Model model, String ssFile)
    {
        return workService.postCv(curriculumVitae,session,model,ssFile);
    }
    @RequestMapping("workList_HR")
    public String workList_HR( HttpSession session, Model model,String page)
    {
        return  workService.getWorkList_HR(session,model,page);
    }
    @RequestMapping("/DeleteWork_HR")
    public String DeleteWork_HR(String id,Model model,HttpSession session)
    {
        return workService.deleteWork_HR(id, model, session);
    }


    @RequestMapping(value="/download",method= RequestMethod.GET)
    public void download(@RequestParam(value="filename")String filename,
                         HttpServletRequest request, HttpServletResponse response,HttpSession session,Model model) throws IOException {
        //模拟文件，myfile.txt为需要下载的文件
        String path =filename;
        //获取输入流
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //转码，免得文件名中文乱码
        filename = URLEncoder.encode(filename,"UTF-8");
        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while((len = bis.read()) != -1){
            out.write(len);
            out.flush();
        }
        out.close();
        workMapper.updateCvById(path);
    }

}
