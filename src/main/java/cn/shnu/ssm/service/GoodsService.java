package cn.shnu.ssm.service;

import cn.shnu.ssm.pojo.Goods;

import java.util.List;

/**
 * @Author: Hanwen
 * @Date: 2018/6/7 下午4:34
 */
public interface GoodsService {

    List<Goods> selectAll();
    List<Goods> selectByStatus(int status);
    List<Goods> selectByStudentNo(String studentNo);
    List<Goods> selectByStatusAndStudentNo(int status, String studentNo);
    Goods selectById(int id);

    void insertGoods(Goods goods);
    void deleteGoods(int id);
    void updateGoods(Goods goods);

    void updateGoodsStatus(Goods goods);
}
