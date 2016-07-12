<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista dei contatti</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty listaContatti}">
			<h4>Non ci sono contatti da mostrare</h4>
		</c:when>
		<c:otherwise>
			<div align="center">
				<h1>Lista dei contatti</h1>
				<h3>
					<a href="nuovoContatto">Nuovo contatto</a>
				</h3>
				<table border="1">
					<th>id</th>
					<th>Nome</th>
					<th>Cognome</th>
					<th>Email</th>
					<th>Data di nascita</th>
					<th>Action</th>

					<c:forEach var="contatto" items="${listaContatti}">
						<tr>
							<td>${contatto.id}</td>
							<td>${contatto.nome}</td>
							<td>${contatto.cognome}</td>
							<td>${contatto.email}</td>
							<td>${contatto.dataDiNascita}</td>
							<td><a href="modificaContatto?id=${contatto.id}">Modifica</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="eliminaContatto?id=${contatto.id}">Elimina</a></td>

						</tr>
					</c:forEach>
				</table>
				<h4>
					<a href="ordinaContatti">Ordina i contatti</a>
				</h4>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>