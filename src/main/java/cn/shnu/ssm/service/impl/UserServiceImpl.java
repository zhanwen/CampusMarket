package cn.shnu.ssm.service.impl;

import cn.shnu.ssm.dao.UserDao;
import cn.shnu.ssm.pojo.User;
import cn.shnu.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.jws.soap.SOAPBinding;
import javax.management.Query;
import java.util.Iterator;
import java.util.List;
/**
 * @Author: Hanwen
 * @Date: 2018/4/4 下午4:08
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public void addStudent(User student){
        userDao.addStudent(student);
    }


    public User findUser(String studentNo) throws Exception{
        User users = userDao.selectByStudentNo(studentNo);
        return users;
    }

    public void updateStudent(User student){
        userDao.updateStudent(student);
    }

    public void deleteStudent(Integer id){
        userDao.deleteStudent(id);
    }

    public void updatePwd(User user){
        userDao.updateStudent(user);
    }

    public List<User> findAllUser(){
        return userDao.findAllUser();
    }



    public boolean findManager(String username,String pwd){
        User user = new User();
        user.setStudentNo(username);
        user.setPassword(pwd);
        User user2 = userDao.findManager(user);
        return user2 != null ? true : false;
    }

    public void updateUser(User user){
        userDao.updateStudent(user);
    }

    public void updateUserInformation(User uuser){
        userDao.updateUserInformation(uuser);
    }


    public boolean login(User user){
        return userDao.login(user);
    }



}
















