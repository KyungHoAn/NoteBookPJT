package com.example.NoteBook.service;

import java.io.InputStream;
import java.util.Map;

public interface BookService {
    void addBook(Map<String, Object> params) throws Exception;
    Map<String, Object> listBook(Map<String, Object> params) throws Exception;
    Map<String, Object> getBook(Map<String, Object> params) throws Exception;
    Map<String, Object> deleteBook(Map<String, Object> params) throws Exception;
    Map<String, Object> updateBook(Map<String, Object> params) throws Exception;
    String searchBook(String url);
    String readBody(InputStream body);
    Map<String, Object> getResult(String response, String[] fields);
    void updateBookPrice(Map<String, Object> params) throws Exception;
    void updateBookContent(Map<String, Object> params) throws Exception;
}
