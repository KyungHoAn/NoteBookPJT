package com.example.NoteBook;

import com.example.NoteBook.common.Constants;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
//@ComponentScan(basePackages = Constants.APP_DEFAULT_PACKAGE_NAME)
@MapperScan(basePackages = Constants.MAPPER_PACKAGE)
public class NoteBookApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(NoteBookApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(NoteBookApplication.class);
    }
}
