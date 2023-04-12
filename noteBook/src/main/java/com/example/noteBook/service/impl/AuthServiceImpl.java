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

    @Autowired
    PasswordEncoder passwordEncoder;

    public Map<String, Object> userNickCheck(Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();

        return result;
    }

    public Map<String, Object> userInsert(Map<String, Object> params) throws Exception{
        Map<String, Object> result = new HashMap<>();
//        System.out.println(authMapper.getAdminList(params));
        return result;
    }

    public Map<String, Object> checkLoginInsert(UserInfo userInfo) {
        Map<String, Object> result = new HashMap<>();
        System.out.println("----- checkLoginInsert -----");
        System.out.println(userInfo);
        //0이면 중복되는 아이디 없음
        int duplicateCheck = userMapper.duplicateUserCheck(userInfo.getUserId());

        //신규등록
        if(duplicateCheck == 0) {
            //패스워드 암호화
            String password = passwordEncoder.encode(userInfo.getPassword());
            userInfo.setPassword(password);

            //사용자 등록
            userMapper.insertUser(userInfo);
            result.put("resultCode","00");
            result.put("resultMsg","정상적으로 회원이 등록되었습니다.");
        }
        return result;
    }
}
