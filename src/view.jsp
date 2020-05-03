<%@ page import="java.sql.*"%>  
  
<%  
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
out.print("Please enter name");  
}else{    
out.print(s);  
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webpro","root","0102");  
PreparedStatement ps=con.prepareStatement("select * from reg where name=?");  
ps.setString(1,s);  
ResultSet rs=ps.executeQuery();  
while(rs.next()){  
out.print("   "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5));  
}  
con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>  
