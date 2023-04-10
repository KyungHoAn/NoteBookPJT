package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import com.example.NoteBook.service.impl.UnivCert;
import okhttp3.OkHttpClient;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    @ResponseBody
    @PostMapping(value = Url.AUTH.USER_EMAIL)
    public Map<String, Object> mailCertify(@RequestParam Map<String, Object> params, HttpServletRequest req, HttpSession session) throws Exception {
        Map<String, Object> result = new HashMap<>();
        String univ = (String) params.get("univName");
        String mail = (String) params.get("email");

        result = univCert.mailCertify(API_KEY,mail,univ,true);
        return result;
    }

    // 사용자 메일의 전달받은 메일 코드 확인
    @ResponseBody
    @PostMapping(value = Url.AUTH.USER_EMAIL_CODE)
    public Map<String, Object> checkMailCode(@RequestParam Map<String, Object> params, HttpServletRequest req, HttpSession session) throws Exception {
        Map<String, Object> result = new HashMap<>();
        String email = (String) params.get("email");
        String univ = (String) params.get("univ");
        int code = Integer.parseInt((String) params.get("code"));

        result = univCert.certifyCode(API_KEY, email, univ, code);
        return result;
    }

    // 인증 가능한 대학교 명인지 check
    @ResponseBody
    @PostMapping(value = Url.AUTH.USER_UNIV)
    public Map<String, Object> checkUniv(@RequestParam Map<String, Object> param, HttpServletRequest req, HttpSession session) throws Exception {
        Map<String, Object> result = new HashMap<>();
        String univ = (String) param.get("univName");

        result = univCert.check(univ);
        return result;
    }
}
