<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 등록</h1>
	<form action="registerproc" method="post">
		제목 : <input type="text"  name="title"/>
		내용 : <br />
		<textarea name="contents" cols="30" rows="10"></textarea>
		작성자 : <input type="text"  name="writer" />
		<input type="submit" value="전송" />
	</form>
</body>
</html>