package co.edu.sena.proyecttwo.util;

import java.sql.*;

public class BasicConnectionSingleton {
    private static String url = "jdbc:mysql://localhost:3306/my_app?serverTimezone=America/Bogota";
    private static String user = "dylan";
    private static String pass = "JosueDiaz0612";
    private static Connection conn;

    public static Connection getInstance() throws SQLException {
        if (conn == null) {
            conn = DriverManager.getConnection(url, user, pass);
        }
        return conn;
    }
}// BasicConnectionSingleton


