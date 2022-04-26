package services;

import ResponseMessage.ReturnObject;
import modle.User;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

@Service
public interface UserService {
    ReturnObject queryUserByLoginNameAndPwd(User user, Model model, HttpSession session);
}
