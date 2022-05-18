package services.Impl;

import mapper.CompanyMapper;
import modle.Company;
import modle.WorkList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import services.CompanyService;

import javax.servlet.http.HttpSession;
import java.util.List;
@Service
public class CompanyServiceImpl implements CompanyService {
   int num=5;

   @Autowired
   CompanyMapper companyMapper;
    @Override
    public List<Company> queryWorkListPage(int page) {
        int n = this.num;
        int m = n * (page - 1);
        return companyMapper.queryCompanyList(m,n);
    }

    @Override
    public int queryPage() {

        int count = companyMapper.queryPage();
        int page;
        if (count%this.num==0) {
            page = count/this.num;
        } else {
            page = count/this.num + 1;
        }
        return page;
    }

    @Override
    public String GetAllCompany(Company company, Model model, HttpSession session, String page) {
        int max=queryPage();
        int   ReturnPage;
        try {
            ReturnPage=Integer.valueOf(page);
        }catch (Exception e)
        {
            ReturnPage=1;
        }

        //当传过来是空的时候,默认第一页
        if (page == null) {
            ReturnPage = 1;
        } else if (ReturnPage < 1){
            //不能小于第一页
            ReturnPage = 1;
        } else if (ReturnPage > max) {
            //不能大于最大页
            ReturnPage = max;
        }

        //绑定最大页数
        model.addAttribute("maxPage", max);
        //调用service层查询第几页的数据
        List<Company> list= queryWorkListPage(ReturnPage);

        //绑定查询的结果到列表
        model.addAttribute("list",list);
        //绑定当前的页码
        model.addAttribute("page", ReturnPage);
        return "/user/companyManage";
    }
}
