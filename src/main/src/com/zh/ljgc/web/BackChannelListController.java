package com.zh.ljgc.web;

import com.zh.ljgc.entity.Content;
import com.zh.ljgc.service.BackChannelListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Administrator on 2016/11/17 0017.
 */
@Controller
public class BackChannelListController {
    @Autowired
    private BackChannelListService backChannelListService;

    @RequestMapping("/back_channelList")
        public String findList(Model model){
        List<Content> contentList=backChannelListService.findList();
        model.addAttribute("contentList",contentList);
        return "back_channelList";
    }
    @RequestMapping("/del_channelList")
    public String delList(Integer id,Model model){
        backChannelListService.delList(id);
        List<Content> contentList=backChannelListService.findList();
        model.addAttribute("contentList",contentList);
        return "back_channelList";
    }
    @RequestMapping("/back_addChannelList")
       public String addChannelList(Content content){
        backChannelListService.addList(content);

        return "back_addChannelList";
    }
    }

