package com.m2i.spring.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.m2i.spring.demo.FnUtil;
import com.m2i.spring.entity.Contact;
import com.m2i.spring.services.ServiceContact;

@Controller
@RequestMapping("/")
public class HomeController {
	
	private String cName;
	@Autowired
	private ServiceContact service;
	
	
	public HomeController() {
		this.cName="HomeController : ";
	}
	
	@InitBinder//tranforme empty en null
    public void initBinder(WebDataBinder dataBinder) {

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        //dataBinder.registerCustomEditor(String.class, new StringMultipartFileEditor());
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

	
	@RequestMapping("/")
	public String indexPage(Model m)
	{
		m.addAttribute("contacts", service.getAll()); //ajoute la liste des contacts au modèle de la page à laquelle on va renvoyer.
		return "index";
	}
	//page de documentation de l'API
	@RequestMapping("api")
	public String apiPage()
	{
		return "api";
	}
	
	//Page debug pour tester des fonctions front
	@RequestMapping("debug")
	public String debugPage()
	{
		return "debug";
	}
	
	@RequestMapping("autocomplete")
	public String autoCompleteSearch(@RequestParam("search") String s,Model m)
	{
		System.out.println("recherche autocomplete pour "+s);
		m.addAttribute("search", s);
		m.addAttribute("results", service.autocomplete(s));
		return "debug";
	}
	
	//Page pour tester les fonctions back
	@RequestMapping("main")
	public String mainExec()
	{
		System.out.println(cName+"Lancement du main");
		//Mettre le main ici !!!!!

		
		
		//fin
		System.out.println(cName + "Fin du main");
		return "redirect:/";
	}
	
	//Page d'ajout d'un contact
	@RequestMapping("addPage")
	public String addformContact(Model m)
	{
		Contact c= new Contact();//Créé un nouveau contact qui sera injecté dans le formulaire.
		m.addAttribute("contact", c);//ajoute le contact au modèle de la page 
		m.addAttribute("action","Ajouter");//Définit l'action que le formulaire devra gérer.
		return "formContact";//retourne la page de formaulire de contact
	}
	
	@RequestMapping("actionContact")
	public String formContact2DB(@Valid  @ModelAttribute("contact") Contact c,BindingResult bd,@RequestParam("action") String action,
			@RequestParam("photofile") MultipartFile file,Model m,HttpSession session)
	{
		if(!action.equals("Annuler"))//test si le boutton Annuler n'a pas été pressé
		{
			if(bd.hasErrors())//Test si il y a eu des erreurs de saisie dans le formulaire avec les formValidator de spring
			{
				m.addAttribute("action",action);//remet l'action en cours (Ajouter ou modifier) pour personnaliser le formulaire et savoir quoi faire quand le formulaire sera bien saisit.
				m.addAttribute("contact", c); //renvoi le contact saisie avec ses valeurs saisies
				return "formContact"; // retourne sur le formulaire de contact
			}
			else
			{	
				if(!file.isEmpty()) //test si le fichier n'est pas vide (soit on n'a pas voulu personnaliser son avatar ou si on a pas souhaité le modifier)
				{
					String p;
					do {p = FnUtil.getRandomPhoto();} while (service.existPhoto(p));//Va générer une chaine de caractère aléatoire pour identifier la photo
					FnUtil.savePhoto(p, session.getServletContext().getRealPath("/"), file);//va stocker la photo sue le serveur
			        c.setPhoto(p);//ajoute l'identification de la photo au contact.
				}
				
				switch (action)
				{
					case "Modifier":service.modify(c);break;
					case "Ajouter":	service.add(c);	break;
				}
			}
		}
		//Cette partie se fait en cas d'annulation ou de modification de formulaire.
		return indexPage(m);//lance la méthode pour afficher la page d'acceuil
	}
		
		
	
	@RequestMapping("removeContact")
	public String removeContact(@RequestParam("action") int i,Model m,HttpSession session)
	{
		Contact c = service.getById(i);//Récupère le contact à supprimer.
		if(c.getPhoto()!=null)//test si le contact a une photo et l'éfface.
			FnUtil.deletePhoto(c.getPhoto(),session.getServletContext().getRealPath("/"));
		service.remove(c);//supprime le contact de la base
		return indexPage(m);//lance la méthode pour afficher la page d'acceuil
	}
	
	@RequestMapping("modifyContact")
	public String modifyContact(@RequestParam("action") int i,Model m)
	{
		m.addAttribute("contact", service.getById(i));//Ajoute le contact à modifier au modele du formulaire
		m.addAttribute("action","Modifier"); // Définit l'action du formulaire
		return "formContact";//affiche le formulaire
	}
}
