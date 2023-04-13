package com.example.NoteBook.service.impl;

import com.example.NoteBook.dao.UserMapper;
import com.example.NoteBook.entity.UserInfo;
import com.example.NoteBook.service.LoginService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
@Slf4j
public class LoginServiceImpl implements LoginService {
    @Autowired
    UserMapper userMapper;

    @Autowired
    PasswordEncoder passwordEncoder;

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
        else {
            result.put("resultCode", "99");
            result.put("resultMsg", "중복된 아이디가 있습니다. 아이디를 다시 입력해수제요");
        }
        return result;
    }
}
