package com.sarayamvc.model;

public class Place {
	private int id;
	private String user;
	private String city;
	private String country;
	private String accommodates;
	private int rentPrice;
	private String type;
	private String typePlace;
	private String airConditional;
	private String wifi;
	private String breakfast;
	private String description;
	
	public Place() {
		super();
	}

	public Place(int id, String user, String city, String country, String accommodates, int rentPrice, String type,
			String typePlace, String airConditional, String wifi, String breakfast, String description) {
		super();
		this.id = id;
		this.user = user;
		this.city = city;
		this.country = country;
		this.accommodates = accommodates;
		this.rentPrice = rentPrice;
		this.type = type;
		this.typePlace = typePlace;
		this.airConditional = airConditional;
		this.wifi = wifi;
		this.breakfast = breakfast;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAccommodates() {
		return accommodates;
	}

	public void setAccommodates(String accommodates) {
		this.accommodates = accommodates;
	}

	public int getRentPrice() {
		return rentPrice;
	}

	public void setRentPrice(int rentPrice) {
		this.rentPrice = rentPrice;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTypePlace() {
		return typePlace;
	}

	public void setTypePlace(String typePlace) {
		this.typePlace = typePlace;
	}

	public String getAirConditional() {
		return airConditional;
	}

	public void setAirConditional(String airConditional) {
		this.airConditional = airConditional;
	}

	public String getWifi() {
		return wifi;
	}

	public void setWifi(String wifi) {
		this.wifi = wifi;
	}

	public String getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Place other = (Place) obj;
		if (id != other.id)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Place [id=" + id + ", user=" + user + ", city=" + city + ", country=" + country + ", accommodates="
				+ accommodates + ", rentPrice=" + rentPrice + ", type=" + type + ", typePlace=" + typePlace
				+ ", airConditional=" + airConditional + ", wifi=" + wifi + ", breakfast=" + breakfast
				+ ", description=" + description + "]";
	}
	
	
	
	
}
