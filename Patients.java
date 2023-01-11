package classdoctor;

public class Patients {
	
	String Nom;
	String Prenom;
	int CIN;
	int date;
	String adress;
	int nemero;
	String genre ;
	int Num_p_urgence ;
	int prix;
	public Patients(String nom, String prenom, int cIN, int date, String adress, int nemero, String genre,
			int num_p_urgence,int prix) {
		Nom = nom;
		Prenom = prenom;
		CIN = cIN;
		this.date = date;
		this.adress = adress;
		this.nemero = nemero;
		this.genre = genre;
		Num_p_urgence = num_p_urgence;
		this.prix=prix;
	}
	public Patients() {
		Nom = "NULL";
		Prenom = "NULL";
		CIN = 0;
		this.date = 0;
		this.adress = "NULL";
		this.nemero = 0;
		this.genre = "NULL";
		Num_p_urgence = 0;
		this.prix=0;

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
	public int getNum_p_urgence() {
		return Num_p_urgence;
	}
	public void setNum_p_urgence(int num_p_urgence) {
		Num_p_urgence = num_p_urgence;
	}
	public int getPrix() {
		return prix;
	}
	public void setPrix(int prix) {
		this.prix = prix;
	}
	

}
