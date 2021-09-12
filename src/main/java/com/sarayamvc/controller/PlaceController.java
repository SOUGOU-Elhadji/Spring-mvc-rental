package com.sarayamvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sarayamvc.model.Place;
import com.sarayamvc.service.PlaceService;



@Controller
@SessionAttributes("username")
public class PlaceController {
	@Autowired
	PlaceService placeService;
	@Autowired
	WelcomeController welcomeController;

	
	@RequestMapping(value = "/list-place", method=RequestMethod.GET)
	public String getAll(ModelMap model) {
		String username = (String) model.getAttribute("username");
		model.addAttribute("places", placeService.getAll(username));
		return "listPage";
	}
	
	@RequestMapping(value = "/add-place", method=RequestMethod.GET)
	public String addPlace(ModelMap model) {
		model.addAttribute("places", new Place());
		return "formPage";
	}
	
	@RequestMapping(value = "/add-place", method=RequestMethod.POST)
	public String add(@RequestParam String user, String city, String country, String accommodates, int rentPrice, String type, String typePlace, String airConditional, String wifi, String breakfast, String description) {
		placeService.addPlace("Seck", city, country, accommodates, rentPrice, type, typePlace, airConditional, wifi, breakfast, description);
		return "redirect:/list-place";
	}
	
	@RequestMapping(value = "/delete-place", method=RequestMethod.GET)
	public String deletePlace(@RequestParam int id, ModelMap model) {
		placeService.deletePlace(id);
		model.clear();
		return "redirect:/list-place";
	}
	
	@RequestMapping(value = "/place-update", method=RequestMethod.GET)
	public String updatePlace(@RequestParam Integer id, ModelMap model) {
		model.addAttribute("place", placeService.findById(id));
		return "editPage";
	}
	
	@RequestMapping(value = "/place-update", method=RequestMethod.POST)
	public String updatePlace(@Validated Place place, ModelMap model, BindingResult result) {
		if (result.hasErrors())
			return "listPage";
			//todo.setUser();
			place.setUser(welcomeController.getLoggedInUser());
			placeService.updatePlace(place);
			model.clear();
			return "redirect:list-place";
	}

}
