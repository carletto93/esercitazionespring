<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form Contatto</title>
</head>
<body>
	<div align="center">
		<h1>Form Contatto</h1>
		<form:form action="salvaContatto" method="post" modelAttribute="contatto">
		<table>
			<form:hidden path="id"/>
			<tr>
				<td>Nome:</td>
				<td><form:input path="nome" /></td>
			</tr>
			<tr>
				<td>Cognome:</td>
				<td><form:input path="cognome" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>Data di nascita:</td>
				<td><form:input path="dataDiNascita" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Salva"></td>
			</tr>
		</table>
		</form:form>
	</div>
</body>
</html>