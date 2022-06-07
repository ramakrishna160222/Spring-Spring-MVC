 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
   
   <style type="text/css">	 
#students { 
 font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%; 
} 
#students td, #students th {
  border: 1px solid #ddd;
  padding: 8px;
}
#students tr:nth-child(even){background-color: #f2f2f2;}

#students tr:hover {background-color: #ddd;}

#students th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: Cornsilk;
  color: Blue;
}
#students td {
  text-align: center;
  font-family: Arial, Helvetica, sans-serif;
  
}
h1 { color: #d54d7b; font-family: "Great Vibes", cursive; font-size: 65px; line-height: 160px; font-weight: normal; margin-bottom: 0px; margin-top: 40px; text-align: center; text-shadow: 0 1px 1px #fff; }

</style> 

  
<h1>Student List</h1>  
<form action="search">
	<input type="text" name="searchid" placeholder="Enter StudentID To Search">
	<input type="submit" value="Search">
</form>
</br>
 
 
 <table border="2" width="70%" cellpadding="2" id="students">  
<tr><th>Id</th><th>Name</th><th>Address</th><th>Fee</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="student" items="${list}">   
 <tr>
   <td>${student.sid}</td>
   <td>${student.sname} </td>
   <td>${student.address}</td>
   <td>${student.fee} </td>
   <td><a href="editstudent/${student.sid}">Edit</a>  </td>
   <td><a href="deletestudent/${student.sid}">Delete</a></td>
    </tr>
   </c:forEach>  
    </table>
   <br/>  
   
   <a href="studentform">Add New Student</a>   <br><br>
   <a href="home">Home</a>