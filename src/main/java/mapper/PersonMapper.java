package mapper;

import modle.PersonMg;
import org.apache.ibatis.annotations.Param;

public interface PersonMapper {

    PersonMg selectByEmail(String email);

    int updatePerson(PersonMg personMg);

    int insertPerson_email(@Param("email") String email,@Param("username") String username);

    int updatePerson_identityByEmail(@Param("email") String email,@Param("identity") String identity);

    int updatePerson_companyByEmail(@Param("company") String company,@Param("email") String email);

}
