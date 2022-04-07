package modle;

public class CommonUser {
    private int id;
    private String com_user;
    private String com_pwd;
    private String email;

    public  CommonUser(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCom_user() {
        return com_user;
    }

    public void setCom_user(String com_user) {
        this.com_user = com_user;
    }

    public String getCom_pwd() {
        return com_pwd;
    }

    public void setCom_pwd(String com_pwd) {
        this.com_pwd = com_pwd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
