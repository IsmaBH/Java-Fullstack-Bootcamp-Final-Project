package com.jardinfloral.ecommerce.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="usuarios")
public class Usuario {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="usuario_id", unique=true, nullable=false)
	private Integer id;
	@Column(name="nombre", unique=true, nullable=false)
	private String nombre;
	@Column(name="apePaterno", unique=true, nullable=false)
	private String ape_p;
	@Column(name="apeMaterno", unique=true, nullable=false)
	private String ape_m;
	@Column(name="telefono", unique=true, nullable=false)
	private	Long telefono;
	@Column(name="correo", unique=true, nullable=false)
	private String correo;

	//Constructor vacío
	public Usuario() {}

	

	//Constructor con parámetros
	public Usuario(String nombre, String ape_p, String ape_m, Long telefono, String correo) {
			
		this.nombre = nombre;
		this.ape_p = ape_p;
		this.ape_m = ape_m;
		this.telefono = telefono;
		this.correo = correo;
	}

	//Getters y Setters	

	public Integer getId() {
		return id;
	}


	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public String getApe_p() {
		return ape_p;
	}



	public void setApe_p(String ape_p) {
		this.ape_p = ape_p;
	}



	public String getApe_m() {
		return ape_m;
	}



	public void setApe_m(String ape_m) {
		this.ape_m = ape_m;
	}



	public Long getTelefono() {
		return telefono;
	}



	public void setTelefono(Long telefono) {
		this.telefono = telefono;
	}



	public String getCorreo() {
		return correo;
	}



	public void setCorreo(String correo) {
		this.correo = correo;
	}



	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nombre=" + nombre + ", ape_p=" + ape_p + ", ape_m=" + ape_m + ", telefono="
				+ telefono + ", correo=" + correo + "]";
	}

	//toString
	


}

