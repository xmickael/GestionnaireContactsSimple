package old;

import java.util.ArrayList;
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

import com.m2i.spring.entity.Contact;
import com.m2i.spring.services.ServiceContact;


@Controller
@RequestMapping("/contact")
public class ContactController {
	
	private String cName;
	@Autowired
	private ServiceContact service;
	
	public ContactController() {
		this.cName="addContactController : ";
		System.out.println(this.cName+"Creation du controleur");
	}
	
	@InitBinder//tranforme empty en null
    public void initBinder(WebDataBinder dataBinder) {

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }
	
	
	@RequestMapping("../")
	public String indexPage()
	{
		System.out.println(cName+"Affichage de l'index");
		return "./";
	}

	
	
	
	
	
	@RequestMapping("showPage")
	public String showContactPage(Model m)
	{
		System.out.println(cName+"Afficher un contact");
		ArrayList<Contact> lc = service.getAll();
		m.addAttribute("contacts",lc);
		return "show";
	}
	
	@RequestMapping("searchPage")
	public String searchContactPage(Model m)
	{
		
		System.out.println(cName+"Recherche d'un contact");
		m.addAttribute("search", "");
		m.addAttribute("contacts",null);
		m.addAttribute("max",-1);
		return "search";
	}
	
	@RequestMapping("searchContact")
	public String searchContact(@RequestParam("search") String s,Model m)
	{
		
		System.out.println(cName+"Recherche d'un contact : "+s);
		ArrayList<Contact> lc = service.search(s);
		m.addAttribute("search", s);
		m.addAttribute("contacts",lc);
		m.addAttribute("max",lc.size());
		return "search";
	}
	
	
	
	
	
	
	public String getcName() {return cName;}
	public void setcName(String cName) {this.cName = cName;}
}
