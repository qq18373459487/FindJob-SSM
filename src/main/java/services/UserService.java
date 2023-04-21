package services;

import modle.Article;
import modle.Comment;
import tool.ReturnObject;
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

    // 分页查询
    List<User> queryUserPage(int page);
    // 查询页数
    int queryPage();

    String GetAllUser(User user, Model model, HttpSession session, String page);

    String deleteUserById(String id, Model model, HttpSession session );

    String updateUserReById(String id, Model model, HttpSession session,String relname);

    String insertUser(User user ,Model model, HttpSession session);

    String GotoCv(User user ,Model model, HttpSession session);
    String DeleteCv(String id,Model model, HttpSession session);
    ReturnObject addArticle(Article article, HttpSession session , Model model);

    // 分页查询
    List<Article> queryArticleList(int page);
    // 查询页数
    int queryArticlePage();

    String GetAllArticle(Article article, Model model, HttpSession session, String page);

    String deleteArticle(String id, Model model, HttpSession session);

    ReturnObject updateArticle( Model model, HttpSession session,Article article);

    String GotoUpdateArticle(String id, Model model, HttpSession session);

    String updateArticleState(String id, String state,Model model, HttpSession session);

    //评论
    String GetAllComment(Comment comment, Model model, HttpSession session, String page);

    // 分页查询
    List<Comment> queryCommentList(int page);
    // 查询页数
    int queryCommentPage();

    String deleteComment(String id, Model model, HttpSession session);

    String updateCommentState(String id, String state,Model model, HttpSession session);






}
