<%@include file="/WEB-INF/architecture/header.jsp" %>
<table>
		<tr>
			<th>C�digo</th>
			<th>Nome</th>
			<th>Tipo do Servi�o</th>
		</tr>

		<c:forEach items="${todosServicos}" var="servicos">
			<tr>
				<td>${servicos.id}</td>
				<td>${servicos.name}</td>
				<td>${servicos.tipoServico}</td>
			</tr>
		</c:forEach>
	</table>


<%@include file="/WEB-INF/architecture/footer.jsp" %>