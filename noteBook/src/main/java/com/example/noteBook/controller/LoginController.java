package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import com.example.NoteBook.entity.UserInfo;
import com.example.NoteBook.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService;

    // Login View
    @GetMapping(value = Url.AUTH.LOGIN)
    public String loginView() {
        return Url.AUTH.LOGIN_JSP;
    }

    // JOIN View
    @GetMapping(value = Url.AUTH.JOIN)
    public String joinView() {
        return Url.AUTH.JOIN_JSP;
    }

    // 사용자 등록
    @PostMapping(value = Url.AUTH.INSERT_USER)
    @ResponseBody
    public Map<String, Object> insertUser(@ModelAttribute UserInfo userInfo) {
        return loginService.checkLoginInsert(userInfo);
    }

    @GetMapping(value = Url.AUTH.LOGOUT)
    public String logout() {
        return Url.AUTH.LOGOUT_PROC;
    }
}
