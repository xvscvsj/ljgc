package com.zh.ljgc.web;

import com.zh.ljgc.service.PageService;
import com.zh.ljgc.utils.page.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/11/15 0015.
 */
@Controller
public class PageController {
  @Autowired
    private PageService pageService;
    @RequestMapping("/usePage")
    public String usePage(Integer pageNo,Integer pageSize, Model model){
        if(pageNo==null){
            pageNo=1;
        }
        if(pageSize==null){
            pageSize=1;
        }
        Pagination pagination=pageService.pageList(pageNo,pageSize);
        model.addAttribute("page",pagination);
        return "Lj-NewList-Minute";
    }
}
