package com.example.NoteBook.service;

import com.example.NoteBook.entity.UserInfo;

import java.util.Map;

public interface LoginService {
    Map<String, Object> checkLoginInsert(UserInfo userInfo);

}
