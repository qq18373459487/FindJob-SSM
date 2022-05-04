package controller;

import modle.WorkList;
import org.hibernate.jdbc.Work;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import services.WorkService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/work")
public class WorkController {

    @Autowired
    WorkService workService;

    @RequestMapping("/ToAddWork")

     public String ToGetAllWork()
    {
        return "/post-job";
    }

    @RequestMapping("ToSelectWork")
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
    public void DeleteWork(@ModelAttribute WorkList workList,Model model,HttpSession session)
    {
        return ;
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
}
