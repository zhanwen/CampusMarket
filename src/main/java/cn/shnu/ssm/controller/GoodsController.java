package cn.shnu.ssm.controller;

import cn.shnu.ssm.pojo.Goods;
import cn.shnu.ssm.pojo.User;
import cn.shnu.ssm.service.GoodsService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

/**
 * @Author: Hanwen
 * @Date: 2018/6/7 下午4:48
 */
@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/insertGoods")
    public ModelAndView insertGoods(HttpServletRequest request, Goods goods)throws Exception{
        ModelAndView modelAndView = new ModelAndView();

        String goodsName = "";
        Double price = 0.0;
        String description = "";
        String cate = "";
        String fileName = "";
        String degree = "";
        String path = "";
        try {
            // 1. 文件上传工厂
            FileItemFactory factory = new DiskFileItemFactory();
            // 2. 创建文件上传核心工具类
            ServletFileUpload upload = new ServletFileUpload(factory);
            // 一、设置单个文件允许的最大的大小： 30M
            upload.setFileSizeMax(30*1024*1024);
            // 二、设置文件上传表单允许的总大小: 80M
            upload.setSizeMax(80*1024*1024);
            // 三、 设置上传表单文件名的编码
            // 相当于：request.setCharacterEncoding("UTF-8");
            upload.setHeaderEncoding("UTF-8");

            // 3. 判断： 当前表单是否为文件上传表单
            if (upload.isMultipartContent(request)){
                // 4. 把请求数据转换为一个个FileItem对象，再用集合封装
                List<FileItem> list = upload.parseRequest(request);
                // 遍历： 得到每一个上传的数据
                for (FileItem item: list){
                    // 判断：普通文本数据
                    if (item.isFormField()){
                        // 普通文本数据
                        String fieldName = item.getFieldName();    // 表单元素名称
                        if("goodsName".equals(fieldName)) {
                            goodsName = new String(item.getString().getBytes("iso-8859-1"),"utf-8");// 表单元素名称， 对应的数据
                        }
                        if("price".equals(fieldName)) {
                            price = Double.valueOf(item.getString());
                        }
                        if("description".equals(fieldName)) {
                            description = new String(item.getString().getBytes("iso-8859-1"), "utf-8");
                        }
                        if("cate".equals(fieldName)) {
                            cate = item.getString();
                        }
                        if("degree".equals(fieldName)) {
                            degree = new String(item.getString().getBytes("iso-8859-1"), "utf-8");
                        }
                    }
                    // 上传文件(文件流) ----> 上传到upload目录下
                    else {
                        // 普通文本数据
                        String fieldName = item.getFieldName();    // 表单元素名称
                        String name = item.getName();            // 文件名
                        String content = item.getString();        // 表单元素名称， 对应的数据
                        String type = item.getContentType();    // 文件类型
                        InputStream in = item.getInputStream(); // 上传文件流

                        /*
                         *  四、文件名重名
                         *  对于不同用户readme.txt文件，不希望覆盖！
                         *  后台处理： 给用户添加一个唯一标记!
                         */

                        // a. 随机生成一个唯一标记
                        String id = UUID.randomUUID().toString();
                        // b. 与文件后锥名拼接
                        String suffix = name.substring(name.lastIndexOf(".") + 1);
                        fileName = id+"."+suffix;
                        // 获取上传基路径
                        path = request.getSession().getServletContext().getRealPath( "/static/upload/file/");

                        // 创建目标文件
                        // 创建文件夹
                        File file2 = new File(path);
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                        File file = new File(path,fileName);
                        // 工具类，文件上传
                        item.write(file);
                        item.delete();   //删除系统产生的临时文件
                    }
                }
            }
            else {
                System.out.println("当前表单不是文件上传表单，处理失败！");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        User user = (User)request.getSession().getAttribute("user");

        goods.setStatus(0);
        goods.setGoodsStatus(0);
        goods.setPrice(price);
        goods.setCate(cate);
        goods.setDescription(description);
        goods.setGoodsName(goodsName);
        goods.setDegree(degree);
        goods.setImagepath(fileName);
        goods.setStudentNo(user.getStudentNo());
        goodsService.insertGoods(goods);

        modelAndView.setViewName("redirect:/views/managecenter");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("/changeGoodsStatus")
    public ModelAndView changeGoodsStatus(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        String status = request.getParameter("status");
        String goodsId = request.getParameter("goodsId");

        Goods goods = new Goods();
        goods.setId(Integer.valueOf(goodsId));
        goods.setGoodsStatus(Integer.valueOf(status));
        goodsService.updateGoods(goods);

        modelAndView.setViewName("/views/managecenter?status=1");
        return modelAndView;
    }


}
