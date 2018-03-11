<%@include file="/WEB-INF/architecture/header.jsp"%>

<table>
	<tr>
		<th>C�digo</th>
		<th>Nome</th>
		<th>Descri��o</th>
		<th>Cor</th>
		<th>Pre�o</th>
		<th>Deletar Pe�a</th>
	</tr>

	<c:forEach items="${todasPecas}" var="pecas">
		<tr>
			<td>${pecas.id}</td>
			<td>${pecas.nome}</td>
			<td>${pecas.descricao}</td>
			<td>${pecas.cor}</td>
			<td>${pecas.preco}</td>
			<td><a href="/mecanica-app/pecas/apaga?id=${pecas.id }">Deletar</a></td>
		</tr>
	</c:forEach>
</table>

<br>
<div id="preBotao">
	<div id="novoPeca">
		<a id="linkNovo" href="<%=request.getContextPath()%>/pecas/cadastra">Novo</a>
	</div>
</div>

<br>
<br>
<%@include file="/WEB-INF/architecture/footer.jsp"%>