package mapper;

import modle.WorkList;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WorkMapper
{
    int InsertWork(WorkList list);
    // 分页查询 @parame
    List<WorkList> queryWorkList(@Param("m")int m, @Param("n")int n);

    // 查询页数
    int queryPage();

    //按照条件进行查询
    List<WorkList> queryConditional(WorkList workList);

    WorkList queryWorkListById(String id);

    int deleteByid(int id);

    int InsertWorkByUser(WorkList list);

    int updateWorkByUser(WorkList list);

    List<WorkList> queryWorkByPostMan(@Param("post_people") String post_people);

    int updateCvByFile_Url(@Param("file_Url") String file_Url);

    // 分页查询
    List<WorkList> queryWorkList_HR(@Param("m")int m, @Param("n")int n,@Param("post_people") String post_people);

    // 查询页数
    int queryPage_HR(@Param("post_people") String post_people);

    int deleteById_HR(@Param("id") String id,@Param("post_people") String post_people);


    List<WorkList> queryWorkListByWorkType(@Param("m")int m, @Param("n")int n,@Param("WorkType") String WorkType);

    // 查询页数
    int queryPageByWorkType(@Param("WorkType")String WorkType);

    int updateCvStateById(@Param("id") String id);


}
