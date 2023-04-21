package modle;

/**
 * @author 曾康
 * @version 1.0
 * @date 2023/4/20 14:49
 */
public class Comment {

             String id;
             String comment_name; //评论者的名字
             String article_id;   //评论所属ID
             String comment_text;  //评论的内容
             String comment_email;  //评论者的邮箱
             String state;       //评论状态

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getComment_name() {
        return comment_name;
    }

    public void setComment_name(String comment_name) {
        this.comment_name = comment_name;
    }

    public String getArticle_id() {
        return article_id;
    }

    public void setArticle_id(String article_id) {
        this.article_id = article_id;
    }

    public String getComment_text() {
        return comment_text;
    }

    public void setComment_text(String comment_text) {
        this.comment_text = comment_text;
    }

    public String getComment_email() {
        return comment_email;
    }

    public void setComment_email(String comment_email) {
        this.comment_email = comment_email;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id='" + id + '\'' +
                ", comment_name='" + comment_name + '\'' +
                ", article_id='" + article_id + '\'' +
                ", comment_text='" + comment_text + '\'' +
                ", comment_email='" + comment_email + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
