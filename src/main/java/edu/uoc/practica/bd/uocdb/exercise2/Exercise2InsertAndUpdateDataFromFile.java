package edu.uoc.practica.bd.uocdb.exercise2;

import edu.uoc.practica.bd.util.DBAccessor;
import edu.uoc.practica.bd.util.FileUtilities;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
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

    //Reading block of the file containing the data located in the resources folder
    try {
        //Reading the file using the FileUtilities method readFileFromClasspath
      fileContents = fileUtilities.readFileFromClasspath("exercise2.data");
    } catch (FileNotFoundException e) { //If the file is not found or does not exist
      System.err.println("ERROR: File not found");
      e.printStackTrace();
    } catch (IOException e) { //If there is an I/O error
      System.err.println("ERROR: I/O error");
      e.printStackTrace();
    }

		if (fileContents == null) { //If the file is empty, it exits the method
			return;
		}

    // Block where the connection to the exercise database is initialized.
    // It is saved in the conn instance of Connection
    DBAccessor dbaccessor = new DBAccessor();
    dbaccessor.init();
    Connection conn = dbaccessor.getConnection();

	if (conn == null) {  //If the connection is null, it exits the method
		return;
	}

    // Start transaction
    // Set autocommit to false
    try {
      conn.setAutoCommit(false);
    } catch (SQLException e) { //If there is an error setting autocommit to false
      System.err.println("ERROR: Could not set autocommit to false");
      e.printStackTrace();
    }

    // TODO Prepare everything before updating or inserting
    // Prepared Statements and SQL sentences are initialized
    PreparedStatement selectZoneStatement = null;
    PreparedStatement insertZoneStatement = null;
    PreparedStatement updateWineryStatement = null;
    PreparedStatement insertWineryStatement = null;
    PreparedStatement insertWineStatement = null;
    ResultSet rs = null; //ResultSet to store the result of the query



    try {

        // SQL sentences: SQL statements associated with each of the prepared statements
        String selectZoneSQL = "SELECT zone_id FROM ZONE WHERE zone_id = ?";
        String insertZoneSQL = "INSERT INTO zone (zone_id, zone_name, capital_town, climate, region) VALUES (?, ?, ?, ?, ?)";
        String updateWinerySQL = "UPDATE winery SET winery_phone = ?, sales_representative = ? WHERE winery_id = ?";
        String insertWinerySQL = "INSERT INTO winery (winery_id, winery_name, town, established_year, winery_phone, sales_representative) VALUES (?, ?, ?, ?, ?, ?)";
        String insertWineSQL = "INSERT INTO wine (wine_name, vintage, alcohol_content, category, color, winery_id, zone_id, price, stock) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";

        //Prepared Statements inicialization
        //The prepared statements are initialized with the SQL sentences
        //The prepared statements are initialized with the connection conn
        selectZoneStatement = conn.prepareStatement(selectZoneSQL);
        insertZoneStatement = conn.prepareStatement(insertZoneSQL);
        updateWineryStatement = conn.prepareStatement(updateWinerySQL);
        insertWineryStatement = conn.prepareStatement(insertWinerySQL);
        //The prepared statement instance is configured to return the generated key wine_id
        insertWineStatement = conn.prepareStatement(insertWineSQL, Statement.RETURN_GENERATED_KEYS);



      // The data is inserted or updated in the database
      // as appropriate.
    	for(List<String> row : fileContents) {

            //Update or insert winery
            updateWineryStatement.clearParameters();
            setPSUpdateWinery(updateWineryStatement, row);
            int updatedRows = updateWineryStatement.executeUpdate();
            if (updatedRows == 0) {
                System.out.println("Winery not found, inserting winery");
                insertWineryStatement.clearParameters();
                setPSInsertWinery(insertWineryStatement, row);
                insertWineryStatement.executeUpdate();
            } else {
                System.out.println("Winery updated");
            }

            //If zone does not exists, insert zone
            selectZoneStatement.clearParameters();
            setPSSelectZone(selectZoneStatement, row);
            rs = selectZoneStatement.executeQuery();
            if (!rs.next()) {
                System.out.println("Zone not found, inserting zone");
                insertZoneStatement.clearParameters();
                setPSInsertZone(insertZoneStatement, row);
                insertZoneStatement.executeUpdate();
            } else {
                System.out.println("Zone found");
            }

            //Insert wine

            insertWineStatement.clearParameters();
            setPSInsertWine(insertWineStatement, row);
            insertWineStatement.setInt(9,0);
            //Display via standard output the value of wine_id assigned by the database
            int insertRow = insertWineStatement.executeUpdate();
            if (insertRow > 0){
                try (ResultSet rsWine = insertWineStatement.getGeneratedKeys()) {
                    if (rsWine.next()) {
                        System.out.println("Wine inserted with id: " + rsWine.getInt(1));
                    }
                }
            } else {
                System.out.println("Wine not inserted");
            }


        }
      // Validate transaction

        conn.commit();
    }

    catch (SQLException e) {
      System.err.println("ERROR: Could not update or insert data (ZONE, WINERY, WINE)");
      System.err.println(e.getMessage());

      try {
          System.err.println("Rolling back transaction");
          conn.rollback();
      } catch (SQLException e1) { //If there is an error rolling back the transaction
        //Parameters causing the error are printed
        System.err.println("ERROR: Could not rollback transaction");
        System.out.println("Message: " + e1.getMessage());
        System.out.println("SQLState: " + e1.getSQLState());
        System.out.println("ErrorCode: " + e1.getErrorCode());

      }
    }
    // Close resources and check exceptions
    // Close the prepared statements, the result set, the connection and set autocommit to true
    // If there is an error closing the resources, the error is printed
    finally {

            if (selectZoneStatement != null) {
                try {
                    selectZoneStatement.close();
                } catch (SQLException e) {
                    System.err.println("ERROR: Could not close selectZoneStatement");
                    System.err.println(e.getMessage());
                }
            }
            if (insertZoneStatement != null) {
                try {
                    insertZoneStatement.close();
                } catch (SQLException e) {
                    System.err.println("ERROR: Could not close insertZoneStatement");
                    System.err.println(e.getMessage());
                }
            }
            if (updateWineryStatement != null) {
                try {
                    updateWineryStatement.close();
                } catch (SQLException e) {
                    System.err.println("ERROR: Could not close updateWineryStatement");
                    System.err.println(e.getMessage());
                }
            }
            if (insertWineryStatement != null) {
                try {
                    insertWineryStatement.close();
                } catch (SQLException e) {
                    System.err.println("ERROR: Could not close insertWineryStatement");
                    System.err.println(e.getMessage());
                }
            }
            if (insertWineStatement != null) {
                try {
                    insertWineStatement.close();
                } catch (SQLException e) {
                    System.err.println("ERROR: Could not close insertWineStatement");
                    System.err.println(e.getMessage());
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    System.err.println("ERROR: Could not close ResultSet");
                    System.err.println(e.getMessage());
                }
            }
            try {
                conn.setAutoCommit(true);
            } catch (SQLException e) {
                System.err.println("ERROR: Could not set autocommit to true");
                System.err.println(e.getMessage());
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.err.println("ERROR: Could not close connection");
                    System.err.println(e.getMessage());
                }
            }
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
