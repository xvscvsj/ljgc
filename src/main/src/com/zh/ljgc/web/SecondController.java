package com.zh.ljgc.web;


import com.zh.ljgc.entity.*;
import com.zh.ljgc.service.LjgcService;
import com.zh.ljgc.service.SecondService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


/**
 * Created by Administrator on 2016/11/7 0007.
 */
@Controller
public class SecondController {
  @Autowired
  private SecondService secondService;
    @Autowired
    private LjgcService ljgcService;

    @RequestMapping("/food")
    public String queryfood(Model model){
         //取到dao中的美食数据
        List<ShopFoodEntity> foodEntityList =secondService.queryfood();
        List<Content> contentList=ljgcService.findAll();

        model.addAttribute("contentList",contentList);

        //将数据放到model中
        model.addAttribute("FoodData",foodEntityList);
        for (ShopFoodEntity each:foodEntityList) {
            System.out.println("名字："+each.getFoodname());
        }
     return "Lj-Bar";
//        return "cs";
    }
//    @RequestMapping("/periodical")
//    public String find(Model model){
//        //取到dao中的期刊数据
//        List<Periodical> periodicalList =secondService.find();
//        //将数据放到model中
//         model.addAttribute("Pdata",periodicalList);
//        return "Lj-Cultural-Periodicals";
//    }
//    @RequestMapping("/city")
//    public String findcity(Model model){
//        //取到dao中的数据
//        List<City> cityList =secondService.findcity();
//        model.addAttribute("City",cityList);
//        return "Lj-Impression";
//    }
//    @RequestMapping("/love")
//    public String findlove(Model model){
//        List<Love> loveList =secondService.findlove();
//        model.addAttribute("Love",loveList);
//        return "Lj-love";
//    }
//    @RequestMapping("/newlist")
//    public String findnew(Model model){
//        List<Newlist> newlists =secondService.findnew();
//        model.addAttribute("Newlist",newlists);
//        return "Lj-NewList";
//    }
//    @RequestMapping("/video")
//    public String findvideo(Model model){
//        List<Video> videoList =secondService.findvideo();
//        model.addAttribute("Video",videoList);
//        return "Lj-Video";
//    }
    @RequestMapping("/business")
    public String findhotel(Model model){
        List<Hotel> hotelList =secondService.findhotel();
        List<Business> busList =secondService.findbus();
        List<Content> contentList=ljgcService.findAll();

        model.addAttribute("contentList",contentList);
        model.addAttribute("Hotel",hotelList);
        model.addAttribute("Business",busList);
        return "Lj-stay";
    }
}
