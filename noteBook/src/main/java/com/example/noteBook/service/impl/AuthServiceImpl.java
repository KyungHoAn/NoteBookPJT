package com.example.NoteBook.service.impl;

import com.example.NoteBook.dao.AuthMapper;
import com.example.NoteBook.service.AuthService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Service
@Slf4j
public class AuthServiceImpl implements AuthService {

    @Autowired
    AuthMapper authMapper;

    public Map<String, Object> userInsert(Map<String, Object> params) throws Exception{
        Map<String, Object> result = new HashMap<>();
        System.out.println("<<<<<authServiceImpl>>>>>");
        System.out.println("======");
        System.out.println(authMapper.getAdminList(params));

        return result;
    }
}
