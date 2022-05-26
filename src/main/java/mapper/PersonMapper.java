package mapper;

import modle.PersonMg;
import org.apache.ibatis.annotations.Param;

public interface PersonMapper {

    PersonMg selectByPersonId(String email);

    int updatePerson(PersonMg personMg);

    int insertPerson_email(String email);

    int updatePerson_identityByEmail(@Param("email") String email,@Param("identity") String identity);
}
