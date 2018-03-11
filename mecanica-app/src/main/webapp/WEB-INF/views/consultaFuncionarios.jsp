<%@include file="/WEB-INF/architecture/header.jsp" %>

Consulta de pe�as.

<table>
		<tr>
			<th>C�digo</th>
			<th>Nome</th>
			<th>CPF</th>
			<th>Data de Nascimento</th>
			<th>Data de Admiss�o</th>
		</tr>

		<c:forEach items="${todosFuncionarios}" var="funcionarios">
			<tr>
				<td>${funcionarios.id}</td>
				<td>${funcionarios.name}</td>
				<td>${funcionarios.cpf}</td>
				<td>${funcionarios.dataDeNascimento}</td>
				<td>${funcionarios.dataDeAdmissao}</td>
			</tr>
		</c:forEach>
	</table>


<%@include file="/WEB-INF/architecture/footer.jsp" %>