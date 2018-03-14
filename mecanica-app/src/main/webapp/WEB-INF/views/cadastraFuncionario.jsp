<%@include file="/WEB-INF/architecture/header.jsp" %>

<form action="cadastraFuncionario" method="post"><br>
	<label>Nome</label><br>
	<input type="text" name="nome"><br><br>
	<label>CPF</label><br>
	<input type="text" name="cpf"><br><br>
	<label>Data de Nascimento</label><br>
	<input type="text" name="dataDeNascimento"><br><br>
	<label>Data de Admissão</label><br>
	<input type="text" name="dataDeAdmissao"><br><br><br>
	<input type="submit" value="Cadastra"><br><br>
</form>
<%@include file="/WEB-INF/architecture/footer.jsp" %>