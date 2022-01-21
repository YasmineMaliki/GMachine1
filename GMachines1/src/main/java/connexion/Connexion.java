package connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {

    private static String login = "gjpdiellrhotuu";
    private static String password = "eda00f47f93dc0f1a5d656c52d22c360449cd5cddfd22925df27e74475f47dcd";
    private static String url = "jdbc:postgres://ec2-3-222-49-168.compute-1.amazonaws.com/d3folj5e36r3p5?serverTimezone=UTC";
    private Connection connection = null;
    private static Connexion instane;

    private Connexion() {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, login, password);
        } catch (ClassNotFoundException e) {
            System.out.println("Driver introvable");
        } catch (SQLException e) {
            System.out.println("Connexion errror");
            System.out.println(e.getMessage());
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public static Connexion getInstane() {
        if (instane == null) {
            instane = new Connexion();
        }
        return instane;
    }

}
