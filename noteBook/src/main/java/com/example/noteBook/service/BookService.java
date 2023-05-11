package com.example.NoteBook.service;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

public interface BookService {
    void addBook(Map<String, Object> params) throws Exception;
    Map<String, Object> userListBook(Map<String, Object> params) throws Exception;
    Map<String, Object> getBook(Map<String, Object> params) throws Exception;
    void deleteBook(Map<String, Object> params) throws Exception;
    Map<String, Object> getBookList(Map<String, Object> params) throws Exception;
    String searchBook(String url);
    String readBody(InputStream body);
    Map<String, Object> getResult(String response, String[] fields);
    void updateBookPrice(Map<String, Object> params) throws Exception;
    void updateBookContent(Map<String, Object> params) throws Exception;
    Map<String, Object> insertBookChat(Map<String, Object> params);
    List<Map<String, Object>> getBookChatList(Map<String, Object> params);
    void deleteChat(Map<String, Object> params) throws Exception;
    Map<String, Object> insertBasketBook(Map<String, Object> params) throws Exception;
    Map<String, Object> basketBookList(Map<String, Object> params) throws Exception;
    Map<String, Object> imgWrite(MultipartFile file, Map<String, Object> params) throws Exception;
}
