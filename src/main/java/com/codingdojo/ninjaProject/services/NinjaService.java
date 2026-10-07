package com.codingdojo.ninjaProject.services;
import java.util.List;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import com.codingdojo.ninjaProject.models.Ninja;
import com.codingdojo.ninjaProject.repositories.NinjaRepo;


@Service
public class NinjaService {
	
	private final NinjaRepo ninjaRepo;
	
	public NinjaService (NinjaRepo ninjaRepo) {
		
		this.ninjaRepo = ninjaRepo;
	}
	
	public List<Ninja> getAllNinjas(){
		
		return ninjaRepo.findAll();
	}
	
	public void createNinja(Ninja ninja) {
		
		ninjaRepo.save(ninja);
	}

	public Ninja updateNinja(Long id, Ninja updates) {
		Ninja ninja = getOneNinja(id);
		ninja.setName(updates.getName());
		ninja.setColor(updates.getColor());
		ninja.setExpression(updates.getExpression());
		return ninjaRepo.save(ninja);
	}
///////////////////////////////////////////////////
///////////////////////////////////////////////////
	
/////////////////////////////////////////////////
/////////////////////////////////////////////////
	public Ninja getOneNinja(Long id) {
		
		Optional <Ninja> optional = ninjaRepo.findById(id);
		
		return optional.orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND));
	}
	
	public void deleteNinjaById(Long id) {
		
		ninjaRepo.deleteById(id);
	}
}
