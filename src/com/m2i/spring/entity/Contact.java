package com.m2i.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="contacts")
public class Contact {

		@Id
		@Column(name="id")
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int id;
		
		@Column(name="titre")
		private String titre;
		@NotNull(message="Le nom ne peut etre vide")
		@Column(name="nom")
		private String nom;
		@NotNull(message="Le prénom ne peut etre vide")
		@Column(name="prenom")
		private String prenom;
		
		@Email(message="Rentrer une adresse mail valide")
		@Column(name="email")
		private String email;
		
		@Column(name="telephone")
		private String telephone;
		
		@Column(name="adresse")
		private String adresse;
		
		@Column(name="cpostal")
		private String cpostal;
		
		@Column(name="ville")
		private String ville;
	
		@Column(name="web")
		private String web;
		
		@Column(name="notes")
		private String notes;
		
		@JsonIgnore
		@Column(name="photo")
		private String photo;
		
		@Column(name="spam")
		private Boolean spam;
		
		//contructeurs
		public Contact() {}
		public Contact(String nom, String prenom) {
			this.nom = nom;
			this.prenom = prenom;
		}
		
		public String GetFormatedTelephone()
		{
			String str="";
			str+=this.telephone.substring(0, 2)+" ";
			str+=this.telephone.substring(2, 4)+" ";
			str+=this.telephone.substring(4, 6)+" ";
			str+=this.telephone.substring(6, 8)+" ";
			str+=this.telephone.substring(8, 10)+" ";
			return str;
		}
		
		@Override
		public String toString() {
			String str="- ["+this.id+"] "+this.titre+" "+this.nom+" "+this.prenom+"\n";
			if(this.telephone!=null)
				str+=" - "+this.telephone+"\n";
			if(this.email!=null)
				str+=" - "+this.email+"\n";
			str+=" - "+this.adresse+","+this.cpostal+" "+this.ville+"\n";
			if(this.web!=null)
				str+=this.web+"\n";
			if(this.notes!=null)
				str+=this.notes+"\n";
			return str+="photo : "+this.photo+"\nspam : "+spam;
		}
		public int getId() {return id;}
		public void setId(int id) {this.id = id;}
		public String getTitre() {return titre;}
		public void setTitre(String titre) {this.titre = titre;}
		public String getNom() {return nom;}
		public void setNom(String nom) {this.nom = nom;}
		public String getPrenom() {return prenom;}
		public void setPrenom(String prenom) {this.prenom = prenom;}
		public String getEmail() {return email;}
		public void setEmail(String email) {this.email = email;}
		public String getTelephone() {return telephone;}
		public void setTelephone(String telephone) {this.telephone = telephone;}
		public String getAdresse() {return adresse;}
		public void setAdresse(String adresse) {this.adresse = adresse;}
		public String getCpostal() {return cpostal;}
		public void setCpostal(String cpostal) {this.cpostal = cpostal;}
		public String getVille() {return ville;}
		public void setVille(String ville) {this.ville = ville;}
		public String getWeb() {return web;}
		public void setWeb(String web) {this.web = web;}
		public String getNotes() {return notes;}	
		public void setNotes(String notes) {this.notes = notes;}
		public String getPhoto() {return photo;}
		public void setPhoto(String photo) {this.photo = photo;}
		public Boolean getSpam() {return spam;}
		public void setSpam(Boolean spam) {this.spam = spam;}
	
		
	
}
