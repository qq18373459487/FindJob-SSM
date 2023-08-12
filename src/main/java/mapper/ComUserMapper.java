package mapper;


import modle.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ComUserMapper {

    CommonUser selectByCom_user(Map<String,Object> map);

    int updateBycom_user(Map<String,Object> map);

    int deleteBycom_user(int id);

    int insertBycom_user(Map<String,Object> map);

    // 分页查询
    List<CommonUser> queryUserList(@Param("m")int m, @Param("n")int n);

    // 查询页数
    int queryPage();

    int insertUser(CommonUser user);

    int updateUser(CommonUser user);

    //查询email是否存在
    CommonUser selectByEmail(@Param("email") String email);

    int update_password(@Param("com_pwd") String com_pwd,@Param("email") String email);

    // 分页查询
    List<Article> queryArticleList(@Param("m")int m, @Param("n")int n);

    // 查询页数
    int queryArticlePage();

    int insertComment(Comment comment);

    List<Comment> getCommentByArticle_id(@Param("article_id") String article_id);

}
