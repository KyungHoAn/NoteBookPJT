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

    //책 정보 수정
    Map<String, Object> updateBook(Map<String, Object> params);

    //책 정보 삭제
    Map<String, Object> deleteBook(Map<String, Object> params);

    //책 가격 수정
    void updateBookPrice(Map<String, Object> params);

    //책 내용 수정
    void updateBookContent(Map<String, Object> params);
}