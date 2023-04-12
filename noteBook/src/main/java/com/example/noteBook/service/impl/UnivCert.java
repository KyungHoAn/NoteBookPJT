package com.example.NoteBook.service.impl;

import com.example.NoteBook.dao.UserMapper;
import com.example.NoteBook.service.UnivCertService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import okhttp3.*;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Service
@Slf4j
public class UnivCert implements UnivCertService {

    @Autowired
    UserMapper userMapper;

    //반환값 Map<String, Object>
    private static final String baseURL = "https://univcert.com/api";
    private static final OkHttpClient client = new OkHttpClient();
    private static final JSONParser parser = new JSONParser();
    protected UnivCert() {}

    @Value("${Univ-KEY}")
    private String API_KEY;

    /** 사용자 메일 인증 시작 (인증코드 발송) */
    @Override
    public Map<String, Object> mailCertify(String API_KEY, String email, String universityName, boolean univ_check) throws Exception {
        String url = baseURL + "/v1/certify";
        Request.Builder builder = new Request.Builder().url(url).get();

        JSONObject postObj = new JSONObject();
        postObj.put("key",API_KEY);
        postObj.put("email", email);
        postObj.put("univName", universityName);
        postObj.put("univ_check", univ_check);

        RequestBody requestBody = RequestBody.create(MediaType.parse("application/json; charset=utf-8"),postObj.toJSONString());
        builder.post(requestBody);
        Request request = builder.build();

        Response responseHTML = client.newCall(request).execute();
        return parseHTMLToJson(responseHTML);
    }

    /** 사용자 메일에 발송된 코드를 전달 받아 인증 빋기 */
    @Override
    public Map<String, Object> certifyCode(String API_KEY, String email, String universityName, int code) throws Exception {
        String url = baseURL + "/v1/certifycode";
        Request.Builder builder = new Request.Builder().url(url).get();

        JSONObject postObj = new JSONObject();
        postObj.put("key", API_KEY);
        postObj.put("email", email);
        postObj.put("univName", universityName);
        postObj.put("code", code);

        RequestBody requestBody = RequestBody.create(MediaType.parse("application/json; charset=utf-8"), postObj.toJSONString());
        builder.post(requestBody);
        Request request = builder.build();

        Response responseHTML = client.newCall(request).execute();

        return parseHTMLToJson(responseHTML);
    }

    /** 인증된 이메일인지 확인 */
    @Override
    public Map<String, Object> status(String API_KEY, String email) throws Exception {
        String url = baseURL + "/v1/status";
        Request.Builder builder = new Request.Builder().url(url).get();

        JSONObject postObj = new JSONObject();
        postObj.put("key", API_KEY);
        postObj.put("email", email);

        RequestBody requestBody = RequestBody.create(MediaType.parse("application/json; charset=utf-8"), postObj.toJSONString());
        builder.post(requestBody);
        Request request = builder.build();

        Response responseHTML = client.newCall(request).execute();

        return parseHTMLToJson(responseHTML);
    }

    /** 해당 API키로 인증된 유저 리스트 출력 */
    @Override
    public Map<String, Object> userList(String API_KEY) throws Exception {
        String url = baseURL + "/v1/certifiedlist";
        Request.Builder builder = new Request.Builder().url(url).get();

        JSONObject postObj = new JSONObject();
        postObj.put("key",API_KEY);

        RequestBody requestBody = RequestBody.create(MediaType.parse("application/json; charset=utf-8"), postObj.toJSONString());
        builder.post(requestBody);
        Request request = builder.build();

        Response responseHTML = client.newCall(request).execute();

        return parseHTMLToJson(responseHTML);
    }

    /** 인증 가능 대학인지 확인 */
    @Override
    public Map<String, Object> check(String universityName) throws Exception {
        String url = baseURL + "/v1/check";
        Request.Builder builder = new Request.Builder().url(url).get();

        JSONObject postObj = new JSONObject();
        postObj.put("univName", universityName);

        RequestBody requestBody = RequestBody.create(MediaType.parse("application/json; charset=utf-8"), postObj.toJSONString());
        builder.post(requestBody);
        Request request = builder.build();

        Response responseHtml = client.newCall(request).execute();

        return parseHTMLToJson(responseHtml);
    }

    @Override
    public Map<String, Object> parseHTMLToJson(Response responseHTML) {
        ResponseBody body = responseHTML.body();
        Map map = new HashMap();
        try{
            if(body != null) {
                JSONObject response = (JSONObject) parser.parse(body.string());
                response.put("code", responseHTML.code());
                System.out.println(response.toJSONString());
                map = new ObjectMapper().readValue(response.toJSONString(), Map.class);
                return map;
            }
        } catch (Exception e) {
            System.out.println("json 오류");
            return map; /**error 시 빈 맵 반환*/
        }
        return map;
    }
}
