package edu.uoc.practica.bd.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;




public class DBAccessor {

  private String dbname;
  private String host;
  private String port;
  private String user;
  private String passwd;
  private String schema;

  /**
   * Initializes the class loading the database properties file and assigns values to the instance
   * variables.
   *
   * @throws RuntimeException Properties file could not be found.
   */
  public void init() {
    Properties prop = new Properties();
    InputStream propStream = this.getClass().getClassLoader().getResourceAsStream("db.properties");

    try {
      prop.load(propStream);
      this.host = prop.getProperty("host");
      this.port = prop.getProperty("port");
      this.dbname = prop.getProperty("dbname");
      this.user = prop.getProperty("user");
      this.passwd = prop.getProperty("passwd");
      this.schema = prop.getProperty("schema");
    } catch (IOException e) {
      String message = "ERROR: db.properties file could not be found";
      System.err.println(message);
      throw new RuntimeException(message, e);
    }
  }

  /**
   * Obtains a {@link Connection} to the database, based on the values of the
   * <code>db.properties</code> file.
   *
   * @return DB connection or null if a problem occurred when trying to connect.
   */
  public Connection getConnection() {
    Connection conn = null;

    // TODO Implement the DB connection
    try {
      //Registrar el driver con class.forName
      Class.forName("org.postgresql.Driver");
      //Establecer la conexión
      conn = DriverManager.getConnection("jdbc:postgresql://" + host + ":" + port + "/" + dbname, user, passwd);

      // TODO Sets the search_path
      //Configurar el esquema y el search_path
      if (this.schema != null && !this.schema.isEmpty()) {
        try (Statement stmt = conn.createStatement()) {
          stmt.execute("SET search_path TO " + this.schema);
        }
      }
    } catch (ClassNotFoundException e) {
      String messageErr = "PostgreSQL JDBC Driver not found.";
      System.err.println(messageErr);
      e.printStackTrace(System.err);
      throw new RuntimeException(messageErr, e);
    } catch (SQLException e) {
      String messageErr = "Connection Failed!: could not connect to the database.";
        System.err.println(messageErr);
        e.printStackTrace(System.err);
    }

    //Return the instance of the connection
    return conn;

  }
}
