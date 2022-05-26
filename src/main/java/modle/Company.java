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

    public int getCompanyId() {return id;}

    public void setCompanyId(int companyId) {id = companyId;}

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

    public String getId(){return String.valueOf(id);}

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
