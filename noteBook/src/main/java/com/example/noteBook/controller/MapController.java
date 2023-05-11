package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MapController {

    @Value("${Kakao_key}")
    private String kakaoKey;

    @GetMapping(value = Url.MAP.MAPVIEW)
    public String mapView(Model model) {
        model.addAttribute("key",kakaoKey);
        return Url.MAP.MAP_JSP;
    }
}
