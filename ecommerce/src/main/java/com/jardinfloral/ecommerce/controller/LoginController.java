package com.jardinfloral.ecommerce.controller;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jardinfloral.ecommerce.Config.JwtFilter;
import com.jardinfloral.ecommerce.dto.Token;
import com.jardinfloral.ecommerce.model.Usuario;
import com.jardinfloral.ecommerce.service.UsuariosService;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@RestController
@RequestMapping(path="/api/login/") 
public class LoginController {

	private final UsuariosService usuariosService;
	
	@Autowired
	public LoginController(UsuariosService usuariosService) {
		super();
		this.usuariosService=usuariosService;
	}//constructor
	@PostMapping //http://localhost:8080/api/login/
	public Token loginUser(@RequestBody Usuario usuario) throws ServletException{ //@RequestBody necesitamos que nos lo pase en el body //token se utiliza 
		//para sifrar los datos del usuario.
		if(usuariosService.validateUser(usuario)) {
			return new Token(generateToken(usuario.getCorreo()));
		}//if validateUser
		throw new ServletException("Nombre de usuario o contraseña incorrectos["+usuario.getCorreo()+"]");
	}//loginUsuario
	
	private String generateToken(String correo) {
		Calendar calendar = Calendar.getInstance();//fecha y hora del dia
		//calendar.add(Calendar.MINUTE, 30); dato mas real ne minutos
		calendar.add(Calendar.HOUR, 12); // unicamente usado para pruebas
		return Jwts.builder()
				.setSubject(correo)
				.claim("role", "user")
				.setIssuedAt(new Date())
				.setExpiration(calendar.getTime())
				.signWith(SignatureAlgorithm.HS256, JwtFilter.secret)
				.compact();
	}// generate token
	
}//class LoginController
