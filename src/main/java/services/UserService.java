package services;

import modle.User;
import org.springframework.stereotype.Service;

import java.util.Map;
@Service
public interface UserService {
    User queryUserByLoginNameAndPwd(Map<String,Object> map);
}
