package top.zk;


import mapper.CompanyAndWorkListMapper;
import modle.CompanyAndWorkList;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;


public class AppTest {

    private SqlSession session;

    @Before
    public void start() {
        try {
            InputStream inputStream = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
            session = factory.openSession();
            System.out.println("before");
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    @Test
    public void test01() throws IOException
    {
        CompanyAndWorkListMapper companyAndWorkListMapper = session.getMapper(CompanyAndWorkListMapper.class);
        List<CompanyAndWorkList > list = companyAndWorkListMapper.selectByCompany("华为");
        System.out.println(list.toString());
        System.out.println("now");
    }


    @After
    public void end() {
        if (session != null) {
            System.out.println("after");
            session.close();
        }
    }

}