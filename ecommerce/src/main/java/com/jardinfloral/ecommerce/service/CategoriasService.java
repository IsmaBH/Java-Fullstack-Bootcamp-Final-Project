package com.jardinfloral.ecommerce.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jardinfloral.ecommerce.model.Categoria;
import com.jardinfloral.ecommerce.repository.CategoriasRepository;



@Service
public class CategoriasService {
	 private final CategoriasRepository categoriasRepository;

	    @Autowired
	    public CategoriasService(CategoriasRepository categoriasRepository) {
	        this.categoriasRepository = categoriasRepository;
	    }

	 
	    public List<Categoria> getAllCategorias() {
	        return categoriasRepository.findAll();
	    }//getALL


	    public Categoria getCategoria(Integer id) {
	        return categoriasRepository.findById(id)
	                .orElseThrow(() -> new EntityNotFoundException("La categoría con el ID [" + id + "] no existe."));
	    }//getID


	    public Categoria addCategoria(Categoria categoria) {
	        Optional<Categoria> cat = categoriasRepository.findById(categoria.getId());
	        if (cat.isEmpty()) {
	            return categoriasRepository.save(categoria);
	        } else {
	            return null;
	        }
	    }//add

	    
	    public void deleteCategoria(Integer id) {
	        if (!categoriasRepository.existsById(id)) {
	            throw new EntityNotFoundException("La categoría con el ID [" + id + "] no existe y no puede ser eliminado.");
	        }
	        categoriasRepository.deleteById(id);
	    }//delete
}
