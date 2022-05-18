package services;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

public interface ExcelService {

    /**
     * 导入excel
     * @param file  excel文件
     * @return  0表示失败，1表示成功
     * @throws Exception
     */
    String ajaxUploadExcel(MultipartFile file) throws Exception;

    /**
     * 导入excel
     * @return
     * @throws Exception
     */
    XSSFWorkbook exportExcelInfo() throws Exception;

}
