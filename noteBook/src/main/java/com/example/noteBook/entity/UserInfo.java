package com.example.NoteBook.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

@Getter
@Setter
public class UserInfo implements UserDetails {
    private static final long serialVersionUID = 1L;

    // USER ID
    private String userId;

    // USER NICK
    private String userName;

    // PW
    private String password;

    // USER Univ
    private String univ;

    // 사용여부
    private String useYn;

    // 권한 list
    public List<UserAuthority> authorities;

    // 권한
    public String authorityNm;

    public String auth;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getUsername() {
        return userName;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
