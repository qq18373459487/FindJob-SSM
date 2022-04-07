package modle;

public class CompanyAndWorkList
{
    String CompanyName;
    String CompanyAddress;
    String CompanyEmail;
    String CompanyData;
    String WorkName;
    int WorkNumber;
    String PostCompany;
    String Experince;
    String Location;
    String Salary;
    String WorkTime;

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

    public String getWorkName() {
        return WorkName;
    }

    public void setWorkName(String workName) {
        WorkName = workName;
    }

    public int getWorkNumber() {
        return WorkNumber;
    }

    public void setWorkNumber(int workNumber) {
        WorkNumber = workNumber;
    }

    public String getPostCompany() {
        return PostCompany;
    }

    public void setPostCompany(String postCompany) {
        PostCompany = postCompany;
    }

    public String getExperince() {
        return Experince;
    }

    public void setExperince(String experince) {
        Experince = experince;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String location) {
        Location = location;
    }

    public String getSalary() {
        return Salary;
    }

    public void setSalary(String salary) {
        Salary = salary;
    }

    public String getWorkTime() {
        return WorkTime;
    }

    public void setWorkTime(String workTime) {
        WorkTime = workTime;
    }
    @Override
    public String toString() {
        return "CompanyAndWorkList{" +
                "CompanyName='" + CompanyName + '\'' +
                ", CompanyAddress='" + CompanyAddress + '\'' +
                ", CompanyEmail='" + CompanyEmail + '\'' +
                ", CompanyData='" + CompanyData + '\'' +
                ", WorkName='" + WorkName + '\'' +
                ", WorkNumber=" + WorkNumber +
                ", PostCompany='" + PostCompany + '\'' +
                ", Experince='" + Experince + '\'' +
                ", Location='" + Location + '\'' +
                ", Salary='" + Salary + '\'' +
                ", WorkTime='" + WorkTime + '\'' +
                '}';
    }

}
