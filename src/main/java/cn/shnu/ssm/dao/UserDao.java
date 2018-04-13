package cn.shnu.ssm.dao;

import cn.shnu.ssm.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/**
 * @Author: Hanwen
 * @Date: 2018/4/5 下午3:08
 */
public interface UserDao {

    User selectByStudentNo(@Param("studentNo") String studentNo);
}