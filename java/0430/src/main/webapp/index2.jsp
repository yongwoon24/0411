<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  trimDirectiveWhitespaces="true" %>
<%
	String gender = request.getParameter("gender");
    // 잘못된 데이터가 들어오더라도 선행작업을 미리 자바코드에서 처리해준다. => 복잡도가 줄어든다.
	if ( gender == null || gender == ""){
		gender = "general";
	}
	gender = gender.toLowerCase() + "Info.jsp";
//	pageContext.setAttibute("gender", gender);
	System.out.print(gender);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인덱스의 주제어임 </h1>
	<h1>인덱스의 주제어임 </h1>
	<jsp:forward page="${gender}"></jsp:forward>
<%-- <jsp:forward page="<%=gender%>"></jsp:forward> --%>	
</body>
</html>