package mapper;

import modle.Company;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface CompanyMapper {
    // 分页查询 @parame
    List<Company> queryCompanyList(@Param("m")int m, @Param("n")int n);

    // 查询页数
    int queryPage();

    String selectCompanyById(int id);

    int insertCompany(Company company);

    int updateCompanyState(@Param("id")int id,@Param("state")String state);

    int deleteCompany(int id);

    int insertCompanyByUser(Company company);

    int updateCompanyByUser(Company company);

    Company GetCompanyById(int id);

    Company GetCompanyByEmail(@Param("email") String  email);

}
