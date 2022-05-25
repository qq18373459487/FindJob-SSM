package controller;

import modle.FileModle;
import modle.User;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import services.ExcelService;
import services.UserService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private ExcelService excelService;

    @RequestMapping("/login")
    public String login()
            //转发进入登陆页面
    { return "/user/login";}

    @RequestMapping("/excel")
    public String excel()
    //转发进入登陆页面
    { return "/user/ExcleManage";}
    @RequestMapping("/index")
    public  @ResponseBody Object toLogin(@ModelAttribute User user, Model model, HttpSession session)
    {
     return userService.queryUserByLoginNameAndPwd(user, model, session);
    }
    @RequestMapping("/login-sucess")
    public String login_sucess()
    {
        return "user/index";
    }

    @RequestMapping("/user/company")
    public String companyManage()
    {
        return "/user/companyManage";
    }

    @RequestMapping("/error")
    public String error()
    {
        return "/404";
    }

    @RequestMapping("/file")
    public String file(Model model,HttpSession session)
    {
        return userService.GetAllFile(model,session);
    }
    //文件的上传功能
    @RequestMapping(value="/uploadFile" ,produces="text/html;charset=utf-8" )
    public @ResponseBody String importPicFile1(@RequestParam MultipartFile file1,Model model,HttpSession session) {

        Map<String, Object> map = new HashMap<String, Object>();
        if (file1.isEmpty()) {
            map.put("result", "error");
            map.put("msg", "上传文件不能为空");
        } else {
            String originalFilename = file1.getOriginalFilename();
            String fileBaseName = FilenameUtils.getBaseName(originalFilename);
            System.out.println(originalFilename);
            Date now = new Date();
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            String floderName = fileBaseName + "_" + df.format(now);
            try {
                //创建要上传的路径
                File fdir = new File("/Users/cengqunbo/IdeaProjects/File");
                if (!fdir.exists()) {
                    fdir.mkdirs();
                }
                //文件上传到路径下
                FileUtils.copyInputStreamToFile(file1.getInputStream(), new File(fdir, originalFilename));
                //coding
                map.put("result", "success");
                FileModle file=new FileModle();
                file.setFilename(originalFilename);
                file.setUrl(fdir.toString());
                file.setTime(df.format(now));
                userService.insertFile(file);
            } catch (Exception e) {
                map.put("result", "error");
                map.put("msg", e.getMessage());
                return map.toString();
            }
        }
        return map.toString();
    }

    //文件的下载
    @RequestMapping(value="/download",method= RequestMethod.GET)
    public void download(@RequestParam(value="filename")String filename,
                         HttpServletRequest request, HttpServletResponse response) throws IOException {
        //模拟文件，myfile.txt为需要下载的文件
        String path = "/Users/cengqunbo/IdeaProjects/File/"+filename;
        //获取输入流
        System.out.println("path"+path);
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //转码，免得文件名中文乱码
        filename = URLEncoder.encode(filename,"UTF-8");
        //设置文件下载头
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
        response.setContentType("multipart/form-data");
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
        int len = 0;
        while((len = bis.read()) != -1){
            out.write(len);
            out.flush();
        }
        out.close();
    }

    //数据的导入与导出

    @RequestMapping(value="ajaxUpload", produces = "application/text; charset=utf-8",method = RequestMethod.POST)
    @ResponseBody
    public String UploadExcel(@RequestParam(value = "upfile",required = false) MultipartFile file){
        String msg = null;
        try {
            msg = excelService.ajaxUploadExcel(file);
            return msg;
        } catch (Exception e) {
            System.err.println(e.getMessage());
//            logger.debug(e.getMessage());
        }
        return "0";
    }

    @RequestMapping(value = "downloadExcel",method = RequestMethod.POST)
    public void downloadExcel(HttpServletRequest request,HttpServletResponse response){
        //导出Excel对象
        XSSFWorkbook workbook = null;
        OutputStream output = null;
        BufferedOutputStream bufferedOutput = null;
        try {
            response.reset(); //清除buffer缓存
            //Map<String,Object> map=new HashMap<String,Object>();
            // 指定下载的文件名
//            response.setContentType("application/vnd.ms-excel;charset=UTF-8");
            response.setContentType("application/x-msdownload");
            response.setHeader("Content-Disposition","attachment;filename="+new String("用户表.xlsx".getBytes(),"iso-8859-1"));
            //将查到的数据用XSSFWorkbook保存并创建一个流
            workbook = excelService.exportExcelInfo();
            output = response.getOutputStream();
            bufferedOutput = new BufferedOutputStream(output);
            bufferedOutput.flush();
            //最后通过流写进去
            workbook.write(bufferedOutput);
            System.out.println(workbook);
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                bufferedOutput.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    }
