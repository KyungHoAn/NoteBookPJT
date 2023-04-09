package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class BookController {
    @GetMapping("/addBookView")
    public String addBookView(@RequestParam Map<String, Object> params) throws Exception {
        return Url.BOOK.ADDBOOK_JSP;
    }

    @GetMapping("/getBookView")
    public String getBookView(@RequestParam Map<String, Object> params) throws Exception {
        return Url.BOOK.GETBOOK_JSP;
    }

    @ResponseBody
    @PostMapping(value = Url.BOOK.ADDBOOK)
    public Map<String, Object> addBook(@RequestParam Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();


        return result;
    }
}
