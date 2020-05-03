<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin</title>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<link rel="stylesheet" type="text/css" href="style.css">
<style>
* {
  box-sizing: border-box;
}
</style>
<style type="text/css">
    table {
	border-collapse: collapse;
	text-align: center;
    }
    td {
	border: 1px solid #000;
    }
    thead {
	background-color: #000;
	color: #fff;
	font-weight: bold;
    }
    thead td {
	padding: 0 .5em;
    }
    .odd {
	background-color: #E6E6E6;
    }
    .even {
	background-color: #fff;
    }
	
	.block {
  display: block;
  width: 100%;
  border: none;
  background-color: 	 #ff8080;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
}

.block:hover {
  background-color: #555;
  color: black;
}
</style>
</head>
<body>

  <header>
    <h1>
      ThapaCafe
    </h1>
    <nav>
      <ul>
      
          <li><a href="home.html" style="color: #F24638;">Logout</a></li>
      </ul>
    </nav>
  </header>

<section>
  
<article>
    <sql:setDataSource var="mydb" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/webpro" user="root" password="0102" />
    <sql:query dataSource="${mydb}" var="listUsers">select * from products;</sql:query>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>PRODUCTS AVAILABLE</h2></caption>
<thead>
	            <tr>
                <th>ID</th>
                <th>PRODUCT</th>
               <th>QUANTITY</th>
               <th>PRICE</th>
            </tr>
</thead>
<tbody>
            <c:forEach var="user" items="${listUsers.rows}" varStatus="i">
	    <c:choose>
		<c:when test="${(i.count) % 2 == 0}">
		    <tr class="even">
		</c:when>
		<c:otherwise>
		    <tr class="odd">
		    </c:otherwise>
		</c:choose>
		<td>${i.count}</td>

					
                    <td><c:out value="${user.product}" /></td>
                    <td><c:out value="${user.quantity}" /></td>
                    <td><c:out value="${user.cost}" /></td>
                    
				</tr>
				
            </c:forEach>
			</tbody>
        </table>
    </div>
       <a href="v.html" style="color: black">VIEW REGISTERED USERS</a>
  </article>

</section>
         
   
  <footer>
    <div class="footer"> &copy; 2018 Copyright:
        <a href=""> ThapaCafe.com</a>
      </div>
  </footer>
  

</body>
</html>