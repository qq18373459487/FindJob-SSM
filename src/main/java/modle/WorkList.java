package modle;

public class WorkList {



    int Id;
    String WorkName;
    int WorkNumber;
    String PostCompany;
    String Experince;
    String Location;
    String Salary;
    String WorkTime;
    String WorkType;
    String WorkDetail;
    String post_people;
    String WorkRequest;

    public String getWorkRequest() {
        return WorkRequest;
    }

    public void setWorkRequest(String workRequest) {
        WorkRequest = workRequest;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getWorkDetail() {
        return WorkDetail;
    }

    public void setWorkDetail(String workDetail) {
        WorkDetail = workDetail;
    }


    public String getWorkType() {
        return WorkType;
    }
    public void setWorkType(String workType) {
        WorkType = workType;
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

    public String getPost_people() {
        return post_people;
    }

    public void setPost_people(String post_people) {
        this.post_people = post_people;
    }

    @Override
    public String toString() {
        return "WorkList{" +
                "WorkName='" + WorkName + '\'' +
                ", WorkNumber=" + WorkNumber +
                ", PostCompany='" + PostCompany + '\'' +
                ", Experince='" + Experince + '\'' +
                ", Location='" + Location + '\'' +
                ", Salary='" + Salary + '\'' +
                ", WorkTime='" + WorkTime + '\'' +
                ", WorkType='" + WorkType + '\'' +
                ", WorkDetail='" + WorkDetail + '\'' +
                '}';
    }
}
