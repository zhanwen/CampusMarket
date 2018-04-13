package cn.shnu.ssm.service.impl;

import cn.shnu.ssm.dao.UserDao;
import cn.shnu.ssm.pojo.User;
import cn.shnu.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: Hanwen
 * @Date: 2018/4/4 下午4:08
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public User findUser(String studentNo) throws Exception {
        User users = userDao.selectByStudentNo(studentNo);
        return users;
    }
}
