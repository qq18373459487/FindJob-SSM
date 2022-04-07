package services.Impl;

import mapper.CompanyAndWorkListMapper;
import modle.CompanyAndWorkList;
import org.springframework.beans.factory.annotation.Autowired;
import services.CompanyAndWorkListService;

import java.util.List;

public class CompanyAndWorkListServiceImpl implements CompanyAndWorkListService {

@Autowired
CompanyAndWorkListMapper companyAndWorkList;

    @Override
    public List<CompanyAndWorkList > selectByCompany(String company) {

        return companyAndWorkList.selectByCompany(company);
    }
}
