package com.example.NoteBook.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;

@Getter
@Setter
public class UserAuthority implements GrantedAuthority {

    private static final long serialVersionUID = 1L;

    private String authority;
    private String authorityNm;

    @Override
    public String getAuthority() {
        return this.authority;
    }
}
