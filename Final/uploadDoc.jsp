<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="style.css">
		<title> ISP Term Project</title>
	</head>
	<body>
		<div id="title"> <h1 align="center"> Upload </h1> </div>
		<div class="topnav" id="myTopnav">
			<a href="prj.html"> Home </a>
		  <a href="main.html">Create a Test</a>
		  <a href="takeTest.html">Take Test</a>
		  <a href="viewGrades.html">View Grades</a>
		  <a href="uploadDoc.html" class="active">Upload Documents</a>
		  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
		    <i class="fa fa-bars"></i>
		  </a>
		</div>
<%
	String s= request.getParameter("file");
	out.print("<b> The query is: </b> "+s+"<br />");
	
%>		
	</body>
