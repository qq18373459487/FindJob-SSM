package mapper;


import modle.CommonUser;
import modle.Company;
import modle.PersonMg;
import java.util.Map;

public interface ComUserMapper {

    CommonUser selectBycom_user(Map<String,Object> map);

    int updateBycom_user(Map<String,Object> map);

    int deleteBycom_user(Map<String,Object> map);

    int insertBycom_user(Map<String,Object> map);




}
