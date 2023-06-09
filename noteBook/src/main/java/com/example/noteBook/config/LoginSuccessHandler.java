package com.example.NoteBook.config;

import com.example.NoteBook.common.CoTopComponent;
import com.example.NoteBook.entity.UserInfo;
import com.google.gson.JsonObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
/* 로그인 성공시 타는 handler */
@Component
public class LoginSuccessHandler extends CoTopComponent implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication auth) throws IOException, ServletException {

        //default 성공
        String resultCode = "00";

        UserInfo been = (UserInfo) auth.getPrincipal();

        HttpSession session = request.getSession(true);
        session.setMaxInactiveInterval(60 * 60 * 3);

        session.setAttribute("sessUserInfo",((UserInfo) auth.getPrincipal()));
        session.setAttribute("authority",((UserInfo) auth.getPrincipal()).getAuthority());
        session.setAttribute("authorityNm",((UserInfo) auth.getPrincipal()).getAuthorityNm());
        session.setAttribute("auth",((UserInfo) auth.getPrincipal()).getAuth());

        // session 추가
        session.setAttribute("userName", been.getUsername());
        session.setAttribute("userId", been.getUserId());
        session.setAttribute("univ", been.getUniv());

        //Response 결과 값을 넣어줌
        JsonObject loginResult = new JsonObject();
        loginResult.addProperty("resultCode", resultCode);
        loginResult.addProperty("targetUrl", request.getContextPath()+"/home");

        //응답 전송
        writeResponse(response, loginResult);
    }

}