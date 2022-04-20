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
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    @Test
    public void test01() throws IOException {
        CompanyAndWorkListMapper companyAndWorkListMapper = session.getMapper(CompanyAndWorkListMapper.class);
        List<CompanyAndWorkList > list = companyAndWorkListMapper.selectByCompany("华为");
        System.out.println(list.toString());

//        List<CompanyAndWorkList> list = teacherMapper.getTeachers(1);
//        for (int i = 0; i < list.size(); i++) {
//            Teacher teacher = list.get(i);
//            for (int j = 0; j < teacher.getOrgnizationList().size(); j++) {
//                Orgnization orgnization = teacher.getOrgnizationList().get(j);
//                System.out.println(teacher.gettNickname() + " " + orgnization.getoName());
//            }
//        }
    }

    /*@Test
    public void test02() throws IOException {
        OrgnizationMapper orgnizationMapper = session.getMapper(OrgnizationMapper.class);
        List<Orgnization> list = orgnizationMapper.getOrgnizations(3);
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getoName());
        }
    }*/

    @After
    public void end() {
        if (session != null) {
            session.close();
        }
    }

}