package services;

import ResponseMessage.ReturnObject;
import modle.FileModle;
import modle.User;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public interface UserService {
    ReturnObject queryUserByLoginNameAndPwd(User user, Model model, HttpSession session);

    String GetAllFile( Model model, HttpSession session);
    String insertFile(FileModle fileModle);

}
