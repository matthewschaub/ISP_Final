<%@page import="java.sql.*"%>

<%
		// Declare needed variables
		Connection con;
		DatabaseMetaData md;
		String qs;
		Statement stmt;
		ResultSet rs;
		out.println("\n <br>");

        // Other variables
        String id = request.getParameter("id");
				String name = request.getParameter("name");
        String type = request.getParameter("quiz");
        String miles = request.getParameter("grade");
        String action = request.getParameter("action");


		// Load DiverManager
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		//Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
		//out.println("Connecting ...\n <br>");

		try {

		// Open Database connection
		con = DriverManager.getConnection("jdbc:mysql://db1.cs.uakron.edu:3306/ISP_jms590","jms590","Seattle2");
		//out.println("Connection established.\n <br>");

		stmt = con.createStatement(); // SQL statement object

        // Display table
        if (action.equals("display")) {
            out.println("Displaying Grades");
        }

        // Insert data
        else if (action.equals("insert")) {
            qs="insert into Grades (Student_ID, Student_Name) values ("+id+", '" +name+ "')";
            stmt.executeUpdate(qs);
            out.println(qs);
        }

        // // Update Data
        // else if (action.equals("update")) {
        //     qs= "update Corvettes set Body_style = '" +type+ "', Miles = "+miles+ ", Years = "+year+", State = "+state+" where Vette_id = " + id;
        //     stmt.executeUpdate(qs);
        //     out.println(msg1 + qs + msg2);
        // }
				//
        // Delete data
        else if (action.equals("delete")) {
            qs= "delete from Grades where Student_ID = " + id;
            stmt.executeUpdate(qs);
            out.println(qs);
        }

		//Query the data
		qs="select * from Grades";
		rs=stmt.executeQuery(qs);


		//Show results
    out.println("<table style = 'font-weight: bold; border: 1px solid black; text-align: center'> <caption> <h2> Grades </h2> </caption>");
		out.println("<tr> <td style = 'width: 100px; border:1px solid black'> Student ID </td> <td style = 'width: 100px;border:1px solid black'> Student Name </td> </tr>");

		while(rs.next())
		{
        out.println("<tr>"+"<td style = 'border:1px solid black'>" +rs.getString("Student_ID")+"</td>" + "<td style = 'border:1px solid black'>" +rs.getString("Student_Name")+"</td></tr>");
		}
        out.println("</table>");
		rs.close();
		}

		catch (Exception e) {
		out.println(e.toString());  // Error message to display
		}

	%>

</body>
</html>
