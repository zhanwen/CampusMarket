package cn.shnu.ssm.dao;

import cn.shnu.ssm.pojo.Goods;

import java.util.List;

/**
 * @Author: Hanwen
 * @Date: 2018/6/7 下午4:37
 */
public interface GoodsDao {

    List<Goods> selectAll();
    List<Goods> selectByStatus(int status);
    List<Goods> selectByStudentNo(String studentNo);
    Goods selectById(int id);

    void insertGoods(Goods goods);
    void deleteGoods(int id);
    void updateGoods(Goods goods);

    List<Goods> selectByStatusAndStudentNo(Goods goods);

    void updateGoodsStatus(Goods goods);

    List<Goods> selectByStatusAndGoodsStatus();
}
