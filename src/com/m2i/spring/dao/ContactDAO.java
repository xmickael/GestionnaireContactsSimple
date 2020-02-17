package com.m2i.spring.dao;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.m2i.spring.demo.FnUtil;
import com.m2i.spring.entity.Contact;
import com.m2i.spring.interfaces.IdaoContact;

@Repository
public class ContactDAO implements IdaoContact {
	
	@Autowired
	private SessionFactory sessionFactory;

	public ContactDAO() {}
	
	public Contact getById(int i) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Contact.class, i);
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Contact> getAll()
	{
		Session session = sessionFactory.getCurrentSession();
		return (ArrayList<Contact>) session.createQuery("from Contact").list();
	}
	public void add(Contact c)
	{
		Session session = sessionFactory.getCurrentSession();
		session.persist(c);
	}

	public void remove(Contact c)
	{
		Session session = sessionFactory.getCurrentSession();
		session.delete(c);
	}

	public void modify(Contact c)
	{
		Session session = sessionFactory.getCurrentSession();
		session.merge(c);
		
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Contact> search(String s) {
		
		Session session = sessionFactory.getCurrentSession();
		Query<Contact> q = session.createQuery("from Contact as c "
									+ "where c.nom like :search "
									+ "or c.prenom like :search "
									+ "or c.ville like :search "
									+ "or c.email like :search "
									+ "or c.adresse like :search "
									+ "or c.telephone like :search "
									+ "or c.cpostal like :search "
									+ "or c.web like :search "
									+ "or c.notes like :search ");
		q.setParameter("search","%"+s+"%"); 
		System.out.println("requete search faite pour : "+s);
		System.out.println(q.list().size()+" resultats trouvés");
		System.out.println(q.list());
		return (ArrayList<Contact>) q.list();
	}
	
	public boolean existPhoto(String s)
	{
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		Query<Contact> q = session.createQuery("from Contact where photo like :search ");
		q.setParameter("search",s);
		return !(q.list().size()==0);
	}

	public ArrayList<Contact> searchByParameter(String p,String s) {
		
		Session session = sessionFactory.getCurrentSession();

		@SuppressWarnings("unchecked")
		Query<Contact> q = session.createQuery("from Contact where "+p+" like :search ");
		q.setParameter("search","%"+s+"%");
		System.out.println("requete search param faite pour : "+s);
		System.out.println(q.list().size()+" resultats trouvés");
		return (ArrayList<Contact>) q.list();
	}
	
	public ArrayList<Contact> searchSpammable() 
	{
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		Query<Contact> q = session.createQuery("from Contact where spam=1");
		return (ArrayList<Contact>) q.list();
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<String> autocomplete(String s)
	{
		s=s.toLowerCase();
		Session session = sessionFactory.getCurrentSession();
		ArrayList<String> r =new ArrayList<String>();
		ArrayList<String> param = new ArrayList<String>();//Fn.Util.getParam();
		param.add("nom");
		param.add("prenom");
		param.add("ville");
		Query<String> q;
		for(String p:param)
		{
			q = session.createQuery("select "+p+" from Contact where "+p+" like :search");
			q.setParameter("search","%"+s+"%"); 
			for(String temp:q.list())
			{
				r.add(temp.toLowerCase());
			}
		}
		return r;
	}
	
	
    public void setSessionFactory(SessionFactory sessionFactory){this.sessionFactory=sessionFactory;}
	public SessionFactory getSessionFactory() {return sessionFactory;}


	

	
}
