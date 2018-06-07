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
    void updateStudent(User student);
    void updatePwd(User user);
    void deleteStudent(Integer integer);
    User findManager(User user);
    void updateUserInformation(User user);

    public List<User> findAllUser();      //获取所有用户信息
    public User findAllUser(int id);       //根据id获取用户信息
    public void addStudent(User student);   //添加并保存用户
    public boolean login(User student);     //进行登陆
}










