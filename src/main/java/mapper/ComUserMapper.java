package mapper;


import modle.CommonUser;
import modle.Company;
import modle.PersonMg;
import modle.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ComUserMapper {

    CommonUser selectBycom_user(Map<String,Object> map);

    int updateBycom_user(Map<String,Object> map);

    int deleteBycom_user(int id);

    int insertBycom_user(Map<String,Object> map);

    // 分页查询 @parame
    List<CommonUser> queryUserList(@Param("m")int m, @Param("n")int n);

    // 查询页数
    int queryPage();

    int insertUser(CommonUser user);

    int updateUser(CommonUser user);


}
