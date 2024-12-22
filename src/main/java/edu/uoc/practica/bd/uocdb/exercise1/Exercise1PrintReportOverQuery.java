package edu.uoc.practica.bd.uocdb.exercise1;

import edu.uoc.practica.bd.util.Column;
import edu.uoc.practica.bd.util.DBAccessor;
import edu.uoc.practica.bd.util.Report;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Exercise1PrintReportOverQuery {

  public static void main(String[] args) {
    Exercise1PrintReportOverQuery app = new Exercise1PrintReportOverQuery();
    app.run();
  }

  private void run() {
    DBAccessor dbaccessor = new DBAccessor();
    dbaccessor.init();
    Connection conn = dbaccessor.getConnection();

    if (conn != null) {
      Statement cstmt = null;
      ResultSet resultSet = null;

      try {

        List<Column> columns = Arrays.asList(new Column("Zone", 12, "zone_name"),
            new Column("Capital", 12, "capital_town"),
            new Column("Climate", 15, "climate"),
            new Column("Region", 20, "region"),
            new Column("Last selling", 12, "last_selling"),
            new Column("Total", 5, "total_quantity"));

        Report report = new Report();
        report.setColumns(columns);
        List<Object> list = new ArrayList<Object>();

        // TODO Execute SQL sentence
        
        // TODO Loop over results and get the main values
        
        // TODO End loop
       
      } 
      // TODO Close All resources
      finally {
      }
    }
  }
}
