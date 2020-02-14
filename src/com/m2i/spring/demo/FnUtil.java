package com.m2i.spring.demo;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Random;

import org.springframework.web.multipart.MultipartFile;

import com.m2i.spring.entity.Contact;

public class FnUtil {

	public static String localPath ="ressources\\img\\contact_avatar\\";
	public static String m2iPath = "C:\\Users\\hj\\Desktop\\Java\\GestionnaireContacts\\GestionnaireContactsSimple\\WebContent\\";
	public static String myPath = "C:\\Users\\Mikl\\Desktop\\Java\\GestionnaireContacts\\GestionnaireContactsSimple\\WebContent\\";
	
	public static Contact getAuthor()
	{
		Contact c = new Contact("NEE","Mickael");
		c.setAdresse("14 rue Leger Gauthier");
		c.setCpostal("63450");
		c.setVille("Saint Amant Tallende");
		c.setTelephone("0628227839");
		c.setEmail("hello@xmickael.fr");		
		c.setTitre("Monsieur");
		c.setWeb("http://www.xmickael.fr");
		c.setNotes("Auteur du programme, test de la creation d'un contact");
		c.setSpam(true);
		c.setPhoto("toc4v3nzHxkSuSQL2Pcl");
		return c;
	}
	
	public static String getRandomPhoto()
	{
		int min = 48; // ascci pour '0'
	    int max = 122; //ascci pour 'z'
	    int n = 20;
	    Random rnd = new Random();
	    return rnd.ints(min, max + 1)
	    		  .filter(i -> (i <= 57 || i >= 65) && (i <= 90 || i >= 97)) // enleve les chiffre selon le filtre
	    		  .limit(n)
	    		  .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
	    		  .toString();
	}
	
	
	public static void savePhoto(String p,String p1,MultipartFile file)
	{
		String rp = localPath + p + ".png";
        copyFile(file,p1+rp);//sur le serveur
        copyFile(file,m2iPath+rp);//pc m2i
        copyFile(file, myPath+rp);//mon pc
	}
	
	public static void copyFile(MultipartFile file,String path)
	{
		InputStream inputStream = null;
		try {inputStream = file.getInputStream();}
		catch (IOException e) {e.printStackTrace();}
		
        try {Files.copy(inputStream,Paths.get(path),StandardCopyOption.REPLACE_EXISTING);}
        catch (IOException e) {e.printStackTrace();}
	}
	
	public static void deletePhoto(String p,String p1)
	{
		String rp = localPath + p + ".png";
		removeFile(p1 + rp);
		removeFile(m2iPath+rp);
		removeFile(myPath+rp);
	}
	
	public static void removeFile(String path)
	{
		File f = new File(path);
		f.delete();
	}
	
	public static ArrayList<String> getParamList()
	{
		ArrayList<String> lp = new ArrayList<String>();
		//Ajout des commandes possibles dans une liste
		lp.add("titre");
		lp.add("nom");
		lp.add("prenom");
		lp.add("email");
		lp.add("telephone");
		lp.add("adresse");
		lp.add("cpostal");
		lp.add("ville");
		lp.add("web");
		lp.add("notes");
		return lp;
	}

	
}
