package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import com.example.NoteBook.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

@Controller
public class BookController {

    @Autowired
    BookService bookService;

    @GetMapping(value = Url.BOOK.ADDBOOK)
    public String addBookView(@RequestParam Map<String, Object> params) throws Exception {
        return Url.BOOK.ADDBOOK_JSP;
    }

    @GetMapping(value = Url.BOOK.GETBOOK)
    public String getBookView(@RequestParam Map<String, Object> params) throws Exception {
        return Url.BOOK.GETBOOK_JSP;
    }

    @ResponseBody
    @PostMapping(value = Url.BOOK.ISBNBOOK)
    public Map<String, Object> addBook(@RequestParam Map<String, Object> params, Model model) throws Exception {
        Map<String, Object> result = new HashMap<>();
        try {
            String isbn = (String) params.get("isbn");
            String url = URLEncoder.encode(isbn, "UTF-8");
            String response = bookService.searchBook(url);

            String[] fields = {"title","link","publisher","description","image","author","price","isbn","pubdate"};
            model.addAttribute("bootDetail",bookService.getResult(response, fields));
            result = bookService.getResult(response, fields);
            result.put("success", true);
            result.put("code","00");
        }catch(Exception e) {
            result.put("success", false);
            result.put("code","99");
        }
        return result;
    }
}
