package com.jardinfloral.ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pedidos")
public class Pedido {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name="id", unique=true, nullable=false)
	private Integer id;
	@Column(name="fecha_venta",unique=false,nullable=false)
	private String fechaVenta;
	@Column(name="cantidad_pagada",unique=false,nullable=false)
	private Double cantidadPagada;
	@Column(name="cantidad_vendida",unique=false,nullable=false)
	private Integer cantidadVendida;
	
	//Constructor vacio
	public Pedido() {}
	//Constructor con parametros

	public Pedido(String fechaVenta, Double cantidadPagada, Integer cantidadVendida) {
		this.fechaVenta = fechaVenta;
		this.cantidadPagada = cantidadPagada;
		this.cantidadVendida = cantidadVendida;
	}
	
	//Getters y Setters
	public Integer getId() {
		return id;
	}

	public String getFechaVenta() {
		return fechaVenta;
	}

	public void setFechaVenta(String fechaVenta) {
		this.fechaVenta = fechaVenta;
	}

	public Double getCantidadPagada() {
		return cantidadPagada;
	}

	public void setCantidadPagada(Double cantidadPagada) {
		this.cantidadPagada = cantidadPagada;
	}

	public Integer getCantidadVendida() {
		return cantidadVendida;
	}

	public void setCantidadVendida(Integer cantidadVendida) {
		this.cantidadVendida = cantidadVendida;
	}

	//toString
	@Override
	public String toString() {
		return "Pedido [id=" + id + ", fechaVenta=" + fechaVenta + ", cantidadPagada=" + cantidadPagada
				+ ", cantidadVendida=" + cantidadVendida + "]";
	}
}
