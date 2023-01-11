package classdoctor;

public class Doctor {
String Nom;
String Prenom;
int CIN;
int date;
String adress;
int nemero;
String genre ;
String deplome ;

public Doctor(String nom, String prenom, int cIN, int date, String adress, int nemero,String genre ,String deplome) {
	Nom = nom;
	Prenom = prenom;
	CIN = cIN;
	this.date = date;
	this.adress = adress;
	this.nemero = nemero;
	this.genre=genre ;
	this.deplome=deplome ;
}

public Doctor() {
	Nom = "NULL";
	Prenom = "NULL";
	CIN = 0;
	this.date = 0;
	this.adress = "NULL";
	this.nemero = 0;
	this.genre="NULL";
	this.deplome="NULL" ;
}
public String getNom() {
	return Nom;
}
public void setNom(String nom) {
	Nom = nom;
}
public String getPrenom() {
	return Prenom;
}
public void setPrenom(String prenom) {
	Prenom = prenom;
}
public int getCIN() {
	return CIN;
}
public void setCIN(int cIN) {
	CIN = cIN;
}
public int getDate() {
	return date;
}
public void setDate(int date) {
	this.date = date;
}
public String getAdress() {
	return adress;
}
public void setAdress(String adress) {
	this.adress = adress;
}

public int getNemero() {
	return nemero;
}
public void setNemero(int nemero) {
	this.nemero = nemero;
}
public String getGenre() {
	return genre;
}
public void setGenre(String genre) {
	this.genre = genre;
}
public String getDeplome() {
	return deplome;
}
public void setDeplome(String deplome) {
	this.deplome = deplome;
}

}
