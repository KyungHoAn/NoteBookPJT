package com.example.NoteBook.dao;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface BookMapper {

    //채 정보 저장
    void insertBook(Map<String, Object> params);

    //책 상세 정보
    Map<String, Object> getBook(Map<String, Object> params);

    //책 리스트
    Map<String, Object> getBookList(Map<String, Object> params);

    //책 정보 수정
    Map<String, Object> updateBook(Map<String, Object> params);

    //책 정보 삭제
    Map<String, Object> deleteBook(Map<String, Object> params);
}
