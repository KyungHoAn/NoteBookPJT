package com.example.NoteBook.service.impl;

import com.example.NoteBook.dao.CommunityMapper;
import com.example.NoteBook.service.CommunityService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
@Slf4j
public class CommunityServiceImpl implements CommunityService {

    @Autowired
    CommunityMapper communityMapper;

    @Override
    public void insertCommunity(Map<String, Object> params) {
        if(params.get("btnCheck1") == null) {
            params.put("btnCheck1", "off");
        }
        if(params.get("btnCheck2") == null) {
            params.put("btnCheck2", "off");
        }
        if(params.get("btnCheck3") == null) {
            params.put("btnCheck3", "off");
        }
        if(params.get("btnCheck4") == null) {
            params.put("btnCheck4", "off");
        }
        if(params.get("btnCheck5") == null) {
            params.put("btnCheck5", "off");
        }
        if(params.get("btnCheck6") == null) {
            params.put("btnCheck6", "off");
        }

        communityMapper.insertCommunity(params);
    }

    @Override
    public void updateCommunity(Map<String, Object> params) {
        if(params.get("btnCheck1") == null) {
            params.put("btnCheck1", null);
        } else {
            params.put("btnCheck1", 1);
        }
        if(params.get("btnCheck2") == null) {
            params.put("btnCheck2", null);
        } else {
            params.put("btnCheck2", 2);
        }
        if(params.get("btnCheck3") == null) {
            params.put("btnCheck3", null);
        } else {
            params.put("btnCheck3", 3);
        }
        if(params.get("btnCheck4") == null) {
            params.put("btnCheck4", null);
        } else {
            params.put("btnCheck4", 4);
        }
        if(params.get("btnCheck5") == null) {
            params.put("btnCheck5", null);
        } else {
            params.put("btnCheck5", 5);
        }
        if(params.get("btnCheck6") == null) {
            params.put("btnCheck6", null);
        } else {
            params.put("btnCheck6", 6);
        }
        communityMapper.updateCommunity(params);
    }

    @Override
    public void deleteCommunty(Map<String, Object> params) {

    }

    @Override
    public Map<String, Object> getCommunity(Map<String, Object> params) {
        return communityMapper.getCommunityDetail(params);
    }

    @Override
    public Map<String, Object> communityList(Map<String, Object> params) {
        return null;
    }

    @Override
    public Map<String, Object> insertCommunityChat(Map<String, Object> params) {
        communityMapper.insertCommunityChat(params);

        Map<String, Object> result = communityMapper.getCommunityChat(params);
        return result;
    }

    @Override
    public void deleteCommunityChat(Map<String, Object> params) {
        communityMapper.deleteChat(params);
    }
}
