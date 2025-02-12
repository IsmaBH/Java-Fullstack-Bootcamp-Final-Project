package com.jardinfloral.ecommerce.Config;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.filter.GenericFilterBean;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.SignatureException;

public class JwtFilter extends GenericFilterBean {

	public static String secret="LaCH49#PareceMuda$YNoHanTerminadoSusCVs";

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		//request- solicitud
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		//Header Authorization
		String authHeader = httpServletRequest.getHeader("Authorization");
		//URL /api/usuarios/ GET, PUT,DELET
		if(("POST".equals(httpServletRequest.getMethod()) && (!  httpServletRequest.getRequestURI().contains("/api/usuario/")) )
				||
				("GET".equals(httpServletRequest.getMethod()) &&(!  httpServletRequest.getRequestURI().contains("/api/usuario/")) )
				|| ("PUT".equals(httpServletRequest.getMethod()))
				|| ("DELETE".equals(httpServletRequest.getMethod()))
				) {
		
			
		
	
		// /api/productors/ DELETE, PUT, POST
		//Bearer
		if(authHeader==null || !authHeader.startsWith("bearer: ")) {
			System.out.println("1. Invalid Token");
			throw new ServletException("1. Invalid Token");
		}//if
		//Validar Token
		String token= authHeader.substring(7);
		try {
		Claims claims = Jwts.parser().setSigningKey(secret).parseClaimsJws(token).getBody();
		claims.forEach((key,value)-> System.out.println("key"+ key + "value:"+value));
		}catch(SignatureException | MalformedJwtException | ExpiredJwtException e) {
			System.out.println("2. invalid Token");
			throw new ServletException("2. Invalid Token");
		}//catch
	}
		chain.doFilter(request, response);
		
	}//do filter
	

}//class JwtFilter

