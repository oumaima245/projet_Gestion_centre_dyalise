package classdoctor;

public class paiment {
int CINP;
int CINM;
int date_paiment;
String email;
int Ident_RV;
String Notes;
public paiment(int cINP, int cINM, int date_paiment, String email, int ident_RV, String notes) {
	CINP = cINP;
	CINM = cINM;
	this.date_paiment = date_paiment;
	this.email = email;
	Ident_RV = ident_RV;
	Notes = notes;
}
public paiment() {
	CINP = 0;
	CINM = 0;
	this.date_paiment = 0;
	this.email = "NULL";
	Ident_RV = 0;
	Notes = "NULL";
}
public int getCINP() {
	return CINP;
}
public void setCINP(int cINP) {
	CINP = cINP;
}
public int getCINM() {
	return CINM;
}
public void setCINM(int cINM) {
	CINM = cINM;
}
public int getDate_paiment() {
	return date_paiment;
}
public void setDate_paiment(int date_paiment) {
	this.date_paiment = date_paiment;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getIdent_RV() {
	return Ident_RV;
}
public void setIdent_RV(int ident_RV) {
	Ident_RV = ident_RV;
}
public String getNotes() {
	return Notes;
}
public void setNotes(String notes) {
	Notes = notes;
}

}

