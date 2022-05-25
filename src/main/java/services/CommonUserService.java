package services;

import ResponseMessage.ReturnObject;
import modle.CommonUser;
import modle.PersonMg;
import org.springframework.ui.Model;


import javax.servlet.http.HttpSession;

public interface CommonUserService {
    ReturnObject InsertComUser(CommonUser user, Model model, HttpSession session);
    String SelectComUser(CommonUser user, Model model, HttpSession session);
    String SelectPerSonMG(PersonMg personMg, Model model, HttpSession session,String email);
    String updataPerSonMG(PersonMg personMg, Model model, HttpSession session);
}
