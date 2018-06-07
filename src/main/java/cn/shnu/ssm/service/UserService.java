package cn.shnu.ssm.service;

import cn.shnu.ssm.pojo.User;

import java.util.List;

/**
 * @Author: Hanwen
 * @Date: 2018/4/4 下午3:08
 */
public interface UserService {
    User findUser(String studentNo)throws Exception;
    void updateUser(User user);
    void updateUserInformation(User user);
    List<User> findAllUser();
    boolean findManager(String username,String pwd);
    void addStudent(User student);
    void updateStudent(User student);
    void updatePwd(User user);
    void deleteStudent(Integer integer);

}






