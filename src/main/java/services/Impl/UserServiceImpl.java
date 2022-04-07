package services.Impl;

import mapper.UserMapper;
import modle.User;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import services.UserService;

import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
   public User queryUserByLoginNameAndPwd(Map<String,Object> map)
    {

        return userMapper.selectUserByLoginNameAndPWD(map);
    }
}
