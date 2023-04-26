package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import com.example.NoteBook.dao.CommunityMapper;
import com.example.NoteBook.service.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class CommunityController {

    @Autowired
    CommunityService communityService;

    @Autowired
    CommunityMapper communityMapper;

    @GetMapping(value = Url.COMMUNITY.COMMUNITY)
    public String communityView(Model model, HttpServletRequest request) {
        Map<String, Object> result = new HashMap<>();
        System.out.println("=====community View-------");
        System.out.println(communityMapper.getCommunityList(result));
        model.addAttribute("list",communityMapper.getCommunityList(result));
//        communityMapper.getCommunityList();
        return Url.COMMUNITY.COMMUNITY_JSP;
    }

    @GetMapping(value = Url.COMMUNITY.GETCOMMUNITY)
    public String getCommunityView(@RequestParam Map<String, Object> params) throws Exception {
        return Url.COMMUNITY.GETCOMMUNITY_JSP;
    }

    @GetMapping(value = Url.COMMUNITY.ADDCOMMUNITY)
    public String addCommunity(@RequestParam Map<String, Object> params) throws Exception {
        return Url.COMMUNITY.ADDCOMMUNITY_JSP;
    }

    @ResponseBody
    @PostMapping(value = Url.COMMUNITY.INSERTCOMMUNITY)
    public Map<String, Object> insertCommunity(@RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
        Map<String, Object> result = new HashMap<>();
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("userId");
        String name = (String) session.getAttribute("userName");
        params.put("userId", id);
        params.put("userName", name);
        try {
            communityService.insertCommunity(params);
            result.put("success", true);
            result.put("code", "00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code", "99");
        }
        return result;
    }
}
