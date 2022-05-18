package services.Impl;


import ResponseMessage.ExcelUtil;
import mapper.UserMapper;
import modle.ExcelBean;
import modle.User;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.support.ManagedMap;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import services.ExcelService;

import java.io.IOException;
import java.io.InputStream;
import java.util.*;


@Service
public class ExcelServiceImpl implements ExcelService {

    @Autowired
    UserMapper userMapper;
    public String ajaxUploadExcel(MultipartFile file) throws Exception {
        if(file.isEmpty()){
            try {
                throw new Exception("文件不存在！");
            } catch (Exception e) {
                System.out.println("出错了！！！");
            }
        }
        InputStream in =null;
        try {
            in = file.getInputStream();
        } catch (IOException e) {
            System.out.println("出错了！！！");
        }
        List<List<Object>> listob = null;
        try {
            //将文件中的数据转换成一个list集合
            listob = new ExcelUtil().getBankListByExcel(in,file.getOriginalFilename());
        } catch (Exception e) {
            System.out.println("出错了！！！");
        }
        //该处可调用service相应方法进行数据保存到数据库中，现只对数据输出
        for (int i = 0; i < listob.size(); i++) {
            User user = new User();
            /*
                设置值之前可以进行验证哪些字段是不能再添加的
             */
//            user.setId((Integer) listob.get(i).get(0));     // 表格的第一列   注意数据格式需要对应实体类属性
            user.setUsername(String.valueOf(listob.get(i).get(1)));   // 表格的第二列
            user.setPassword(java.lang.String.valueOf(listob.get(i).get(2)));   // 表格的第三列
            user.setRealname(String.valueOf(listob.get(i).get(3)));   // 表格的第四列
//            userExcel.setAge(String.valueOf(listob.get(i).get(4)));       // 表格的第五列
            //由于数据库中此字段是datetime，所以要将字符串时间格式：yyyy-MM-dd HH:mm，转为Date类型
//            if (!StringUtils.isEmpty(listob.get(i).get(5))) {
//                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
//                userExcel.setBirtday(sdf.parse(String.valueOf(listob.get(i).get(5)))); // 表格的第六列
//            }else {
//                userExcel.setBirtday(new Date());
//            }
//            logger.info("读取的对象是："+userExcel);
            //进行数据保存
           userMapper.insertUser(user);
        }
        System.out.println("文件导入成功");
        return "1";


    }
    public XSSFWorkbook exportExcelInfo() throws Exception {
        List<Map<String,Object>> list=new ArrayList<>();
        List<User> result=userMapper.GetAllUser();
        for (User user: result)
        {
            Map<String,Object> map=new HashMap<>();
            map.put("id",user.getId());
            map.put("username",user.getUsername());
            map.put("password",user.getPassword());
            map.put("realname",user.getRealname());
            list.add(map);
        }
        List<ExcelBean> excel = new ArrayList<ExcelBean>();
        Map<Integer,List<ExcelBean>> map = new LinkedHashMap<Integer, List<ExcelBean>>();
        /*
            设置标题栏（根据数据库的列名进行设置）
            如果发现某一列没有内容可以自行debug（ExcelUtil.createTableRows)这个方法循环添加值那里的if是否进去然后设置为空了
            多半是map的key没有写对
         */
        excel.add(new ExcelBean("主键","id",0));
        excel.add(new ExcelBean("用户名","username",0));
        excel.add(new ExcelBean("密码","password", 0));
        excel.add(new ExcelBean("身份状态","realname",0));
        map.put(0,excel);
        String sheetName = "用户信息表";
        //调用ExcelUtil方法
        XSSFWorkbook xssfWorkbook = ExcelUtil.createExcelFile(User.class, list, map, sheetName);
        return xssfWorkbook;

    }

}
