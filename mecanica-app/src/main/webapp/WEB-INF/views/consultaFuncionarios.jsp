<%@include file="/WEB-INF/architecture/header.jsp" %>
<table>
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>CPF</th>
			<th>Data de Nascimento</th>
			<th>Data de Admissão</th>
			<th>Deletar Funcionario</th>
		</tr>

		<c:forEach items="${todosFuncionarios}" var="funcionarios">
			<tr>
				<td>${funcionarios.id}</td>
				<td>${funcionarios.nome}</td>
				<td>${funcionarios.cpf}</td>
				<td>${funcionarios.dataDeNascimento}</td>
				<td>${funcionarios.dataDeAdmissao}</td>
				<td><a href="/mecanica-app/funcionarios/apaga?id=${funcionarios.id }">Deletar</a></td>
			</tr>
		</c:forEach>
	</table>
	
		<br>
			<div id="preBotao">
				<div id="novoPeca">
					<a id="linkNovo" href="<%=request.getContextPath()%>/funcionarios/cadastra">Novo</a>
				</div>
			</div>
		<br>
		<br>
<%@include file="/WEB-INF/architecture/footer.jsp" %>