package com.codingdojo.ninjaProject.services;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.ninjaProject.models.Ninja;
import com.codingdojo.ninjaProject.repositories.NinjaRepo;


@Service
public class NinjaService {
	
	@Autowired
	private  NinjaRepo ninjaRepo;
	
	public NinjaService (NinjaRepo ninjaRepo) {
		
		this.ninjaRepo = ninjaRepo;
	}
	
	public List<Ninja> getAllNinjas(){
		
		return ninjaRepo.findAll();
	}
	
	public void createNinja(Ninja ninja) {
		
		ninjaRepo.save(ninja);
	}
///////////////////////////////////////////////////
///////////////////////////////////////////////////
	
/////////////////////////////////////////////////
/////////////////////////////////////////////////
	public Ninja getOneNinja(Long id) {
		
		Optional <Ninja> optional = ninjaRepo.findById(id);
		
		if(optional.isPresent()) {
			return optional.get();
		}else {			
			return null;
		}
	}
	
	public void deleteNinjaById(Long id) {
		
		ninjaRepo.deleteById(id);
	}
}
