package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import com.example.NoteBook.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserInfoController {

    @Autowired
    BookService bookService;

    @GetMapping(value = Url.LIST.MYPAGE)
    public String userInfoView(Model model, HttpServletRequest request) throws Exception {
        Map<String, Object> params = new HashMap<>();
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("userId");
        params.put("userId", id);
        model.addAttribute("list",bookService.userListBook(params));

        return Url.LIST.USERINFO_JSP;
    }
}
