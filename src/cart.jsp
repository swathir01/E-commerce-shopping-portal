<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Users Records</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<link rel="stylesheet" type="text/css" href="style.css">
</head>d
		<h1>
			ThapaCafe
		</h1>
		<nav>
			<ul>
				<li><a href="all-products.html">Home</a></li>
					    <li><a href="home.html" style="color: #F24638;">Logout</a></li>
						<li><a href="cart.jsp">cart</a></li>
			</ul>
		</nav>
	</header> 
    <sql:setDataSource var="mydb" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/webpro" user="root" password="0102" />
    <sql:query dataSource="${mydb}" var="listUsers">select * from orders where uname="swa";</sql:query>
    <sql:query dataSource="${mydb}" var="list">select * from totalcost where uname="swa";</sql:query>
    <div align="center">
        <table border="1" cellpadding="5" style="width:50%;" >
            <caption><h2>CART DETAILS</h2></caption>
            <tr>
                
                <th>PRODUCT</th>
                <th>PRICE</th>
                
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
           
                <tr>
                    <td><c:out value="${user.order}" /></td>
                    <td><c:out value="${user.price}" /></td>
                    
                </tr>
             
            </c:forEach>
             <c:forEach var="user1" items="${list.rows}">
        <tr>
        	<td style="border:none; text-align: right;">TOTAL</td>
            <td><c:out value="${user1.total}"></c:out></td>
        </tr>
        </c:forEach>
        </table>
   

</body>
</html>