package controller;

import modle.Company;
import modle.WorkList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import services.CompanyService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/company")
public class CompanyController {

   @Autowired
   private CompanyService companyService;

    //后台公司分页

    @RequestMapping("/GetAllCompany")

    public String GetAllCompany(@ModelAttribute Company company, Model model, HttpSession session, String page)
    //转发进入登陆页面
    {

        return companyService.GetAllCompany(company,model,session,page);}


    @RequestMapping("/check")
    public String checkCompany(String id, Model model, HttpSession session,String name)

    {
      return companyService.checkCompany(id, model, session, name);
    }

    @RequestMapping("/delete")
    public String deleteCompany(String id,Model model, HttpSession session)
    {
        return companyService.deleteCompany(id, model, session);
    }
    @RequestMapping("/insertCompanyByUser")
    public String insertCompanyByUser(@ModelAttribute Company company,Model model, HttpSession session)
    {
        return companyService.insetCompanyByUser(company, model, session);
    }
    @RequestMapping("/updateCompanyByUser")
    public String updateCompanyByUser(@ModelAttribute Company company,Model model, HttpSession session)
    {
        return companyService.updateCompanyByUser(company, model, session);
    }
    @RequestMapping("/GetCompanyByUser")
    public String GetCompanyByUser(@ModelAttribute Company company,Model model, HttpSession session,String id,String page)
    {
        return companyService.GetCompanyByUser(company, model, session,id,page);
    }

}
