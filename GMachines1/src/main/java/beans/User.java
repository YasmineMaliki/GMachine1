package beans;

public class User {
	private int id;
	private String nom;
	private String email;
	private String mdp;
	private String sexe;
	private boolean superAdmin;
	

	public boolean isSuperAdmin() {
		return superAdmin;
	}

	public void setSuperAdmin(boolean superAdmin) {
		this.superAdmin = superAdmin;
	}

	
	public User(int id, String nom, String email, String mdp, String sexe, boolean superAdmin) {
		super();
		this.id = id;
		this.nom = nom;
		this.email = email;
		this.mdp = mdp;
		this.sexe = sexe;
		this.superAdmin = superAdmin;
	}

	public User(String nom, String email, String mdp, String sexe, boolean superAdmin) {
		super();
		this.nom = nom;
		this.email = email;
		this.mdp = mdp;
		this.sexe = sexe;
		this.superAdmin = superAdmin;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nom=" + nom + ", email=" + email + ", mdp=" + mdp + ", sexe=" + sexe + "]";
	}
	
	
}
