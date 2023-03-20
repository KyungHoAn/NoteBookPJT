package com.example.NoteBook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
    @RequestMapping("/")
    public String test() {
        System.out.println("test");
        return "index";
    }

    @RequestMapping("/login")
    public String login() {
        System.out.println("login");
        return "login";
    }
}
