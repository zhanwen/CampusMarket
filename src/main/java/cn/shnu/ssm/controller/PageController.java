package cn.shnu.ssm.controller;

import cn.shnu.ssm.pojo.Goods;
import cn.shnu.ssm.pojo.User;
import cn.shnu.ssm.service.GoodsService;
import cn.shnu.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author: Hanwen
 * @Date: 2018/6/7 上午9:07
 */
@Controller
@RequestMapping("/views")
public class PageController {

    @Autowired
    private GoodsService goodsService;
    @Autowired
    private UserService userService;

    @RequestMapping("/index")
    public ModelAndView index(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping("/beautymakeup")
    public ModelAndView beautymakeup(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("beautymakeup");
        return modelAndView;
    }

    @RequestMapping("/books")
    public ModelAndView books(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("books");
        return modelAndView;
    }

    @RequestMapping("/checkout")
    public ModelAndView checkout(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("checkout");
        return modelAndView;
    }

    @RequestMapping("/electronicproducts")
    public ModelAndView electronicproducts(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("electronicproducts");
        return modelAndView;
    }


    @RequestMapping("/insert")
    public ModelAndView insert(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("insert");
        return modelAndView;
    }

    @RequestMapping("/life")
    public ModelAndView life(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("life");
        return modelAndView;
    }

    @RequestMapping("/literature")
    public ModelAndView literature(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("literature");
        return modelAndView;
    }

    @RequestMapping("/login")
    public ModelAndView loginPage(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }
    @RequestMapping("/managecenter")
    public ModelAndView managecenter(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        String status = request.getParameter("status");
        if("".equals(status) || status == null) {
            status = "0";
        }
        List<Goods> list = goodsService.selectByStatus(Integer.valueOf(status));
        modelAndView.addObject("status", status);
        modelAndView.addObject("goodsList", list);
        modelAndView.setViewName("managecenter");
        return modelAndView;
    }
    @RequestMapping("/products")
    public ModelAndView products(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("products");
        return modelAndView;
    }
    @RequestMapping("/register")
    public ModelAndView register(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("register");
        return modelAndView;
    }


    @RequestMapping("/sports")
    public ModelAndView sports(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sports");
        return modelAndView;
    }

    @RequestMapping("/stationery")
    public ModelAndView stationery(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("stationery");
        return modelAndView;
    }

    @RequestMapping("/tests")
    public ModelAndView tests(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("tests");
        return modelAndView;
    }

    @RequestMapping("/single")
    public ModelAndView single(HttpServletRequest request)throws Exception{
        ModelAndView modelAndView = new ModelAndView();
        String goodsId = request.getParameter("goodsId");
        Goods goods = goodsService.selectById(Integer.valueOf(goodsId));
        User user = userService.findUser(goods.getStudentNo());

        modelAndView.addObject("user", user);
        modelAndView.addObject("goods", goods);
        modelAndView.setViewName("single");
        return modelAndView;
    }

}
