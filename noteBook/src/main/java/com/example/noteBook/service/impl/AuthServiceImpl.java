package com.example.NoteBook.service.impl;

import com.example.NoteBook.dao.AuthMapper;
import com.example.NoteBook.dao.UserMapper;
import com.example.NoteBook.entity.UserInfo;
import com.example.NoteBook.service.AuthService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Service
@Slf4j
public class AuthServiceImpl implements AuthService {

    @Autowired
    AuthMapper authMapper;

    @Autowired
    UserMapper userMapper;


    public Map<String, Object> userNickCheck(Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        int nickCnt = authMapper.getNickNameCheck(params);
        if(nickCnt>0) {
            result.put("success",false);
        } else {
            result.put("success",true);
        }
        return result;
    }

    public Map<String, Object> userInsert(Map<String, Object> params) throws Exception{
        Map<String, Object> result = new HashMap<>();
//        System.out.println(authMapper.getAdminList(params));
        return result;
    }
}
