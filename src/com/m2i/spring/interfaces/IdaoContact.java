package com.m2i.spring.interfaces;

import java.util.ArrayList;


import org.hibernate.SessionFactory;


import com.m2i.spring.entity.Contact;

public interface IdaoContact {
	
	//
	public void setSessionFactory(SessionFactory sessionFactory);
	public SessionFactory getSessionFactory();
	
	
	public Contact getById(int i);
	public ArrayList<Contact> getAll();
	public void add(Contact c);
	public void remove(Contact c);
	public void modify(Contact c);
	public ArrayList<Contact> search(String s);
	public ArrayList<Contact> searchByParameter(String p,String s);
	public ArrayList<Contact> searchSpammable();
	public boolean existPhoto(String s);
	public ArrayList<String> autocomplete(String s);
	
}
