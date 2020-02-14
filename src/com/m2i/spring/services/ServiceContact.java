package com.m2i.spring.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.m2i.spring.entity.Contact;
import com.m2i.spring.interfaces.IdaoContact;

@Service
public class ServiceContact {
	
	@Autowired
	private IdaoContact maDao;
	
	@Transactional
	public Contact getById(int i)
	{
		return maDao.getById(i);
	}
	@Transactional
	public ArrayList<Contact> getAll()
	{
		return maDao.getAll();
	}
	@Transactional
	public void add(Contact c)
	{
		this.maDao.add(c);
	}
	@Transactional
	public void remove(Contact c)
	{
		this.maDao.remove(c);
	}
	@Transactional
	public void modify(Contact c)
	{
		this.maDao.modify(c);
	}
	@Transactional
	public ArrayList<Contact> search(String s)
	{
		return maDao.search(s);
	}
	@Transactional
	public ArrayList<Contact> searchByParameter(String p,String s)
	{
		return maDao.searchByParameter(p, s);
	}
	@Transactional
	public ArrayList<Contact> searchSpammable()
	{
		return maDao.searchSpammable();
	}
	@Transactional
	public boolean existPhoto(String s)
	{
		return maDao.existPhoto(s);
	}
	@Transactional
	public ArrayList<String> autocomplete(String s){
		return maDao.autocomplete(s);
	}
}
