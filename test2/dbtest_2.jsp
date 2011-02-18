<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*, java.util.*"%>
<%@ page import="java.net.*"%>
<%@ page import="java.sql.*, javax.naming.*, javax.sql.*"%>
<%
 Context initCtx = null;
 DataSource ds = null;
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 String query = "";
 try {
	Class.forName("oracle.jdbc.OracleDriver");
        //String url = "jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=172.16.2.3)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=172.16.2.4)(PORT=1521))(FAILOVER=on)(LOAD_BALANCE=on))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ZCGS)))";
        //String url = "jdbc:oracle:thin:@172.16.2.3:1521:ZCGS1";
        //String url = "jdbc:oracle:thin:@172.16.2.4:1521:ZCGS2";
        String url = "jdbc:oracle:thin:@(DESCRIPTION=(LOAD_BALANCE=off)(FAILOVER=on)(ADDRESS_LIST=(ADDRESS=(PROTOCOL=tcp)(HOST=172.16.2.3)(PORT=1521)))(ADDRESS_LIST=(ADDRESS=(PROTOCOL=tcp)(HOST=172.16.2.4)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=ZCGS)))";
	String user = "ZCGCHA";
	String pass = "zcgcha";
	conn = DriverManager.getConnection(url, user, pass);
	out.println(conn);
  } catch ( SQLException es ) {
	out.println(es.getMessage());
    //System.out.println(strJNDI + " Error Datasource Connection error ");
  }    
  finally
  {
	try { if (conn != null) conn.close(); } catch (Exception e) {} 
  }

%>
