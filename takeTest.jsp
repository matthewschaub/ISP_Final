<html xmlns = "http://www.w3.org/1999/xhtml">

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
    <p>
    <%@page import="java.sql.*"%>  
    <%
          String qs;
          //String testName = request.getParameter("TestNames");
          Statement stmt;
          Connection con;
          ResultSet rs; 
          String error;

          Class.forName("com.mysql.jdbc.Driver").newInstance();
          try {
            con = DriverManager.getConnection("jdbc:mysql://db1.cs.uakron.edu:3306/ISP_jms590","jms590","Seattle2");
            stmt = con.createStatement(); // SQL statement object

            qs="select * from QuizSample6";
            rs=stmt.executeQuery(qs);

            out.println("<form>");
            while(rs.next())
            {
              out.println(rs.getString("Question") + "<br>" + "<input type='radio' value='a' checked>"+ rs.getString("AnswerA")+ "<br><input type='radio' value='b'>"+ rs.getString("AnswerB")+ "<br><input type='radio' value='c'>" + rs.getString("AnswerC") + "<br><input type='radio' value='d'>" + rs.getString("AnswerD") + "<br>");
            }
            out.println("<input type='submit' value = 'submit'>");
            out.println("</form>");


          }
          catch (Exception e) {
          out.println(e.toString());  // Error message to display
          }
    %>
  </body>
</html>