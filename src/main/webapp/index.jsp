<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>JSP Örnek Database Bağlantısı</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">

		<div class="alert alert-success">
			<strong>@alierqul 2021</strong>
		</div>

		<div class="alert alert-warning">
			<strong> <% out.println("Java JSP Eğitimleri"); %>
			</strong>
		</div>	

	</div>

	<table>
		<%@ page import="java.util.*"%>
		<%@ page import="java.sql.*"%>

		<%

			Connection connection = null;
			Statement statement = null;
			ResultSet result = null;
			
			String driver = "org.postgresql.Driver";
			String url = "jdbc:postgresql://localhost:5432/aliergul_movie_db";
			String userName= "postgres";
			String pass = "root";
			
			try {
				
				Class.forName(driver);
				connection = DriverManager.getConnection(url, userName, pass);
				
			}catch (ClassNotFoundException | SQLException  e){
				out.println("hata 1: "+e.getMessage());
				e.printStackTrace();
			}
			
			String sqlSorgusu = "SELECT * FROM movies";
			
			
			try {
				if(connection!=null){
					statement = connection.createStatement();
					result = statement.executeQuery(sqlSorgusu);
			
					
					while (result.next()){
						
					
					%>
						<tr>
						<td>
							<div class="alert alert-warning">
								<strong> <%= result.getInt("movieid")%>
								</strong>
							</div>
						</td>
						<td>
							<div class="alert alert-danger">
								<strong> <%= result.getString("title")%>
								</strong>
							</div>
						</td>
						<td>
							<div class="alert alert-success">
								<strong> <%= result.getString("genres")%>
								</strong>
							</div>
						</td>
			
						</tr>
					
					<% 	
			
					}
				}
				
			}catch (Exception e){
				out.println("hata 2: "+e.getMessage());
				e.printStackTrace();
			}finally{
				
				if(result!=null) {
					result.close();
				}
				
				if(statement!=null) {
					statement.close();
				}
				
				if(connection!=null){ 
					connection.close();
				}
				
			}
			
			%>
	</table>
</body>
</html>