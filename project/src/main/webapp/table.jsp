<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/stock_table.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<style><%@ include file="css/table.css"%></style>
</head>
<body>
<div class="stock_list">
<br>
<center> <h1>Stock List</h1></center>
<table>
<thead>
<tr>
     <th>Sr.No</th>
     <th>Stock Name</th>
     <th>Quantity</th>
     <th>Price</th>
     <th>Last Date</th>
     <th>Action</th>
     </tr>
     </thead>
     <tbody>
     <tr>
         <td>1</td>
         <td>Google</td>
         <td>10</td>
         <td>70.60</td>
         <td>2022-04-27</td>
         <td><input type="submit" value="Buy Now"><input type="Button"></td>
         
         </tr>
     </tbody>

     
</table>
</div>
</body>
</html>