<%@include file="/WEB-INF/architecture/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>Senna auto mec�nica</title>
</head>
<body>
	<p><b>Aqui abaixo est�o listados todos as pe�as que trabalhamos:</b></p>		
</body>
</html>
<table>
		<tr>
			<th>C�digo</th>
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