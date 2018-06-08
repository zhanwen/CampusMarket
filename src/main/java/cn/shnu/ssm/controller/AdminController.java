package cn.shnu.ssm.controller;

import cn.shnu.ssm.pojo.Goods;
import cn.shnu.ssm.pojo.User;
import cn.shnu.ssm.service.GoodsService;
import cn.shnu.ssm.service.UserService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author: Hanwen
 * @Date: 2018/6/8 上午9:00
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private UserService userService;
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/admin/login");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("manager")
    public String manager(HttpServletRequest request) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("result", "");
        String username = request.getParameter("studentNo");
        String password = request.getParameter("pwd");
        boolean succ = userService.findManager(username, password);
        if(succ){
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            request.getSession().setAttribute("admin", user);
            jsonObject.put("result", "admin");
            return jsonObject.toString();
        }else{
            jsonObject.put("result", "nameAndPwd");
        }
        return jsonObject.toString();
    }

    @RequestMapping("bWFuYWdlcjEyMw==")
    public ModelAndView hello(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        List<Goods> goodsList = goodsService.selectByStatus(0);
        modelAndView.addObject("goodsList", goodsList);
        modelAndView.setViewName("admin/manager");
        return modelAndView;
    }

    @RequestMapping("logout")
    public ModelAndView logout(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        // 设置session为空
        request.getSession().setAttribute("admin", null);
        // 页面跳转
        modelAndView.setViewName("/admin/login");
        return modelAndView;
    }

    @RequestMapping("status")
    public ModelAndView status(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        String status = request.getParameter("status");
        if("".equals(status) || status == null) {
            status = "0";

        }
        if("0".equals(status)) {
            request.getSession().setAttribute("active", "0");
        }else {
            request.getSession().setAttribute("active", "1");
        }
        List<Goods> goodsList = goodsService.selectByStatus(Integer.valueOf(status));
        modelAndView.addObject("goodsList", goodsList);
        modelAndView.setViewName("admin/manager");
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
        goods.setStatus(Integer.valueOf(status));
        goodsService.updateGoodsStatus(goods);

        modelAndView.setViewName("redirect:/admin/status");
        return modelAndView;
    }


}
