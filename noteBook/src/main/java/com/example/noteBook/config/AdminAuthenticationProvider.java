package com.example.NoteBook.config;

import com.example.NoteBook.dao.UserMapper;
import com.example.NoteBook.entity.UserAuthority;
import com.example.NoteBook.entity.UserInfo;
import com.example.NoteBook.exception.UserAuthException;
import com.example.NoteBook.exception.UserIdException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/** 로그인 provider*/
@Component
public class AdminAuthenticationProvider implements AuthenticationProvider {
    @Autowired
    UserMapper userMapper;

    @Autowired
    PasswordEncoder passwordEncoder;

    @SuppressWarnings("unchecked")
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        UsernamePasswordAuthenticationToken authToken = (UsernamePasswordAuthenticationToken) authentication;

        //아이디
        String id = (authToken.getName()).toUpperCase();

        //비밀번호
        String pwd = (String) authToken.getCredentials();

        //해당 사용자 정보 조회
        UserInfo userInfo = userMapper.getUserInfo(id);
        System.out.println("[========]");
        System.out.println(pwd);
        System.out.println("??????");
        System.out.println(userInfo.getPassword());
        System.out.println(passwordEncoder.matches(pwd, userInfo.getPassword()));
        //해당 사용자가 있을경우
        if(userInfo != null ) {
            //입력한 비밀번호가 현재 비밀번호와 같지 않으면
            if(!(passwordEncoder.matches(pwd, userInfo.getPassword()))) {
                throw new UserIdException("접속 할 수 없습니다. \n아이디 또는 비밀번호를 확인해주세요.");
            }

            //입력한 비밀번호가 현재 비밀번호와 같으면
//            else {
//                List<UserAuthority> authorities = new ArrayList<>();
//
//                //권한 조회
//                UserAuthority getUserAuthorities = userMapper.getUserAuthorities(authToken.getName());
//
//                //권한이 있을경우
//                if(getUserAuthorities != null) {
//                    UserAuthority auth = new UserAuthority();
//                    auth.setAuthority(getUserAuthorities.getAuthority());
//                    auth.setAuthorityNm(getUserAuthorities.getAuthorityNm());
//                    authorities.add(auth);
//                    userInfo.setAuthorities(authorities);
//                }
//
//                //권한이 없을 경우
//                else {
//                    throw new UserAuthException("접속권한이 없습니다. \n관리자에게 권한을 요청해주세요.");
//                }
//            }
        }
        //해당 사용자가 없을경우
        else {
            throw new UserIdException("접속 할 수 없습니다. \n아이디 또는 비밀번호를 확인해주세요.");
        }

        List<GrantedAuthority> authorities = (List<GrantedAuthority>) userInfo.getAuthorities();
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(userInfo, "1", authorities);

        return token;
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
    }
}
