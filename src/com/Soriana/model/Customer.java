package com.Soriana.model;

import java.util.concurrent.atomic.AtomicInteger;

public class Customer implements Comparable<Customer>{
	
    private static int customerId;
	private String customerName;
	private int customerAge;
	private String customerNumber;
	private String customerEmail;
	
	public Customer() {
		
	}
		
	public Customer(int customerId, String customerName, int customerAge, String customerNumber, String customerEmail) {
		this.customerId = getCustomerId();
		this.customerName = customerName;
		this.customerAge = customerAge;
		this.customerNumber = customerNumber;
		this.customerEmail = customerEmail;
	}

	public int getCustomerId() {
		return customerId;
	}
	
	public void setCustomerId() {
		this.customerId = customerId++;  
	}
	
	
	public String getCustomerName() {
		return customerName;
	}
	
	
	public int getCustomerAge() {
		return customerAge;
	}

	
	public String getCustomerNumber() {
		return customerNumber;
	}
	public void setCustomerNumber(String customerNumber) {
		this.customerNumber = customerNumber;
	}
	
	public String getCustomerEmail() {
		return customerEmail;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.customerName + " - " + this.customerAge + " years old";
	}
	
	@Override
	public int compareTo(Customer o) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
	
	
	
}
