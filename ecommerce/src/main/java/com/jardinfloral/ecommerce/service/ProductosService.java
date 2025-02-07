package com.jardinfloral.ecommerce.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jardinfloral.ecommerce.model.Producto;
import com.jardinfloral.ecommerce.repository.ProductosRepository;

import javax.persistence.EntityNotFoundException;
import java.util.List;
import java.util.Optional;

@Service
public class ProductosService {

    private final ProductosRepository productoRepository;

    @Autowired
    public ProductosService(ProductosRepository productoRepository) {
        this.productoRepository = productoRepository;
    }

 
    public List<Producto> getAllProducts() {
        return productoRepository.findAll();
    }//getALL


    public Producto getProduct(Long id) {
        return productoRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("El producto con el ID [" + id + "] no existe."));
    }//getID


    public Producto addProduct(Producto producto) {
        Optional<Producto> prod = productoRepository.findById(producto.getId());
        if (prod.isEmpty()) {
            return productoRepository.save(producto);
        } else {
            return null;
        }
    }//add

    
    public void deleteProduct(Long id) {
        if (!productoRepository.existsById(id)) {
            throw new EntityNotFoundException("El producto con el ID [" + id + "] no existe y no puede ser eliminado.");
        }
        productoRepository.deleteById(id);
    }//delete
    

}
