package com.example.NoteBook.controller;

import com.example.NoteBook.common.Url;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MapController {

    @GetMapping("/map")
    public String mapView() {
        return Url.MAP.MAP_JSP;
    }
}
