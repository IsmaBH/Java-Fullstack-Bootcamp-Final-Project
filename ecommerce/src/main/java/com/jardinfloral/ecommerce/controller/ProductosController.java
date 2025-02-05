package com.jardinfloral.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.jardinfloral.ecommerce.model.Producto;
import com.jardinfloral.ecommerce.service.ProductosService;

import java.util.List;

@RestController
@RequestMapping("/api/productos")
public class ProductosController {

    private final ProductosService productosService;

    @Autowired
    public ProductosController(ProductosService productosService) {
        this.productosService = productosService;
    }//ProductosControllerconst

  
    @GetMapping
    public List<Producto> getProductos() {
        return productosService.getAllProducts();
    }//getAll

    
    @GetMapping("/{id}")
    public Producto getProducto(@PathVariable("id") Long id) {
        return productosService.getProduct(id);
    }// getId

   
    @PostMapping
    public Producto addProducto(@RequestBody Producto producto) {
        return productosService.addProduct(producto);
    }//add

  
    @DeleteMapping("/{id}")
    public String deleteProducto(@PathVariable("id") Long id) {
        productosService.deleteProduct(id);  
        return "Producto eliminado.";
    }//delete
}//classProductosController

