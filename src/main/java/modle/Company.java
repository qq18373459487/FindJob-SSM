package modle;

public class Company {
    String CompanyName;
    String CompanyAddress;
    String CompanyEmail;
    String CompanyData;
    int id;
    String CompanyQualification;
    String state;
    String userEmail;
    String c_id;
    public String getC_id() {
        return c_id;
    }

    public void setC_id(String c_id) {
        this.c_id = c_id;
    }



    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }



    public String getCompanyQualification() {
        return CompanyQualification;
    }

    public void setCompanyQualification(String companyQualification) {
        CompanyQualification = companyQualification;
    }


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
                ", CompanyId='" + id + '\'' +
                '}';
    }



}
