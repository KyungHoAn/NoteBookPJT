package com.example.NoteBook.service;

import okhttp3.Response;
import org.springframework.beans.factory.annotation.Value;

import java.util.Map;

public interface UnivCertService {

    Map<String, Object> mailCertify(String API_KEY, String email, String universityName, boolean univ_check) throws Exception;

    Map<String, Object> certifyCode(String API_KEY, String email, String universityName, int code) throws Exception;

    Map<String, Object> status(String API_KEY, String email) throws Exception;

    Map<String, Object> userList(String API_KEY) throws Exception;

    Map<String, Object> check(String universityName) throws Exception;

    Map<String, Object> parseHTMLToJson(Response responseHTML);
}
