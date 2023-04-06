package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class BookController {
    @GetMapping("/addBook")
    public String addBook(@RequestParam Map<String, Object> params) throws Exception {
        return Url.BOOK.ADDBOOK_JSP;
    }

    @GetMapping("/getBook")
    public String getBook(@RequestParam Map<String, Object> params) throws Exception {
        return Url.BOOK.GETBOOK_JSP;
    }
}
