<%@include file="/WEB-INF/architecture/header.jsp" %>
<form action="cadastraPeca" method="post">
	<label>Nome</label><br>
	<input type="text" name="nome"><br>
	<label>Descri��o</label><br>
	<input type="text" name="descricao"><br>
	<label>Cor</label><br>
	<input type="text" name="cor"><br>
	<label>Pre�o</label><br>
	<input type="text" name="preco"><br>
	<input type="submit" value="Cadastra">
</form>
<%@include file="/WEB-INF/architecture/footer.jsp" %>