package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    // Login View
    @GetMapping(value = Url.AUTH.LOGIN)
    public String login() {
        return Url.AUTH.LOGIN_JSP;
    }
}
