package iuh.fit.se.bai02.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    // MSSQL
// private static final String JDBC_URL ="jdbc:sqlserver://localhost:1433;databaseName=UploadFileServlet DB;encrypt=false;";
// private static final String JDBC_USER = "sa";
// private static final String JDBC_PASSWORD ="sapassword";
    // MariaDB
    private static final String JDBC_URL =
            "jdbc:mariadb://localhost:3306/registration";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "sapassword";

    static {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws
            SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USER,
                JDBC_PASSWORD);
    }
}