package services;

import ResponseMessage.ReturnObject;
import modle.CommonUser;
import modle.WorkList;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface WorkService
{

    String InsertWork(WorkList workList, Model model, HttpSession session);
    // 分页查询
    List<WorkList> queryBookPage(int page);
    // 查询页数
    int queryPage();

    String GetAllWork(WorkList workList, Model model, HttpSession session,String page);

    //实现查找工作的功能

    String SelectWorkByNameAndType(WorkList workList, Model model, HttpSession session);

}
