package mapper;

import modle.User;

import java.util.Map;

public interface UserMapper {

    //这里实现的是登录功能
    User selectUserByLoginNameAndPWD(Map<String,Object> map);
}
