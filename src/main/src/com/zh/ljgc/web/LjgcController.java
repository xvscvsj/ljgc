package com.zh.ljgc.web;

import com.zh.ljgc.entity.Title;
import com.zh.ljgc.service.LjgcService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
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

    @RequestMapping("/index")
    public String index(Model model){
        List<Title> titleList=ljgcService.findAll();
//        for (Title each:titleList) {
//            System.out.println("反倒是"+each.getTitleName()+"ColumnName"+each.getPart().getColumnName());
//        }
        model.addAttribute("titleList",titleList);
        return "index";
    }
}
