package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class CommunityController {

//    @GetMapping("/communityView")
//    public String communityView(@RequestParam Map<String, Object> params) throws Exception {
//
//        return Url.BLOG.COMMUNITY_JSP;
//    }
    @GetMapping(value = Url.COMMUNITY.COMMUNITY)
    public String communityView() {
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
}
