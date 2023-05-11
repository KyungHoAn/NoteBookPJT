package com.example.NoteBook.dao;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface AuthMapper {

    int getAdminList(Map<String, Object> params);
    int getNickNameCheck(Map<String, Object> params);
}
