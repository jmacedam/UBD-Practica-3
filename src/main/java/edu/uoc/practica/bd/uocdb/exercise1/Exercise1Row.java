package edu.uoc.practica.bd.uocdb.exercise1;

public class Exercise1Row {

	private String zone_name;
	private String capital_town;
	private String climate;
	private String region;
	private String last_selling;
	private long total_quantity;
	
	
	
	public Exercise1Row(String zone_name, String capital_town, String climate, String region, String last_selling,
			long total_quantity) {
		super();
		this.zone_name = zone_name;
		this.capital_town = capital_town;
		this.climate = climate;
		this.region = region;
		this.last_selling = last_selling;
		this.total_quantity = total_quantity;
		
	}
	/**
	 * @return the zone_name
	 */
	public String get_zone_name() {
		return zone_name;
	}
	/**
	 * @param zone_name the zone_name to set
	 */
	public void set_zone_name(String zone_name) {
		this.zone_name = zone_name;
	}
	/**
	 * @return the capital_town
	 */
	public String get_capital_town() {
		return capital_town;
	}
	/**
	 * @param capital_town the capital_town to set
	 */
	public void set_capital_town(String capital_town) {
		this.capital_town = capital_town;
	}
	/**
	 * @return the climate
	 */
	public String get_climate() {
		return climate;
	}
	/**
	 * @param climate the climate to set
	 */
	public void set_climate(String climate) {
		this.climate = climate;
	}
	/**
	 * @return the region
	 */
	public String get_region() {
		return region;
	}
	/**
	 * @param region the region to set
	 */
	public void set_region(String region) {
		this.region = region;
	}
	/**
	 * @return the last_selling
	 */
	public String get_last_selling() {
		return last_selling;
	}
	/**
	 * @param last_selling the last_selling to set
	 */
	public void set_last_selling(String last_selling) {
		this.last_selling = last_selling;
	}
	/**
	 * @return the total_quantity
	 */
	public long get_total_quantity() {
		return total_quantity;
	}
	/**
	 * @param total_quantity the total_quantity to set
	 */
	public void set_total_quantity(long total_quantity) {
		this.total_quantity = total_quantity;
	}
	
	
}
