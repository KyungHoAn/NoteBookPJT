package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import com.example.NoteBook.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RestController
public class BookRestController {

    @Autowired
    BookService bookService;

    @RequestMapping(value = Url.BOOK.TESTCHAT)
    public Map<String, Object> testChat(@RequestParam Map<String, Object> params, Model model, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("userId");
        String name = (String) session.getAttribute("userName");
        params.put("userId", id);
        params.put("userName", name);
        return bookService.insertBookChat(params);
    }
}
