package com.example.NoteBook.service;

import java.util.Map;

public interface AuthService {
    Map<String, Object> userInsert(Map<String, Object> params) throws Exception;
}
