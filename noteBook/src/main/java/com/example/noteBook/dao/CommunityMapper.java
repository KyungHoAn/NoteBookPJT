package com.example.NoteBook.dao;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface CommunityMapper {
    void insertCommunity(Map<String, Object> params);
    String getCommunityTag(Map<String, Object> params);
}
