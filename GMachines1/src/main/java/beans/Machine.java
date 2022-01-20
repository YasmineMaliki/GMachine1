package beans;

import java.util.Date;

public class Machine {

    private int id;
    private String reference;
    private Date dateAchat;
    private double prix;
    private Marque marque;

    public Machine(int id, String reference, Date dateAchat, double prix,Marque Marque) {
        super();
        this.id = id;
        this.reference = reference;
        this.dateAchat = dateAchat;
        this.prix = prix;
        this.marque = Marque;
    }

    public Machine(String reference, Date dateAchat, double prix,Marque Marque) {
        super();
        this.reference = reference;
        this.dateAchat = dateAchat;
        this.prix = prix;
        this.marque = Marque;
    }

    public Marque getMarque() {
		return marque;
	}

	public void setMarque(Marque marque) {
		this.marque = marque;
	}

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

    public Date getDateAchat() {
        return dateAchat;
    }

    public void setDateAchat(Date dateAchat) {
        this.dateAchat = dateAchat;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

	@Override
	public String toString() {
		return "Machine [id=" + id + ", reference=" + reference + ", dateAchat=" + dateAchat + ", prix=" + prix
				+ ", Marque=" + marque + "]";
	}



}
