package com.codingdojo.ninjaProject.controllers;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.codingdojo.ninjaProject.models.Ninja;
import com.codingdojo.ninjaProject.services.NinjaService;

@Controller
public class Ninjas {
	private final NinjaService ninjaService;

	public Ninjas(NinjaService ninjaService) {
		this.ninjaService = ninjaService;
	}

	@InitBinder("ninja")
	public void initNinjaBinder(WebDataBinder binder) {
		binder.setAllowedFields("name", "color", "expression");
	}
	
@GetMapping("/")
	public String welcomePage(){
		return "welcome.jsp";
}

@GetMapping("/homePage")
	public String homePage(Model model){
	
		model.addAttribute("ninjas", ninjaService.getAllNinjas());		
		return "homePage.jsp";
}

@GetMapping("/createNinja")
	public String goCreateNinja(@ModelAttribute("ninja") Ninja ninja){
		
		return "createNinja.jsp";
}

@PostMapping("/ninjas")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result){
		
		if(result.hasErrors()){
				return "createNinja.jsp";
			}
		else 
			{
				ninjaService.createNinja(ninja);
				return "redirect:/homePage";
			}
}

@GetMapping("/ninjas/{id}")
	public String seeNinja(@PathVariable("id") Long id, Model model){
	
		Ninja ninja = ninjaService.getOneNinja(id);
		model.addAttribute("ninja", ninja);	
		
		return "seeNinja.jsp";
}

@GetMapping("/ninjas/{id}/edit")
	public String editNinja(@PathVariable("id") Long id, Model model){
	
		Ninja ninja = ninjaService.getOneNinja(id);
		model.addAttribute("ninja", ninja);
		
		return "editNinja.jsp";
}	
	
@PutMapping("/ninjas/{id}")
	public String updateNinja(@PathVariable("id") Long id, @Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result){
	
		if(result.hasErrors()) {
				
				return "editNinja.jsp";
			}
		else 
			{
				ninjaService.updateNinja(id, ninja);
				return "redirect:/homePage";
			}
}

@DeleteMapping("/ninjas/{id}")
	public String deleteNinja(@PathVariable("id") Long id){
	
		ninjaService.deleteNinjaById(id);
		return "redirect:/homePage";
}

@GetMapping("/world/{id}")
	public String worldOne(@PathVariable("id") Long id, Model model){
	
	Ninja ninja = ninjaService.getOneNinja(id);
	
	model.addAttribute("ninja", ninja);
	return "world1.jsp";
}
//////////   ////////// /////////// ////////////
//////////////////// /////////// ////////////
@GetMapping("/world2/{id}")
	public String worldTwo(@PathVariable("id") Long id, Model model){
	
		Ninja ninjaMan = ninjaService.getOneNinja(id);
		model.addAttribute("ninjaMan", ninjaMan);
		
		return "world2.jsp";
		
}

@GetMapping("/world3/{id}")
	public String worldThree(@PathVariable("id") Long id, Model model){
	
		Ninja ninjaMan = ninjaService.getOneNinja(id);
		model.addAttribute("ninjaMan", ninjaMan);
		
		return "world3.jsp";
}
////////////////////
///////////////
}
///////
//