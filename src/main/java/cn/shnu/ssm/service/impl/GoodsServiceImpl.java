package cn.shnu.ssm.service.impl;

import cn.shnu.ssm.dao.GoodsDao;
import cn.shnu.ssm.pojo.Goods;
import cn.shnu.ssm.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: Hanwen
 * @Date: 2018/6/7 下午4:36
 */
@Service
public class GoodsServiceImpl implements GoodsService{

    @Autowired
    private GoodsDao goodsDao;

    public List<Goods> selectAll() {
        return goodsDao.selectAll();
    }

    public List<Goods> selectByStatus(int status) {
        return goodsDao.selectByStatus(status);
    }

    public List<Goods> selectByStudentNo(String studentNo) {
        return goodsDao.selectByStudentNo(studentNo);
    }

    public Goods selectById(int id) {
        return goodsDao.selectById(id);
    }

    public void insertGoods(Goods goods) {
        goodsDao.insertGoods(goods);
    }

    public void deleteGoods(int id) {
        goodsDao.deleteGoods(id);
    }

    public void updateGoods(Goods goods) {
        goodsDao.updateGoods(goods);
    }

    public List<Goods> selectByStatusAndStudentNo(int status, String studentNo) {
        Goods goods = new Goods();
        goods.setStatus(status);
        goods.setStudentNo(studentNo);
        return goodsDao.selectByStatusAndStudentNo(goods);
    }

    public void updateGoodsStatus(Goods goods) {
        goodsDao.updateGoodsStatus(goods);
    }

    public List<Goods> selectByStatusAndGoodsStatus() {
        return goodsDao.selectByStatusAndGoodsStatus();
    }
}
