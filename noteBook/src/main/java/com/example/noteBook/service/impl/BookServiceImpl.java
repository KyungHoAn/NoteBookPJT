package com.example.NoteBook.service.impl;

import com.example.NoteBook.dao.BookMapper;
import com.example.NoteBook.service.BookService;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.*;

@Service
@Slf4j
public class BookServiceImpl implements BookService {

    @Value("${Client_ID}")
    private String CLIENT_ID;

    @Value("${Secret_KEY}")
    private String SECRET_KEY;

    @Autowired
    BookMapper bookMapper;

    final String baseUrl = "https://openapi.naver.com/v1/search/book.json?query=";

    @Override
    public void addBook(Map<String, Object> params) throws Exception {
        bookMapper.insertBook(params);
    }

    @Override
    public Map<String, Object> userListBook(Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        List<Map<String, Object>> bookList = bookMapper.getUserBookList(params);

        result.put("list", bookList);
        return result;
    }

    @Override
    public Map<String, Object> getBook(Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        result = bookMapper.getBook(params);

        return result;
    }

    @Override
    public void deleteBook(Map<String, Object> params) throws Exception {
        bookMapper.deleteBook(params);
        bookMapper.deleteAllChat(params);
    }

    @Override
    public Map<String, Object> getBookList(Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        result.put("list", bookMapper.getBookList(params));
        return result;
    }

    @Override
    public String searchBook(String isbn){
        HttpURLConnection con = null;
        String result = "";
        try {
            URL url = new URL(baseUrl + isbn);
            con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", CLIENT_ID);
            con.setRequestProperty("X-Naver-Client-Secret", SECRET_KEY);
            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK)
                result = readBody(con.getInputStream());
            else
                result = readBody(con.getErrorStream());
        } catch (Exception e) {
            System.out.println("연결 오류 : " + e);
        } finally {
            con.disconnect();
        }
        return result;
    }

    /** * 결과를 읽는다 * * @param body * @return */
    public String readBody(InputStream body) {
        InputStreamReader streamReader = new InputStreamReader(body);
        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();
            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }
            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }

    /* 결과를 파싱하는 메소드 @Param response @Param fiels @return*/
    public Map<String, Object> getResult(String response, String[] fields){
        Map<String, Object> rtnObj = new HashMap<> ();

        try {
            JSONParser parser = new JSONParser();
            JSONObject result = (JSONObject) parser.parse(response);

            rtnObj.put("total", (long)result.get("total"));

            JSONArray items = (JSONArray) result.get("items");

            List<Map<String,Object>> itemList = new ArrayList();

            for(int i=0; i<items.size(); i++) {
                JSONObject item = (JSONObject) items.get(i);

                Map<String,Object> itemMap = new HashMap<> ();

                for(String field:fields) {
                    itemMap.put(field, item.get(field));
                }
                itemList.add(itemMap);
            }
            rtnObj.put("result", itemList);
        }catch(Exception e) {
            System.out.println("getResult error -> "+"파싱 실패, "+e.getMessage());
        }
        return rtnObj;
    }

    @Override
    public void updateBookPrice(Map<String, Object> params) throws Exception {
        bookMapper.updateBookPrice(params);
    }

    @Override
    public void updateBookContent(Map<String, Object> params) throws Exception {
        bookMapper.updateBookContent(params);
    }

    @Override
    public Map<String, Object> insertBookChat(Map<String, Object> params) {
        bookMapper.insertBookChat(params);

//        List<Map<String, Object>> chatList = bookMapper.getBookChatList(params);
        Map<String, Object> lastChat = bookMapper.getBookChat(params);
        return lastChat;
    }

    @Override
    public List<Map<String, Object>> getBookChatList(Map<String, Object> params) {
        List<Map<String, Object>> chatList = bookMapper.getBookChatList(params);
        return chatList;
    }

    @Override
    public void deleteChat(Map<String, Object> params) throws Exception {
        bookMapper.deleteChat(params);
    }

    @Override
    public Map<String, Object> insertBasketBook(Map<String, Object> params) throws Exception {
        String flag = (String) params.get("flag");
        if(flag.equals("1")){
            bookMapper.insertBasketBook(params);
        } else if (flag.equals("2")){
            params.put("basketFlag", "0");
            bookMapper.updateBasketBook(params);
        } else if (flag.equals("3")){
            params.put("basketFlag", "0");
            bookMapper.updateBasketBook(params);
        } else {
            params.put("basketFlag", "1");
            bookMapper.updateBasketBook(params);
        }
        return bookMapper.getBasketBook(params);
    }

    @Override
    public Map<String, Object> basketBookList(Map<String, Object> params) throws Exception {
        List<Map<String, Object>> basketList = new ArrayList<>();
        Map<String, Object> result = new HashMap<>();
        List<Map<String, Object>> basketBook = bookMapper.basketBookList(params);

        for(int i=0; i<basketBook.size(); i++){
            String book_flag = (String) basketBook.get(i).get("BASKET_FLAG");
            if(book_flag.equals("1")) {
                String bookIdx = (String) basketBook.get(i).get("BOOK_IDX");
                params.put("bookIdx", bookIdx);
                basketList.add(bookMapper.getBook(params));
            }
        }
        result.put("list",basketList);

        return result;
    }

    @Override
    public Map<String, Object> imgWrite(MultipartFile file, Map<String, Object> params) throws Exception {
        Map<String, Object> result = new HashMap<>();
        System.out.println("====imgWirte ===");
        System.out.println(file);
        System.out.println(params);

        // wjwkd rudfh
        String projectPath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\img";

        /* 식별자 랜던으로 이름 생성 */
        UUID uuid = UUID.randomUUID();

        //저장될 파일이름 지정
        String fileName = uuid + "_" +file.getOriginalFilename();
        System.out.println("fileName ::: ");
        System.out.println(fileName);

        params.put("fileName", fileName);
        params.put("filePath", "/files/"+fileName);

        /*빈 껍데기 생성*/
        /*File을 생성할건데, 이름은 "name" 으로할거고, projectPath 라는 경로에 담긴다는 뜻*/
        File saveFile = new File(projectPath, fileName);
        file.transferTo(saveFile);

        bookMapper.bookImgUpdate(params);

        System.out.println("------");
        System.out.println("is it come here? ");
        return result;
    }


}
