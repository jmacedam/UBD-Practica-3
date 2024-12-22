package edu.uoc.practica.bd.uocdb.exercise2;

import edu.uoc.practica.bd.util.DBAccessor;
import edu.uoc.practica.bd.util.FileUtilities;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;

public class Exercise2InsertAndUpdateDataFromFile {

  private FileUtilities fileUtilities;

  public Exercise2InsertAndUpdateDataFromFile() {
    super();
    fileUtilities = new FileUtilities();
  }

  public static void main(String[] args) {
    Exercise2InsertAndUpdateDataFromFile app = new Exercise2InsertAndUpdateDataFromFile();
    app.run();
  }

  private void run() {
    List<List<String>> fileContents = null;

    try {
      fileContents = fileUtilities.readFileFromClasspath("exercise2.data");
    } catch (FileNotFoundException e) {
      System.err.println("ERROR: File not found");
      e.printStackTrace();
    } catch (IOException e) {
      System.err.println("ERROR: I/O error");
      e.printStackTrace();
    }

		if (fileContents == null) {
			return;
		}

    DBAccessor dbaccessor = new DBAccessor();
    dbaccessor.init();
    Connection conn = dbaccessor.getConnection();

	if (conn == null) {
		return;
	}


	// TODO Prepare everything before updating or inserting

    try {    	
      // TODO Update or insert the wine, winery and zone from every row in file
    	
      // TODO Validate transaction
    }
    // TODO Close resources and check exceptions
    finally {
      }
  }

  
  
  private void setPSUpdateWinery(PreparedStatement updateStatement, List<String> row)
      throws SQLException {
    String[] rowArray = (String[]) row.toArray(new String[0]);
    
    setValueOrNull(updateStatement, 1, getValueIfNotNull(rowArray, 10)); // winery_phone
    setValueOrNull(updateStatement, 2, getValueIfNotNull(rowArray, 11)); // sales_representative
    setValueOrNull(updateStatement, 3, 
    		getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 6))); // winery_id
  }

  private void setPSInsertWinery(PreparedStatement insertStatement, List<String> row)
      throws SQLException {
    String[] rowArray = (String[]) row.toArray(new String[0]);

    setValueOrNull(insertStatement, 1,
            getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 6)));  // winery_id
    setValueOrNull(insertStatement, 2, getValueIfNotNull(rowArray, 7)); // winery_name
    setValueOrNull(insertStatement, 3, getValueIfNotNull(rowArray, 8)); // town
    setValueOrNull(insertStatement, 4,
            getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 9)));  // established_year
    setValueOrNull(insertStatement, 5, getValueIfNotNull(rowArray, 10));  // winery_phone
    setValueOrNull(insertStatement, 6, getValueIfNotNull(rowArray, 11));  // sales_representative
  }
  
  private void setPSSelectZone(PreparedStatement updateStatement, List<String> row)
	      throws SQLException {
    String[] rowArray = (String[]) row.toArray(new String[0]);
    
    setValueOrNull(updateStatement, 1, 
    		getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 12))); // zone_id
  }

  private void setPSInsertZone(PreparedStatement insertStatement, List<String> row)
      throws SQLException {
    String[] rowArray = (String[]) row.toArray(new String[0]);

    setValueOrNull(insertStatement, 1,
            getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 12)));  // zone_id
    setValueOrNull(insertStatement, 2, getValueIfNotNull(rowArray, 13)); // zone_name
    setValueOrNull(insertStatement, 3, getValueIfNotNull(rowArray, 14)); // capital_town
    setValueOrNull(insertStatement, 4, getValueIfNotNull(rowArray, 15));  // climate
    setValueOrNull(insertStatement, 5, getValueIfNotNull(rowArray, 16));  // region
  }

  private void setPSInsertWine(PreparedStatement insertStatement, List<String> row)
      throws SQLException {
    String[] rowArray = (String[]) row.toArray(new String[0]);

    setValueOrNull(insertStatement, 1, getValueIfNotNull(rowArray, 0)); // wine_name
    setValueOrNull(insertStatement, 2,
            getDoubleFromStringOrNull(getValueIfNotNull(rowArray, 1)));  // vintage
    setValueOrNull(insertStatement, 3,
            getDoubleFromStringOrNull(getValueIfNotNull(rowArray, 2))); // alcohol_content
    setValueOrNull(insertStatement, 4, getValueIfNotNull(rowArray, 3));  // category
    setValueOrNull(insertStatement, 5, getValueIfNotNull(rowArray, 4));  // color
    setValueOrNull(insertStatement, 6,
            getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 6)));  // winery_id
    setValueOrNull(insertStatement, 7,
            getIntegerFromStringOrNull(getValueIfNotNull(rowArray, 12)));  // zone_id
    setValueOrNull(insertStatement, 8,
            getDoubleFromStringOrNull(getValueIfNotNull(rowArray, 5)));  // price
  }

  private Integer getIntegerFromStringOrNull(String integer) {
    return (integer != null) ? Integer.valueOf(integer) : null;
  }
  private Double getDoubleFromStringOrNull(String doubl) {
	return (doubl != null) ? Double.valueOf(doubl) : null;
  }
  private String getValueIfNotNull(String[] rowArray, int index) {
    return (index < rowArray.length && rowArray[index].length() > 0) ? rowArray[index] : null;
  }
  
  private void setValueOrNull(PreparedStatement preparedStatement, int parameterIndex,
	      Integer value) throws SQLException {
			if (value == null) {
				preparedStatement.setNull(parameterIndex, Types.INTEGER);
			} else {
				preparedStatement.setInt(parameterIndex, value);
			}
  }
  private void setValueOrNull(PreparedStatement preparedStatement, int parameterIndex,
	      Double value) throws SQLException {
			if (value == null) {
				preparedStatement.setNull(parameterIndex, Types.DOUBLE);
			} else {
				preparedStatement.setDouble(parameterIndex, Double.valueOf(value.doubleValue()));
			}
	  }

  private void setValueOrNull(PreparedStatement preparedStatement, int parameterIndex, String value)
      throws SQLException {
			if (value == null || value.length() == 0) {
				preparedStatement.setNull(parameterIndex, Types.VARCHAR);
			} else {
				preparedStatement.setString(parameterIndex, value);
			}
  	}
  
}
