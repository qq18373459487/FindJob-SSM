package services.Impl;

import mapper.ComUserMapper;
import modle.CommonUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import services.CommonUserService;
import java.util.Map;

@Service("CommonUserService")
public class CommonUserServiceImpl implements CommonUserService {
    @Autowired
    private ComUserMapper commonUserMapper;
    @Override
    public int InsertComUser(Map<String,Object> map)
    {
      return  commonUserMapper.insertBycom_user(map);
    }
    @Override
    public CommonUser SelectComUser(Map<String,Object> map)
    {
        return commonUserMapper.selectBycom_user(map);
    }
}
