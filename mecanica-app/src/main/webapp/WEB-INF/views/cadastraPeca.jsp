<%@include file="/WEB-INF/architecture/header.jsp" %>
<form action="cadastraPeca" method="post">
	<label>Nome</label><br>
	<input type="text" name="nome"><form:errors path="peca.nome" /><br>
	<label>Descri��o</label><br>
	<input type="text" name="descricao"><br>
	<label>Cor</label><br>
	<input type="text" name="cor"><br>
	<label>Pre�o</label><br>
	<input type="text" name="preco"><form:errors path="peca.preco" /><br>
	<input type="submit" value="Cadastra">
	
</form>
<%@include file="/WEB-INF/architecture/footer.jsp" %>