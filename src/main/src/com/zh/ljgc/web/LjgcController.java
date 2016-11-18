package com.zh.ljgc.web;

import com.zh.ljgc.entity.Content;
import com.zh.ljgc.service.LjgcService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by DELL on 2016/11/7.
 */
@Controller
public class LjgcController {
 @Autowired
    private LjgcService ljgcService;
    //首页
    @RequestMapping("/index")
    public String index(Model model){
        List<Content> contentList=ljgcService.findAll();
//        for (Content each:contentList) {
//            System.out.println("这是"+each.getDetails()+"：Name"+each.getChannel().getName());
//        }
        model.addAttribute("contentList",contentList);
        return "index";
    }//三级新闻列表
    @RequestMapping("/Lj-NewList-Minute")
    public String ThreeNewList(Model model){
        List<Content> contents=ljgcService.query();
//        for(Content each:contents){
//            System.out.println("名字"+each.getChannel().getName()+":标题"+each.getTitle());
//        }
        model.addAttribute("contentList",contents);
        return "Lj-NewList-Minute";
    }//新闻列表
    @RequestMapping("/newlist")
    public String findnew(Model model){
        List<Content> newlists =ljgcService.findnew();
        model.addAttribute("contentList",newlists);
        model.addAttribute("Newlist",newlists);
        return "Lj-NewList";
    }
    @RequestMapping("/periodical")
    public String find(Model model){
        //取到dao中的期刊数据
        List<Content> periodicalList =ljgcService.find();
        //将数据放到model中
        model.addAttribute("contentList",periodicalList);
        model.addAttribute("Pdata",periodicalList);
        return "Lj-Cultural-Periodicals";
    }
    @RequestMapping("/city")
    public String findcity(Model model){
        //取到dao中的数据
        List<Content> cityList =ljgcService.findcity();
        model.addAttribute("contentList",cityList);
        model.addAttribute("City",cityList);
        return "Lj-Impression";
    }//恋在丽江
    @RequestMapping("/love")
    public String findlove(Model model){
        List<Content> loveList =ljgcService.findlove();
        model.addAttribute("contentList",loveList);
        model.addAttribute("Love",loveList);
        return "Lj-love";
    }
    //视频
    @RequestMapping("/video")
    public String findvideo(Model model){
        List<Content> videoList =ljgcService.findvideo();
        model.addAttribute("contentList",videoList);
        model.addAttribute("Video",videoList);
        return "Lj-Video";
    }
}
