package services;

import modle.Article;
import modle.CurriculumVitae;
import modle.WorkList;
import org.springframework.ui.Model;
import tool.ReturnObject;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface WorkService
{

    String InsertWork(WorkList workList, Model model, HttpSession session);
    // 分页查询
    List<WorkList> queryWorkListPage(int page);
    // 查询页数
    int queryPage();

    String GetAllWork(WorkList workList, Model model, HttpSession session,String page);
    String GetUserWork(WorkList workList, Model model, HttpSession session,String page);

    //实现查找工作的功能

    String SelectWorkByNameAndType(WorkList workList, Model model, HttpSession session);

    String SelectWorkById(WorkList workList, Model model, HttpSession session,String id);

    String deleteWork(String id,Model model,HttpSession session);

    String insertWorkByUser(WorkList workList, Model model, HttpSession session);

    String updateWorkByUser(WorkList workList, Model model, HttpSession session);

    String GetWorkByUser (WorkList workList, Model model, HttpSession session,String id);

    void GotoCv(String  id, Model model, HttpSession session);
    ReturnObject postCv(CurriculumVitae curriculumVitae,HttpSession session,Model model,String ssFile);

    String getWorkList_HR(HttpSession session,Model model,String page);

    // 分页查询
    List<WorkList> queryWorkListPage_HR(int page,String post_people);
    // 查询页数
    int queryPage_HR(String post_people);

    String deleteWork_HR(String id,Model model,HttpSession session);

    String GotoPost_Job(HttpSession session ,Model model);


}
