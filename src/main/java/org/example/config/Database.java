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

    public int executeUpdate(Query query) {
        if (query.type() != QueryType.UPDATE) {
            return 0;
        }

        try (Statement statement = connection.createStatement()) {
            return statement.executeUpdate(query.sql());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public <T> List<T> executeSelect(Query query, ResultSetMapper<List<T>> mapper) {
        if (query.type() != QueryType.SELECT) {
            return null;
        }

        try (Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery(query.sql());
            List<T> result = mapper.apply(resultSet);
            resultSet.close();
            return result;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void closeConnection() {
        try {
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
