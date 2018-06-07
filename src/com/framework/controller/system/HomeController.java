package com.framework.controller.system;

import com.framework.controller.base.BaseController;
import com.framework.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * 首页
 *
 * @author y.s
 * @create 2017-10-20 15:16
 **/
@Controller
@RequestMapping(value = "homeController")
public class HomeController extends BaseController{

    @RequestMapping(value = "/toHomePage", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public ModelAndView toHomePage() throws Exception {
        ModelAndView mv=new ModelAndView("system/homePage");
        PageData pd = new PageData();
        pd = this.getPageData();
        mv.addObject("pd", pd);
        return mv;
    }

}
