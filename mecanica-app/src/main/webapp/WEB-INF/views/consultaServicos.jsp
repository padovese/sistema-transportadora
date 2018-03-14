<%@include file="/WEB-INF/architecture/header.jsp" %>
<table>
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Tipo do Serviço</th>
		</tr>

		<c:forEach items="${todosServicos}" var="servicos">
			<tr>
				<td>${servicos.id}</td>
				<td>${servicos.name}</td>
				<td>${servicos.tipoServico}</td>
			</tr>
		</c:forEach>
	</table>
	
	<br>
		<div id="preBotao">
			<div id="novoPeca">
				<a id="linkNovo" href="<%=request.getContextPath()%>/servicos/cadastra">Novo</a>
			</div>
		</div>	
	<br>
	<br>


<%@include file="/WEB-INF/architecture/footer.jsp" %>