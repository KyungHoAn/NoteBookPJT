package com.example.NoteBook.dao;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BookMapper {

    //채 정보 저장
    void insertBook(Map<String, Object> params);
    //책 상세 정보
    Map<String, Object> getBook(Map<String, Object> params);
    //책 리스트
    List<Map<String, Object>> getBookList(Map<String, Object> params);
    // 사용자 책 리스트
    List<Map<String, Object>> getUserBookList(Map<String, Object> params);
    //책 정보 삭제
    void deleteBook(Map<String, Object> params);
    //책 댓글 전부 삭제
    void deleteAllChat(Map<String, Object> params);
    //책 가격 수정
    void updateBookPrice(Map<String, Object> params);
    //책 내용 수정
    void updateBookContent(Map<String, Object> params);
    //책 게시글 작성
    void insertBookChat(Map<String, Object> params);
    //책 게시글 리스트
    List<Map<String, Object>> getBookChatList(Map<String, Object> params);
    //마지막 게시글
    Map<String, Object> getBookChat(Map<String, Object> params);
    //책 게시슬 삭제
    void deleteChat(Map<String, Object> params);
    //책 찜정보 저장
    void insertBasketBook(Map<String, Object> params);
    //책 찜정보 가져오기
    Map<String, Object> getBasketBook(Map<String, Object> params);
    // 책 찜정보 update
    void updateBasketBook(Map<String, Object> params);
    List<Map<String, Object>> basketBookList(Map<String, Object> params);
    int getBookListCnt();
    void bookImgUpdate(Map<String, Object> params) throws Exception;
}
