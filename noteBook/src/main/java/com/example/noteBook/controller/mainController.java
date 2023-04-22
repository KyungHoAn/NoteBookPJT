package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import com.example.NoteBook.dao.BookMapper;
import com.example.NoteBook.service.AuthService;
import com.example.NoteBook.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

@Controller
public class MainController {

    @Autowired
    AuthService authService;

    @Autowired
    BookMapper bookMapper;

    @RequestMapping("/")
    public String main(Model model) throws Exception {
        model.addAttribute("list", bookMapper.getBookList());
        return Url.AUTH.MAIN_JSP;
    }

    @GetMapping("/loginView")
    public String loginView(@RequestParam Map<String, Object> param) throws Exception {
        Map<String, Object> result = new HashMap<>();
        System.out.println("login");
        authService.userInsert(result);

        return Url.AUTH.LOGIN_JSP;
    }

    @ResponseBody
    @PostMapping(value = Url.AUTH.USER_NICK)
    public Map<String, Object> userNick(@RequestParam Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        System.out.println(params);
        result = authService.userNickCheck(params);
        return result;
    }

}
