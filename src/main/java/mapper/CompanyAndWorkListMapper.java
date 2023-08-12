package mapper;

import modle.CompanyAndWorkList;

import java.util.List;

public interface CompanyAndWorkListMapper
{
    List<CompanyAndWorkList > selectByCompany(String companyAndWorkList);
}
