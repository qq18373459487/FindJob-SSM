package mapper;


import modle.CommonUser;

import java.util.Map;

public interface ComUserMapper {

    CommonUser selectBycom_user(Map<String,Object> map);
    CommonUser updateBycom_user(Map<String,Object> map);
    CommonUser deleteBycom_user(Map<String,Object> map);
    int insertBycom_user(Map<String,Object> map);

}
