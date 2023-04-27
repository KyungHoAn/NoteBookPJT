package com.example.NoteBook.service;

import java.util.Map;

public interface CommunityService {
    void insertCommunity(Map<String, Object> params);
    void updateCommunity(Map<String, Object> params);
    void deleteCommunty(Map<String, Object> params);
    Map<String, Object> getCommunity(Map<String, Object> params);
    Map<String, Object> communityList(Map<String, Object> params);
    Map<String, Object> insertCommunityChat(Map<String, Object> params);
    void deleteCommunityChat(Map<String, Object> params);
}
