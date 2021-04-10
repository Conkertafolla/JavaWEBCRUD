
package config;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Gerardo Tafolla
 */
public class Connection {
    public DriverManagerDataSource Connect(){
     DriverManagerDataSource dataSource = new DriverManagerDataSource();
     dataSource.setDriverClassName("com.mysql.jdbc.Driver");
     dataSource.setUrl("jdbc:mysql://localhost:3306/users_db");
     dataSource.setUsername("root");
     dataSource.setPassword("root");
     return dataSource;        
    }
    
}
