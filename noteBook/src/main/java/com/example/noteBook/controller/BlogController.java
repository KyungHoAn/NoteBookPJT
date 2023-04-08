package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class BlogController {

    @GetMapping("/communityView")
    public String communityView(@RequestParam Map<String, Object> params) throws Exception {

        return Url.BLOG.COMMUNITY_JSP;
    }

    @GetMapping("/getCommunityView")
    public String getCommunityView(@RequestParam Map<String, Object> params) throws Exception {
        return Url.BLOG.GETCOMMUNITY_JSP;
    }

    @GetMapping("/addCommunityView")
    public String addCommunity(@RequestParam Map<String, Object> params) throws Exception {
        return Url.BLOG.ADDCOMMUNITY_JSP;
    }
}
