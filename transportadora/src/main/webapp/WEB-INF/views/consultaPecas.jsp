<%@include file="/WEB-INF/architecture/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>Senna auto mecânica</title>
</head>
<body>
	<p><b>Aqui abaixo estão listados todos as peças que trabalhamos:</b></p>		
</body>
</html>
<table>
		<tr>
			<th>Código</th>
			<th>Nome</th>
		</tr>

		<c:forEach items="${todasPecas}" var="pecas">
			<tr>
				<td>${pecas.id}</td>
				<td>${pecas.name}</td>
			</tr>
		</c:forEach>
	</table>
	
<%@include file="/WEB-INF/architecture/footer.jsp" %>