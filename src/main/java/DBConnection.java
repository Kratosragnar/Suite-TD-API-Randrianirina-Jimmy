import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    public Connection getConnection() throws SQLException {

        String url = "jdbc:postgresql://localhost:5432/mini_dish_db";
        String user = "mini_dish_db_manager";
        String password = "password123";

        return DriverManager.getConnection(url, user, password);
    }
    public void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

}
