package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserInfoController {

    @GetMapping("/myPage")
    public String userInfoView(Model model) throws Exception {
        return Url.LIST.USERINFO_JSP;
    }
}
