<%@include file="/WEB-INF/architecture/header.jsp" %>

Consulta de pe�as.

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