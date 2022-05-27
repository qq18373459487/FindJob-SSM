package mapper;

import modle.CommonUser;
import modle.Company;
import modle.FileModle;
import modle.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
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





}
