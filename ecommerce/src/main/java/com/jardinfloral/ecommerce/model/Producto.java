package com.jardinfloral.ecommerce.model;

import javax.persistence.*;

@Entity
@Table(name = "productos")
public class Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "productosID", unique = true, nullable = false)
    private Long id;

    @Column(name = "nombre_producto", nullable = false, length = 45)
    private String nombre;

    @Column(name = "precio", nullable = false)
    private Double precio;

    @Column(name = "color", nullable = false, length = 45)
    private String color;

    @Column(name = "stock", nullable = false)
    private Integer stock;

    @Column(name = "descripcion", nullable = false, length = 300)
    private String descripcion;

    @Column(name = "temporada", nullable = false, length = 45)
    private String temporada;

    
    public Producto() {
    }//Constructor vacio

  
    public Producto(String nombre, Double precio, String color, Integer stock, String descripcion, String temporada) {
        this.nombre = nombre;
        this.precio = precio;
        this.color = color;
        this.stock = stock;
        this.descripcion = descripcion;
        this.temporada = temporada;
    }//constructor

   
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTemporada() {
        return temporada;
    }

    public void setTemporada(String temporada) {
        this.temporada = temporada;
    }//get sett

    @Override
    public String toString() {
        return "Producto{" +
                "id=" + id +
                ", nombre='" + nombre + '\'' +
                ", precio=" + precio +
                ", color='" + color + '\'' +
                ", stock=" + stock +
                ", descripcion='" + descripcion + '\'' +
                ", temporada='" + temporada + '\'' +
                '}';
    }//toString
}//classProducto
