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
   String strJNDI = "jdbc/zcgchat";
 try {
   initCtx = new InitialContext(); //java:comp/env/jdbc/oracleDS
   ds =  (DataSource)initCtx.lookup(strJNDI); 
   conn = ds.getConnection();    
   out.println("conn="+conn);
  } catch ( SQLException es ) {
    System.out.println(strJNDI + " Error Datasource Connection error ");
  }    
  finally
  {
	try { if (conn != null) conn.close(); } catch (Exception e) {} 
  }

%>
