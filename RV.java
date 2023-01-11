package classdoctor;

public class RV {
int date_prix;
int CINP;
int num_rv;
int CINM;
int Num_seace;
String problem;
public RV(int date_prix, int cINP, int num_rv, int cINM, int num_seace, String problem) {
	this.date_prix = date_prix;
	CINP = cINP;
	this.num_rv = num_rv;
	CINM = cINM;
	Num_seace = num_seace;
	this.problem = problem;
}
public RV() {
	this.date_prix = 0;
	CINP = 0;
	this.num_rv = 0;
	CINM = 0;
	Num_seace = 0;
	this.problem = "NULL";
}
public int getDate_prix() {
	return date_prix;
}
public void setDate_prix(int date_prix) {
	this.date_prix = date_prix;
}
public int getCINP() {
	return CINP;
}
public void setCINP(int cINP) {
	CINP = cINP;
}
public int getNum_rv() {
	return num_rv;
}
public void setNum_rv(int num_rv) {
	this.num_rv = num_rv;
}
public int getCINM() {
	return CINM;
}
public void setCINM(int cINM) {
	CINM = cINM;
}
public int getNum_seace() {
	return Num_seace;
}
public void setNum_seace(int num_seace) {
	Num_seace = num_seace;
}
public String getProblem() {
	return problem;
}
public void setProblem(String problem) {
	this.problem = problem;
}

}

