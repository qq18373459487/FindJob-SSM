package services;

import ResponseMessage.ReturnObject;
import modle.Company;
import modle.FileModle;
import modle.User;
import modle.WorkList;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public interface UserService {

    ReturnObject queryUserByLoginNameAndPwd(User user, Model model, HttpSession session);

    String GetAllFile( Model model, HttpSession session);

    String insertFile(FileModle fileModle);

    // 分页查询
    List<User> queryUserPage(int page);
    // 查询页数
    int queryPage();

    String GetAllUser(User user, Model model, HttpSession session, String page);

    String deleteUserById(String id, Model model, HttpSession session );

    String updateUserReById(String id, Model model, HttpSession session,String relname);

    String insertUser(User user ,Model model, HttpSession session);







}
