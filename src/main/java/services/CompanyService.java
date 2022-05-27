package services;

import modle.Company;
import modle.WorkList;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public interface CompanyService {
    // 分页查询
    List<Company> queryWorkListPage(int page);
    // 查询页数
    int queryPage();

    String GetAllCompany(Company company, Model model, HttpSession session, String page);

    String cheakCompany(String id, Model model, HttpSession session, String name);

    String deleteCompany(String id,Model model,HttpSession session);

    String insetCompanyByUser(Company company, Model model, HttpSession session);

    String updateCompanyByUser(Company company, Model model, HttpSession session);

}
