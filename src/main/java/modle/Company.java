package modle;

public class Company {
    String CompanyName;
    String CompanyAddress;
    String CompanyEmail;
    String CompanyData;


    public String getCompanyName() {
        return CompanyName;
    }

    public void setCompanyName(String companyName) {
        CompanyName = companyName;
    }

    public String getCompanyAddress() {
        return CompanyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        CompanyAddress = companyAddress;
    }

    public String getCompanyEmail() {
        return CompanyEmail;
    }

    public void setCompanyEmail(String companyEmail) {
        CompanyEmail = companyEmail;
    }

    public String getCompanyData() {
        return CompanyData;
    }

    public void setCompanyData(String companyData) {
        CompanyData = companyData;
    }

    @Override
    public String toString() {
        return "Company{" +
                "CompanyName='" + CompanyName + '\'' +
                ", CompanyAddress='" + CompanyAddress + '\'' +
                ", CompanyEmail='" + CompanyEmail + '\'' +
                ", CompanyData='" + CompanyData + '\'' +
                '}';
    }


}
