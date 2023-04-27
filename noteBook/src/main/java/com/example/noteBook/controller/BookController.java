package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import com.example.NoteBook.dao.BookMapper;
import com.example.NoteBook.service.BookService;
import org.apache.catalina.session.StandardSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

@Controller
public class BookController {

    @Autowired
    BookService bookService;

    @Autowired
    BookMapper bookMapper;

    @GetMapping(value = Url.BOOK.ADDBOOK)
    public String addBookView() throws Exception {
        return Url.BOOK.ADDBOOK_JSP;
    }

    @GetMapping(value = Url.BOOK.GETBOOK)
    public String getBookView(@RequestParam("bookIdx") String idx, Model model, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("userId");
        Map<String, Object> result = new HashMap<>();
        result.put("bookIdx", idx);
        result.put("userId", id);

        model.addAttribute("list", bookService.getBook(result));
        model.addAttribute("chatList", bookService.getBookChatList(result));
        if(bookMapper.getBasketBook(result) != null) {
            model.addAttribute("basket",bookMapper.getBasketBook(result));
        }
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

            String[] fields = {"title","link","publisher","description","image","author","discount","isbn","pubdate"};
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

    @ResponseBody
    @PostMapping(value = Url.BOOK.INSERTBBOK)
    public void insertBook(@RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String name = (String) session.getAttribute("userName");
        String id = (String) session.getAttribute("userId");
        params.put("userName", name);
        params.put("userId", id);
        bookService.addBook(params);
    }

    @ResponseBody
    @PostMapping(value = Url.BOOK.UPDATEPRICE)
    public void updateBookPrice(@RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("userId");
        params.put("userId",id);
        bookService.updateBookPrice(params);
    }

    @ResponseBody
    @PostMapping(value = Url.BOOK.UPDATECONTENT)
    public void updateBookContent(@RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("userId");
        params.put("userId", id);
        bookService.updateBookContent(params);
    }

    @ResponseBody
    @PostMapping(value = Url.BOOK.BOOKCHAT)
    public Map<String, Object> insertBookChat(@RequestParam Map<String, Object> params, HttpServletRequest request) throws Exception {
        Map<String, Object> result = new HashMap<>();
        HttpSession session = request.getSession();
        String id= (String) session.getAttribute("userId");
        String name = (String) session.getAttribute("userName");
        params.put("userId", id);
        params.put("userName", name);

        try{
            result = bookService.insertBookChat(params);
            result.put("success", true);
            result.put("code","00");
        }catch (Exception e) {
            result.put("success", false);
            result.put("code", "99");
        }
        return result;
    }

    @ResponseBody
    @PostMapping(value = Url.BOOK.DELCHAT)
    public Map<String, Object> deleteChat(@RequestParam Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        try{
            bookService.deleteChat(params);
            result.put("success", true);
            result.put("code","00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code", "99");
        }
        return result;
    }

    @ResponseBody
    @PostMapping(value = Url.BOOK.DELBOOK)
    public Map<String, Object> deleteBook(@RequestParam Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        try {
            bookService.deleteBook(params);
            result.put("success", true);
            result.put("code", "00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code","00");
        }
        return result;
    }

    @ResponseBody
    @PostMapping(value = Url.BOOK.INSERTBASKET)
    public Map<String, Object> insertBasket(@RequestParam Map<String, Object> params, HttpServletRequest request, Model model) throws Exception {
        Map<String, Object> result = new HashMap<>();
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("userId");
        params.put("userId", id);

        try {
            result = bookService.insertBasketBook(params);
            result.put("success", true);
            result.put("code", "00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code", "99");
        }
        return result;
    }

    @ResponseBody
    @GetMapping(value = Url.BOOK.SEARCHBOOKLIST)
    public Map<String, Object> searchBookList(@RequestParam Map<String, Object> params) {
        System.out.println("=====booklist controller ====");
        System.out.println(params);
        Map<String, Object> result = new HashMap<>();
        try {
            result = bookService.getBookList(params);
            result.put("success",true);
            result.put("code","00");
        } catch (Exception e) {
            result.put("success", false);
            result.put("code","99");
        }
        System.out.println("======");
        System.out.println(result);
        return result;
    }
}
