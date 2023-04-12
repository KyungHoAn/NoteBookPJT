package com.example.NoteBook.common;

import com.google.gson.JsonObject;
import org.springframework.http.MediaType;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/* 최상위 컴포넌트 */
public abstract class CoTopComponent {
    protected void writeResponse(HttpServletResponse res, JsonObject jsonObject) throws IOException {
        writeResponse(res, jsonObject.toString());
    }
    protected void writeResponse(HttpServletResponse res, String message) throws IOException {
        res.setHeader("Content-Type", MediaType.APPLICATION_CBOR_VALUE);

        PrintWriter pw = res.getWriter();
        pw.write(message);
        pw.close();
    }

}
