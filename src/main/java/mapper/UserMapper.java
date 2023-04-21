package mapper;

import modle.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.List;
import java.util.Map;

public interface UserMapper {

    //这里实现的是登录功能
    User selectUserByLoginNameAndPWD(Map<String,Object> map);

    List<FileModle> selectAllFile();

    int insertFile(FileModle fileModle);

    int insertUser(User user);

    List<User> GetAllUser();

    // 分页查询 @parame
    List<User> queryUserList(@Param("m")int m, @Param("n")int n);

    // 查询页数
    int queryPage();

    int deleteUserById(int id );

    int updateUserReById(@Param("id") int id,@Param("realname") String realname);

    int insertCv(CurriculumVitae curriculumVitae);

    FileModle selectFileByFileName(@Param("filename") String filename);

    int updateFileState(@Param("filename") String filename,@Param("type") String type);

    List<CurriculumVitae> getAllCvByre_man(@Param("re_man") String re_man);

    int deleteCvById(@Param("id") String id);

    int insertArticle(Article article);

    // 分页查询 @parame
    List<Article> queryArticleList(@Param("m")int m, @Param("n")int n);

    // 查询页数
    int queryArticlePage();

    int deleteArticleById(@Param("id") String id);

    int updateArticleById(Article article);

    Article selectArticleById(@Param("id")String id);

    int updateArticleState(@Param("id") String id,@Param("state") String state);


    // 分页查询 @parame
    List<Comment> queryCommentList(@Param("m")int m, @Param("n")int n);

    // 查询页数
    int queryCommentPage();

    int deleteCommentById(@Param("id") String id);

    int updateCommentState(@Param("id") String id,@Param("state") String state);







}
