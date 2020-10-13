<!-- 
//Caio Costa Cordeiro CB3001474
//Sistely Nazareth de Sousa CB3003884
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicação de Armazenamento de Livros</title>
</head>
<body>
	<center>
		<h1>Gerenciamento de Livros</h1>
        <h2>
        	
        	<a href="new">Adicionar Livro</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">Listar Livros</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="creditos.jsp">Créditos</a>
       		
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista dos livros</h2></caption>
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Preço</th>
                <th>Opções</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${book.id}' />">Editar</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${book.id}' />">Excluir</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
