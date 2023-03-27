package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/")
    public String test() {
        System.out.println("test");

        return Url.AUTH.LOGIN;
    }

    @RequestMapping("/login")
    public String login() {
        System.out.println("login");
        return Url.AUTH.JOIN;
    }
}
