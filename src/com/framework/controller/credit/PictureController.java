package com.framework.controller.credit;

import com.framework.controller.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.*;

/**
 * 图片
 *
 * @author y.s
 * @create 2017-10-23 10:07
 **/
@Controller
@RequestMapping(value = "/pictureController")
public class PictureController extends BaseController{

    @RequestMapping(value = "/toPicIndex")
    public ModelAndView toPicIndex () throws Exception{
        ModelAndView mv = new ModelAndView("/picture/picIndex");


        return mv;
    }

    public static void main(String[] args) throws Exception{
        String name = "E:/123.txt";
        File file = new File(name);
        file.createNewFile();
        FileOutputStream o = new FileOutputStream(name);
        o.write("123\r\n123".getBytes("utf-8"));
        o.close();
        FileReader r = new FileReader(name);
        BufferedReader b = new BufferedReader(r);
        String txt = b.readLine();
        System.out.println(txt);
}
}