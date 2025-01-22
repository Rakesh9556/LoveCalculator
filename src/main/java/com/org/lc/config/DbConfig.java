package com.org.lc.config;

import org.springframework.beans.factory.annotation.Value;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConfig {

    @Value("${mysql.driver}")
    private static String driver;

    @Value("${mysql.url}")
    private static String url;

    @Value("${mysql.username}")
    private static String username;

    @Value("${mysql.password}")
    private static String password;

    public static Connection getConnection() throws SQLException, ClassNotFoundException {

        Connection conn;

        try {

            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        }
        catch (ClassNotFoundException e) {
            throw new ClassNotFoundException(e.getMessage());
        }
        catch (SQLException e) {
            throw new SQLException(e.getMessage());
        }
        return conn;
    }

}
