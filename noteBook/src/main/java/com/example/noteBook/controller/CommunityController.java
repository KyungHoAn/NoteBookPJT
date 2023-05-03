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
        model.addAttribute("list",communityMapper.getCommunityList(result));
        model.addAttribute("tag", communityMapper.getTagCount());
        model.addAttribute("subList", communityMapper.getSubCommunity());
        return Url.COMMUNITY.COMMUNITY_JSP;
    }

    @GetMapping(value = Url.COMMUNITY.GETCOMMUNITY)
    public String getCommunityView(@RequestParam("communityIdx") String idx, Model model, HttpServletRequest request) throws Exception {
        Map<String, Object> result = new HashMap<>();
        result.put("commuIdx", idx);
        model.addAttribute("list",communityMapper.getCommunityDetail(result));
        model.addAttribute("chatList", communityMapper.getCommunityChatList(result));
        model.addAttribute("tag", communityMapper.getTagCount());
        model.addAttribute("subList", communityMapper.getSubCommunity());
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

    @ResponseBody
    @PostMapping(value = Url.COMMUNITY.INSERTCOMMUNITYCHAT)
    public Map<String, Object> insertCommunityChat(@RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
        Map<String, Object> result = new HashMap<>();
        HttpSession session  = request.getSession();
        String id = (String) session.getAttribute("userId");
        String name = (String) session.getAttribute("userName");
        params.put("userId", id);
        params.put("userName", name);

        try {
            result = communityService.insertCommunityChat(params);
            result.put("success", true);
            result.put("code", "00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code", "99");
        }
        return result;
    }

    @ResponseBody
    @PostMapping(value = Url.COMMUNITY.DELETECOMMUNITYCHAT)
    public Map<String, Object> communityChatdDel(@RequestParam Map<String, Object> params) {
        Map<String, Object> result = new HashMap<>();
        try{
            communityService.deleteCommunityChat(params);
            result.put("success", true);
            result.put("code", "00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code", "99");
        }
        return result;
    }

    @GetMapping(value = Url.COMMUNITY.UPDATECOMMUNITYVIEW)
    public String updateCommunityView(@RequestParam("commuIdx") String communityIdx, Model model) {
        Map<String, Object> result = new HashMap<>();
        result.put("commuIdx", communityIdx);
        model.addAttribute("list", communityMapper.getCommunityDetail(result));
        return Url.COMMUNITY.UPDATECOMMUNITY_JSP;
    }

    @ResponseBody
    @PostMapping(value = Url.COMMUNITY.UPDATECOMMUNITY)
    public Map<String, Object> updateCommunity(@RequestParam Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        try{
            communityService.updateCommunity(params);
            result.put("success", true);
            result.put("code", "00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code", "99");
        }
        return result;
    }

    @ResponseBody
    @PostMapping(value = Url.COMMUNITY.DELETECOMMUNITY)
    public Map<String, Object> deleteCommunity(@RequestParam Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        try{
            communityService.deleteCommunity(params);
            result.put("success", true);
            result.put("code", "00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code", "99");
        }
        return result;
    }

    @ResponseBody
    @GetMapping(value = Url.COMMUNITY.TAGCOMMUNITY)
    public Map<String, Object> getTagCommunity(@RequestParam Map<String, Object> params) throws Exception {
        System.out.println(params);
        Map<String, Object> result = new HashMap<>();
        try {
            result = communityService.getTagCommunity(params);
            result.put("success", true);
            result.put("code", "00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code", "99");
        }
        return result;
    }

}
