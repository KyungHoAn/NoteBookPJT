package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import com.example.NoteBook.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.net.URL;
import java.util.HashMap;
import java.util.Map;

@Controller
public class MainController {

    @Autowired
    AuthService authService;

    @RequestMapping("/")
    public String main() {
        return Url.AUTH.MAIN_JSP;
    }

    @GetMapping("/loginView")
    public String loginView(@RequestParam Map<String, Object> param) throws Exception {
        Map<String, Object> result = new HashMap<>();
        System.out.println("login");
        authService.userInsert(result);

        return Url.AUTH.LOGIN_JSP;
    }

    @GetMapping("/joinView")
    public String joinView(@RequestParam Map<String, Object> params) throws Exception {
        return Url.AUTH.JOIN_JSP;
    }

    @ResponseBody
    @PostMapping(value = Url.AUTH.USER_NICK)
    public Map<String, Object> userNick(@RequestParam Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        System.out.println(params);
        result = authService.userNickCheck(params);
        return result;
    }

    @ResponseBody
    @PostMapping(value = Url.AUTH.USER_JOIN)
    public Map<String, Object> userJoin(@RequestParam Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        System.out.println("userJoin");
        System.out.println(params);
        return result;
    }

}
