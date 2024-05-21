package com.servepack;

public class menu {
	String itemname;
	int price;
	String quantity;
	
	public menu(String itemname,int price,String quantity) {
		    this.itemname=itemname;
		    this.price=price;
		    this.quantity=quantity;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	

}
