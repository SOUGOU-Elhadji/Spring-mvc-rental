package com.sarayamvc.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sarayamvc.model.Place;


@Service
public class PlaceService {
	public static List<Place> places =  new ArrayList<Place>();
	public static int count = 4;
	static {
		places.add(new Place(1, "Elji", "Thies", "Senegal", "2 persons", 150000, "Home", "Business", "No", "Yes", "Yes", "The place is really nice. We use it every sunday when we go fishing. It is so awesome."));
		places.add(new Place(2, "Elji", "Dakar", "Senegal", "2 persons", 150000, "Home", "Business", "No", "Yes", "Yes", "The place is really nice. We use it every sunday when we go fishing. It is so awesome."));
		places.add(new Place(3, "Elji", "Mbour", "Senegal", "2 persons", 150000, "Home", "Business", "No", "Yes", "Yes", "The place is really nice. We use it every sunday when we go fishing. It is so awesome."));
		places.add(new Place(4, "Elji", "Mboro", "Senegal", "2 persons", 150000, "Home", "Business", "No", "Yes", "Yes", "The place is really nice. We use it every sunday when we go fishing. It is so awesome."));
		
	}
	
	public List<Place> getAll(String user) {
		List<Place> listplace = new ArrayList<Place>();
		for (Place place : places) {
			if (place.getUser().equalsIgnoreCase(user)) {
				listplace.add(place);
			}
		}
		return places;
	}
	
	
	public void addPlace(String user, String city, String country, String accommodates, int rentPrice, String type, String typePlace, String airConditional, String wifi, String breakfast, String description) {
		// TODO Auto-generated method stub
		places.add(new Place(++count, user, city, country, accommodates, rentPrice, type, typePlace, airConditional, wifi, breakfast, description));
	}
	
	public Place findById(int id) {
		for (Place place : places) {
			if (place.getId() == id) {
				return place;
			}
		}
		return null;
	}
	
	public void updatePlace(Place place) {
		places.remove(place);
		places.add(place);
	}
	
	public void deletePlace(int id) {
		// TODO Auto-generated method stub
		Iterator<Place> iterator = places.iterator();
		while (iterator.hasNext()) {
			Place place = iterator.next();
			if (place.getId() == id) {
				iterator.remove();
			}
			
		}
	}
}
