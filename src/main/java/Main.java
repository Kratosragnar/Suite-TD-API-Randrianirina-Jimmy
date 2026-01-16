import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException {

        DataRetriever dataRetriever = new DataRetriever();
        Dish dish = null;
        try {
            dish = dataRetriever.findDishById(4

            );
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        System.out.println(dish);
    }
}
