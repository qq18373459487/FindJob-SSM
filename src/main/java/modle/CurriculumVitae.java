package modle;

import javafx.application.Application;
import javafx.stage.Stage;

/**
 * @author 曾康
 * @version 1.0
 * @date 2023/4/17 11:35
 */
public class CurriculumVitae {
    String re_man;
    String post_man;
    String file_Url;
    String id;
    String state;
    String post_cv;

    public String getPost_cv() {
        return post_cv;
    }

    public void setPost_cv(String post_cv) {
        this.post_cv = post_cv;
    }

    public String getRe_man() {
        return re_man;
    }

    public void setRe_man(String re_man) {
        this.re_man = re_man;
    }

    public String getPost_man() {
        return post_man;
    }

    public void setPost_man(String post_man) {
        this.post_man = post_man;
    }

    public String getFile_Url() {
        return file_Url;
    }

    public void setFile_Url(String file_Url) {
        this.file_Url = file_Url;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "CurriculumVitae{" +
                "re_man='" + re_man + '\'' +
                ", post_man='" + post_man + '\'' +
                ", file_Url='" + file_Url + '\'' +
                ", id='" + id + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
