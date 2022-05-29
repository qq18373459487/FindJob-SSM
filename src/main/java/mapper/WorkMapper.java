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

}
