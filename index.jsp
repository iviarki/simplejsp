<%@ page import="java.net.InetAddress, java.lang.*, javax.naming.Context, javax.naming.InitialContext" %>
<%
  Object object = ((Context)(new InitialContext().lookup("java:comp/env"))).lookup("TEST_ENV");
  out.println("{\"environment\" : \"" + object.toString().replace("\"","\\\"") + "\"}");
%>
