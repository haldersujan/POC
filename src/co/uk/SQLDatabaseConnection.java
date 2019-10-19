package co.uk;

import java.sql.Connection;
import java.sql.DriverManager;
import com.microsoft.sqlserver.jdbc.SQLServerDriver;

public class SQLDatabaseConnection {
    // Connect to your database.
    // Replace server name, username, and password with your credentials
	public Connection getConnection () {

        try {
        String connectionUrl =
        		"jdbc:sqlserver://landg.database.windows.net:1433;"
        		+ "database=Insurance;"
        		+ "user=landg@landg;"
        		+ "password=Admin@123a;"
        		+ "encrypt=true;"
        		+ "trustServerCertificate=false;"
        		+ "hostNameInCertificate=*.database.windows.net;"
        		+ "loginTimeout=30;";

        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(connectionUrl); 
        }
        catch (Exception e) {
        	System.out.println("Error in SQL connection !");
            e.printStackTrace();
        }
		return null;
    }
}