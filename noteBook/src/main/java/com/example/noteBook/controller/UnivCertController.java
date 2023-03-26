package com.example.NoteBook.controller;

import com.example.NoteBook.service.impl.UnivCert;
import okhttp3.OkHttpClient;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/** 메일 및 대학 인증 API */
@Controller
public class UnivCertController {

    @Autowired
    UnivCert univCert;

    @Value("${Univ-KEY}")
    private String API_KEY;

    // 사용자 메일 인증
    public Map<String, Object> mailCertify(@RequestParam Map<String, Object> params, HttpServletRequest req, HttpSession session) throws Exception {
        Map<String, Object> result = new HashMap<>();
//        result.put("email","akh981216@wku.ac.kr");
//        result.put("universityName","원광대학교");
//        result.put("univ_check",true);

        result = univCert.mailCertify(API_KEY,"thekakt1@wonkwang.ac.kr","원광대학교",true);
//        System.out.println(">>>>>>>>result<<<<<<<<");
//        System.out.println(result);
        return result;
    }

    // 사용자 메일의 전달받은 메일 코드 확인
    public Map<String, Object> checkMailCode(@RequestParam Map<String, Object> params, HttpServletRequest req, HttpSession session) throws Exception {
        Map<String, Object> result = new HashMap<>();

        return result;
    }

    // 인증 가능한 대학교 명인지 check
    public Map<String, Object> checkUniv(@RequestParam Map<String, Object> param, HttpServletRequest req, HttpSession session) throws Exception {
        Map<String, Object> result = new HashMap<>();
        System.out.println("---------");
        result = univCert.check("원광대학교");
        return result;
    }
}
