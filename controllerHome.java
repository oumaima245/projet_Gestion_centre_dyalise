package application;
import java.io.IOException;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;

public class controllerHome {
	private BorderPane borderpane;
	@FXML
    void click_Patient(MouseEvent event) {
		 try {
			 FXMLLoader objet = new FXMLLoader();
			 Pane view =objet.getPage("PatientPAGE");
			 borderpane.setCenter(view);
			 
		} catch (IOException e) {
			e.printStackTrace();
		}

    }

    @FXML
    void click_RV(MouseEvent event) {
    	try {
			 FXMLLoader objet = new FXMLLoader();
			 Pane view =objet.getPage("rvwout1");
			 borderpane.setCenter(view);
			 
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

    @FXML
    void click_medcin(MouseEvent event) {
    	try {
			 FXMLLoader objet = new FXMLLoader();
			 Pane view =objet.getPage("doctorpage");
			 borderpane.setCenter(view);
			 
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

    @FXML
    void click_paiement(MouseEvent event) {
    	try {
			 FXMLLoader objet = new FXMLLoader();
			 Pane view =objet.getPage("PAIEMENT1");
			 borderpane.setCenter(view);
			 
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

}
