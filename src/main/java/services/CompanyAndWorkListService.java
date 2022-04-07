package services;

import modle.CompanyAndWorkList;
import modle.User;

import java.util.List;
import java.util.Map;

public interface CompanyAndWorkListService {
    List<CompanyAndWorkList > selectByCompany(String company);

}
