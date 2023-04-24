package com.example.NoteBook.dao;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface CommunityMapper {
    void insertCommunity(Map<String, Object> params);
    String getCommunityTag(Map<String, Object> params);
    List<Map<String, Object>> getCommunityList(Map<String, Object> params);
    String getCommunityListCnt(int count);
    Map<String, Object> getCommunityDetail(Map<String, Object> params);
    void updateCommunity(Map<String, Object> params);
    void deleteCommunity(Map<String, Object> params);
}
