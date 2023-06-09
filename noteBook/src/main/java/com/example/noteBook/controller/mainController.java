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
import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    @Autowired
    AuthService authService;

    @Autowired
    BookMapper bookMapper;

    @RequestMapping(value = Url.AUTH.HOME)
    public String main(Model model) throws Exception {
        Map<String, Object> result = new HashMap<>();
        result.put("offset",9);
        model.addAttribute("list", bookMapper.getBookList(result));
        model.addAttribute("bookCnt", bookMapper.getBookListCnt());
        return Url.AUTH.MAIN_JSP;
    }

    @ResponseBody
    @GetMapping(value = Url.LIST.BOOKPAGE)
    public Map<String, Object> bookPageChange(@RequestParam Map<String, Object> params) {
        Map<String, Object> result = new HashMap<>();
        int start = Integer.parseInt((String) params.get("start"));
        int offset = Integer.parseInt((String) params.get("offset"));
        params.put("start", start);
        params.put("offset", offset);
        List<Map<String, Object>> bookPageList = bookMapper.getBookList(params);
        result.put("bookList", bookPageList);
        return result;
    }

    @GetMapping("/loginView")
    public String loginView(@RequestParam Map<String, Object> param) throws Exception {
        Map<String, Object> result = new HashMap<>();
        authService.userInsert(result);

        return Url.AUTH.LOGIN_JSP;
    }

    @ResponseBody
    @PostMapping(value = Url.AUTH.USER_NICK)
    public Map<String, Object> userNick(@RequestParam Map<String, Object> params) throws Exception {
        Map<String, Object> result = authService.userNickCheck(params);
        return result;
    }

}
