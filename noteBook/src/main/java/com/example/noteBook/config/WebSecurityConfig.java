//package com.example.NoteBook.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//import org.springframework.security.web.SecurityFilterChain;
//
//import javax.sql.DataSource;
//
//@Configuration
//@EnableWebSecurity
//public class WebSecurityConfig {
//
//    @Bean
//    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
//        // 권한에 따라 혀용하는 url 설정
//        http
//                .authorizeRequests()
//                .antMatchers("/", "/login").permitAll()
//                .anyRequest().authenticated();
//
//        // login 설정
//        http
//                .formLogin()
//                .loginPage("/login")            //GET (show Login Page)
//                .loginProcessingUrl("/auth")    // POST 요청 (login 창에 입력한 데이터를 처리)
//                .usernameParameter("email")     //login에 필요한 id 값을 email로 설정
//                .defaultSuccessUrl("/");
//
//        //logout 설정
//        http
//                .logout()
//                .logoutUrl("/logout")
//                .logoutSuccessUrl("/");
////        http
////                .authorizeHttpRequests((requests) -> requests
////                        .antMatchers("/", "/home").permitAll()
////                        .anyRequest().authenticated()
////                )
////                .formLogin((form) -> form
////                        .loginPage("/login")
////                        .permitAll()
////                )
////                .logout((logout) -> logout.permitAll());
//        return http.build();
//    }
//
//    @Bean
//    public UserDetailsService userDetailsService() {
//        UserDetails user =
//                User.withDefaultPasswordEncoder()
//                        .username("user")
//                        .password("password")
//                        .roles("USER")
//                        .build();
//
//        return new InMemoryUserDetailsManager(user);
//    }
//
////    @Autowired
////    public void configureGlobal(AuthenticationManagerBuilder auth)
////            throws Exception {
////        auth.jdbcAuthentication()
////                .dataSource(dataSource)
////                .passwordEncoder(passwordEncoder())
////                .usersByUsernameQuery("select user_id, user_pw, user_nick "
////                        + "from user "
////                        + "where user_id = ?")
////                .authoritiesByUsernameQuery("select email,authority "
////                        + "from authorities "
////                        + "where email = ?");
////    }
////
////    @Bean
////    public PasswordEncoder passwordEncoder() {
////        return new BCryptPasswordEncoder();
////    }
//}
