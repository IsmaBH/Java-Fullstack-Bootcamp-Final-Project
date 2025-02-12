package com.jardinfloral.ecommerce.Config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import static org.springframework.security.config.Customizer.withDefaults;

@Configuration
@EnableWebMvc
public class SegurityConfig {
	@Bean
   public SecurityFilterChain configure(HttpSecurity http) throws Exception {
	return http.csrf(csrf->csrf.disable()).authorizeHttpRequests(auth->auth.anyRequest().permitAll()).httpBasic(withDefaults()).build();
}//SecurityFilterChain
public PasswordEncoder encoder() {
	return new BCryptPasswordEncoder();
}//PasswordEncoder

}//SegurityConfig
