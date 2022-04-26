package services;

import ResponseMessage.ReturnObject;
import modle.CommonUser;
import org.springframework.ui.Model;


import javax.servlet.http.HttpSession;

public interface CommonUserService {
    ReturnObject InsertComUser(CommonUser user, Model model, HttpSession session);
    ReturnObject SelectComUser(CommonUser user, Model model, HttpSession session);
}
