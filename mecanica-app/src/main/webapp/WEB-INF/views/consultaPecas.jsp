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
			<th>Descrição</th>
			<th>Cor</th>
			<th>Preço</th>
		</tr>

		<c:forEach items="${todasPecas}" var="pecas">
			<tr>
				<td>${pecas.id}</td>
				<td>${pecas.nome}</td>
				<td>${pecas.descricao}</td>
				<td>${pecas.cor}</td>
				<td>${pecas.preco}</td>
				<td><a href="/mecanica-app/pecas/apaga?id=${pecas.id }">deletar</a></td>
			</tr>
		</c:forEach>
	</table>
	
<%@include file="/WEB-INF/architecture/footer.jsp" %>