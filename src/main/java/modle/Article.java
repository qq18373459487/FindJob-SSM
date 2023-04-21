package modle;

/**
 * @author 曾康
 * @version 1.0
 * @date 2023/4/20 14:46
 */
public class Article {

    String id;
    String author; //作者
    String post_time; //发布时间
    String brief_introduction; //文章简介
    String author_text; //文章内容
    String state; //文章状态
    String title;  //文章标题

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPost_time() {
        return post_time;
    }

    public void setPost_time(String post_time) {
        this.post_time = post_time;
    }

    public String getBrief_introduction() {
        return brief_introduction;
    }

    public void setBrief_introduction(String brief_introduction) {
        this.brief_introduction = brief_introduction;
    }

    public String getAuthor_text() {
        return author_text;
    }

    public void setAuthor_text(String author_text) {
        this.author_text = author_text;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "article{" +
                "id='" + id + '\'' +
                ", author='" + author + '\'' +
                ", post_time='" + post_time + '\'' +
                ", brief_introduction='" + brief_introduction + '\'' +
                ", author_text='" + author_text + '\'' +
                ", state='" + state + '\'' +
                ", title='" + title + '\'' +
                '}';
    }
}
