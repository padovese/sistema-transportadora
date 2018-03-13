<%@include file="/WEB-INF/architecture/header.jsp"%>

<script>
function deuCerto(dadosDaResposta){
	 location.reload(); 
	//alert(dadosDaResposta);
}

function pagaAgora(id){
	$.get("/mecanica-app/pecas/apaga?id=" + id, deuCerto);
}
</script>

<table id="tbl">
	<tr>
		<th>Código</th>
		<th>Nome</th>
		<th>Descrição</th>
		<th>Cor</th>
		<th>Preço</th>
		<th>Deletar Peça</th>
	</tr>

	<c:forEach items="${todasPecas}" var="pecas">
		<tr>
			<td>${pecas.id}</td>
			<td>${pecas.nome}</td>
			<td>${pecas.descricao}</td>
			<td>${pecas.cor}</td>
			<td>${pecas.preco}</td>
			<td><a href="#" onClick="pagaAgora(${pecas.id })">Deletar</a></td>
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