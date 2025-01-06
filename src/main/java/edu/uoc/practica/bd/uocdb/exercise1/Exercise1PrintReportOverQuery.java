package edu.uoc.practica.bd.uocdb.exercise1;

import edu.uoc.practica.bd.util.Column;
import edu.uoc.practica.bd.util.DBAccessor;
import edu.uoc.practica.bd.util.Report;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static edu.uoc.practica.bd.util.DBAccessor.logger;


public class Exercise1PrintReportOverQuery {

  public static void main(String[] args) {
    Exercise1PrintReportOverQuery app = new Exercise1PrintReportOverQuery();
    app.run();
  }


  private void run() {
    DBAccessor dbaccessor = new DBAccessor();
    dbaccessor.init();
    Connection conn = dbaccessor.getConnection();
    String myView = "best_selling_zones"; // View name
    if (conn != null) {
      Statement cstmt = null;
      ResultSet resultSet = null;

      try {
        // List of columns of Report instance (@Report.java)
        List<Column> columns = Arrays.asList(new Column("Zone", 12, "zone_name"),
            new Column("Capital", 12, "capital_town"),
            new Column("Climate", 15, "climate"),
            new Column("Region", 20, "region"),
            new Column("Last selling", 12, "last_selling"),
            new Column("Total", 5, "total_quantity"));

        Report report = new Report(); //Declare a new Report instance
        report.setColumns(columns); //Set the columns of the Report instance
        List<Object> list = new ArrayList<Object>(); //Declare a new List instance

        // Check if view exists
        try(ResultSet rs = conn.getMetaData().getTables(null, "ubd_20241", myView, null)) {
          if (!rs.next()) {
            logger.error("ERROR: The view " + myView + " does not exist");
            System.out.println("ERROR: The view " + myView + " does not exist");
            return;
          }
        }


        // TODO Execute SQL sentence
        // Create a Statement
        cstmt = conn.createStatement();
        // Execute the query and store it in a ResultSet (by default, it will be traversed in one direction only)
        resultSet = cstmt.executeQuery("SELECT zone_name,capital_town,climate,region,last_selling,total_quantity "
                + "FROM " + myView
                + " ORDER BY total_quantity DESC");
        
        // TODO Loop over results and get the main values
        String zone_name;
        String capital_town;
        String climate;
        String region;
        String last_selling;
        long total_quantity;

        while (resultSet.next()) {
          zone_name = resultSet.getString("zone_name");
          capital_town = resultSet.getString("capital_town");
          climate = resultSet.getString("climate");
          region = resultSet.getString("region");
          last_selling = resultSet.getString("last_selling");
          total_quantity = resultSet.getLong("total_quantity");

          list.add(new Exercise1Row(zone_name, capital_town, climate, region, last_selling, total_quantity));
        }
        // TODO End loop
       if (list.isEmpty()) {
          logger.error("ERROR: The view " + myView + " is empty");
          System.out.println("ERROR: The view " + myView + " is empty");
          return;
        }
        report.printReport(list);
      } catch(SQLClientInfoException e){
        String messageErr = "ERROR: SQLClientInfoException";
        logger.error(messageErr, e);
        System.err.println(messageErr);
        e.printStackTrace(System.err);
      } catch (SQLException e) {
        String messageErr = "ERROR: SQL Exception";
        logger.error(messageErr, e);
        System.err.println(messageErr);
        e.printStackTrace(System.err);
      }
      // TODO Close All resources
      finally {
        try {
          if (resultSet != null) {
            resultSet.close();
          }
          if (cstmt != null) {
            cstmt.close();
          }
          if (conn != null) {
            conn.close();
          }
        } catch (SQLException e) {
          String messageErr = "ERROR: Closing resources";
          logger.error(messageErr, e);
          System.err.println(messageErr);
          e.printStackTrace(System.err);
        }
      }
    }
  }
}
