package com.example.NoteBook.dao;

import com.example.NoteBook.entity.UserAuthority;
import com.example.NoteBook.entity.UserInfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

    // 사용자 정보 조회
    UserInfo getUserInfo(String userId);

    // 사용자 권한 조회
    UserAuthority getUserAuthorities(String userId);

    //사용자 등록
    public int insertUser(UserInfo userinfo);

    //사용자 권한 등록
    public int insertUserAuth(UserInfo userinfo);

    //사용자 중복 체크
    int duplicateUserCheck(String userId);

}
