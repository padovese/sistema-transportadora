<%@include file="/WEB-INF/architecture/header.jsp" %>

Consulta de peças.

<table>
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>CPF</th>
			<th>Data de Nascimento</th>
			<th>Data de Admissão</th>
		</tr>

		<c:forEach items="${todosFuncionarios}" var="funcionarios">
			<tr>
				<td>${funcionarios.id}</td>
				<td>${funcionarios.nome}</td>
				<td>${funcionarios.cpf}</td>
				<td>${funcionarios.dataDeNascimento}</td>
				<td>${funcionarios.dataDeAdmissao}</td>
				<td><a href="/mecanica-app/funcionarios/apaga?id=${funcionarios.id }">deletar</a></td>
			</tr>
		</c:forEach>
	</table>


<%@include file="/WEB-INF/architecture/footer.jsp" %>