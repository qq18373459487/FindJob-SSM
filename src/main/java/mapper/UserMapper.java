package mapper;

import modle.FileModle;
import modle.User;

import java.util.List;
import java.util.Map;

public interface UserMapper {

    //这里实现的是登录功能
    User selectUserByLoginNameAndPWD(Map<String,Object> map);
    List<FileModle> selectAllFile();
    int insertFile(FileModle fileModle);
    int insertUser(User user);
    List<User> GetAllUser();


}
