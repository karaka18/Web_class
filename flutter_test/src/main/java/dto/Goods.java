package dto;

public class Goods {
	String name;
	int price;
	String sn;
	String imgSrc;
	
	public Goods(String name, int price, String sn, String imgSrc) {
		super();
		this.name = name;
		this.price = price;
		this.sn = sn;
		this.imgSrc = imgSrc;
	}
}