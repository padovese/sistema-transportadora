<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema de Mecanica</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<header>
	<a href="<%=request.getContextPath() %>/"><img src="http://www.sennaautomecanica.com.br/img/logo.png"></a>
	<div id="preheader"> <a href="<%=request.getContextPath() %>/pecas/consulta">Produtos</a> &nbsp
	<a href="<%=request.getContextPath() %>/consulta-servicos">Serviços</a> &nbsp 
	<a href="<%=request.getContextPath() %>/funcionarios/consulta">Funcionarios</a>&nbsp </div>
</header>