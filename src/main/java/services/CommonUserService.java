package services;

import modle.CommonUser;


import java.util.Map;

public interface CommonUserService {
    int InsertComUser(Map<String,Object> map);
    CommonUser SelectComUser(Map<String,Object> map);

}
