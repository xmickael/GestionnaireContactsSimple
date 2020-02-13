package com.m2i.spring.rest;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.m2i.spring.demo.FnUtil;
import com.m2i.spring.entity.Contact;
import com.m2i.spring.services.ServiceContact;

@RestController
@RequestMapping("/api")
public class JsonController {
	
	private String cName;
	@Autowired
	private ServiceContact service;
	
	
	public JsonController() {
		this.cName="JsonController : ";
	}

	@GetMapping("{param}")
	ArrayList<Contact> getJsonContactByParam(@PathVariable("param") String p)
	{
		ArrayList<Contact> lc;
		switch(p)
		{
			case "contacts":lc = service.getAll();break;
			case "spam":lc = service.searchSpammable();break;
			case "auteur":
				lc = new ArrayList<Contact>();
				lc.add(FnUtil.getAuthor());break;
			default:
				System.out.println("Param incorect");
				throw new FalseParamException();
		}
		if(lc.size()!=0)
			return lc;
		else
			throw new SearchResultEmptyException();
	}

	@DeleteMapping("remove/{id}")
	void  deleteJsonContactById(@PathVariable("id") int i)
	{	
		Contact c = service.getById(i);
		if(c!=null)
			service.remove(c);
		else
			throw new ContactNotFoundException();
	}
	
	@PutMapping("{param}/{id}")
	void ModifyContactById(@PathVariable("param") String p,@PathVariable("id") int i)
	{
			Contact c = service.getById(i);
			if(c!=null)
			{
				System.out.println(p+ " "+i);
				switch(p)
				{
					case "spam":c.setSpam(true);break;
					case "unspam":c.setSpam(false);break;
					default:throw new FalseParamException();
				}
				System.out.println("modification du contact");
				service.modify(c);
			}
			else
			{
				System.out.println("Contact not found");
				throw new ContactNotFoundException();
			}

	}
	
	@PostMapping("add")
	void addJsonContact(@RequestBody Contact c)
	{
			service.add(c);
	}
	
	@PutMapping("modifify/{param}/{id}/{value}")
	void ModifyContactById(@PathVariable("id") int i,@PathVariable("param") String p,@PathVariable("value") String v)
	{
			Contact c = service.getById(i);
			if(c!=null)
			{
				switch(p)
				{
					case "titre":c.setTitre(v);break;
					case "nom":c.setNom(v);break;
					case "prenom":c.setPrenom(v);break;
					case "email":c.setEmail(v);break;
					case "telephone":c.setTelephone(v);;break;
					case "adresse":c.setAdresse(v);;break;
					case "cpostal":c.setCpostal(v);;break;
					case "ville":c.setVille(v);break;
					case "web":c.setWeb(v);break;
					case "notes":c.setNotes(v);break;
					default:throw new FalseParamException();
				}
				service.modify(c);
			}
			else
			{
				System.out.println("Contact not found");
				throw new ContactNotFoundException();
			}
	}
	
	
	//fonction de recherche de contact par id et praramètre de recherche définit.
	
	@GetMapping("{param}/{s}")
	ArrayList<Contact> getJsonContactByParam(@PathVariable("param") String p,@PathVariable("s") String s)
	{
		ArrayList<String> lp = new ArrayList<String>();
		//Ajout des commandes possibles dans une liste
		lp.add("titre");lp.add("nom");lp.add("prenom");lp.add("email");lp.add("telephone");lp.add("adresse");
		lp.add("cpostal");lp.add("ville");lp.add("web");lp.add("notes");lp.add("search");lp.add("contact");
		System.out.println(cName +"param : "+p+" s : "+s + "contains : "+lp.contains(p));
		//vérifie que la commande reçue est bien dans la liste sinon renvoie une erreur de mauvais paramètre
		if(lp.contains(p))
		{
			//déclaration d'une liste de résultats
			ArrayList<Contact> lc;
			switch(p)
			{
				case "search":lc = service.search(s);break;//fait une recherche et la met dans la liste de résultat
				case "contact":
						int i;
						try {i = Integer.parseInt(s);}//essaye de convertir la valeur en entier sinon renvoir une erreur d'id invalide
						catch(Exception e){throw new ContactInvalidIdException();}
						Contact c = service.getById(i);//Récupère le contact par son id
						if(c!=null)//si le contact n'est pas null crée une nouvelle liste pour y ajouter le contact. Si il n'éxiste pas, il renvois une erreur de contact non trouvé
						{
							lc = new ArrayList<Contact>();
							lc.add(c);
						}
						else
							throw new ContactNotFoundException();
						break;

				default:lc =service.searchByParameter(p, s);//effectue la recherche avec le paramètre valide
			}
			if(lc.size()!=0)//si la liste de résultat n'est pas vide, la retourne sinon renvoi une erreur de liste de résultat vide
				return lc;
			else
				throw new SearchResultEmptyException();
		}
		else
			throw new FalseParamException();
	}

}
