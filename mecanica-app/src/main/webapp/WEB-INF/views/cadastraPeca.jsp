<%@include file="/WEB-INF/architecture/header.jsp" %>

<form action="cadastraPeca" method="post"><br>
	<label>Nome</label><br>
	<input type="text" name="nome"><form:errors path="peca.nome" /><br><br>
	<label>Descrição</label><br>
	<input type="text" name="descricao"><br><br>
	<label>Cor</label><br>
	<input type="text" name="cor"><br><br>
	<label>Preço</label><br>
	<input type="text" name="preco"><form:errors path="peca.preco" /><br><br><br>
	<input type="submit" value="Cadastra"><br><br>
</form>
<%@include file="/WEB-INF/architecture/footer.jsp" %>