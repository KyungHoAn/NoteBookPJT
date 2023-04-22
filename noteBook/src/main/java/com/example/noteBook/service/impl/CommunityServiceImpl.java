package com.example.NoteBook.service.impl;

import com.example.NoteBook.service.CommunityService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
@Slf4j
public class CommunityServiceImpl implements CommunityService {
    @Override
    public void insertCommunity(Map<String, Object> params) {
        System.out.println("===insertCommunity===");
        System.out.println(params);
    }

    @Override
    public void updateCommunity(Map<String, Object> params) {

    }

    @Override
    public void deleteCommunty(Map<String, Object> params) {

    }

    @Override
    public Map<String, Object> getCommunity(Map<String, Object> params) {
        return null;
    }

    @Override
    public Map<String, Object> communityList(Map<String, Object> params) {
        return null;
    }
}
