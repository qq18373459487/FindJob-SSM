package mapper;

import modle.Company;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface CompanyMapper {
    // 分页查询 @parame
    List<Company> queryCompanyList(@Param("m")int m, @Param("n")int n);

    // 查询页数
    int queryPage();
}