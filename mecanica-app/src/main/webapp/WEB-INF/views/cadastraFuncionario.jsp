<%@include file="/WEB-INF/architecture/header.jsp" %>
<form action="cadastraFuncionario" method="post">
	<label>Nome</label><br>
	<input type="text" name="nome"><br>
	<label>CPF</label><br>
	<input type="text" name="cpf"><br>
	<label>Data de Nascimento</label><br>
	<input type="text" name="dataDeNascimento"><br>
	<label>Data de Admissão</label><br>
	<input type="text" name="dataDeAdmissao"><br>
	<input type="submit" value="Cadastra">
</form>
<%@include file="/WEB-INF/architecture/footer.jsp" %>