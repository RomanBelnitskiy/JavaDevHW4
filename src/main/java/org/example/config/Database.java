package org.example.config;

import org.example.utils.PropertyReader;
import org.example.utils.sql.ResultSetMapper;
import org.example.utils.sql.Query;
import org.example.utils.sql.QueryType;

import java.sql.*;
import java.util.List;

public class Database {
    private static final Database INSTANCE = new Database();

    private Connection connection;

    private Database() {
        try {
            String url = PropertyReader.getConnectionUrlForH2();
            connection = DriverManager.getConnection(url);
        } catch (SQLException ex) {
            throw new RuntimeException("Can not create connection");
        }
    }

    public static Database getInstance() {
        return INSTANCE;
    }

    public static Connection getConnection() {
        return INSTANCE.connection;
    }

    public void closeConnection() {
        try {
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
