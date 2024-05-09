<%@page import="examcookie.examcookie.CookieBoxUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
   // 쿠키명 : viewList  쿠키 값으로는 상품내역들을 계속 추가한다.
   CookieBoxUtil cbu = new CookieBoxUtil(request);
   Cookie viewListCookie = null;
   if( cbu.exists("viewList")){
      //현재 본 상품을 viewList쿠키에 값으로 추가한다 => 기존의 값에 새로운 상품내역을 덧붙인다.
      viewListCookie = cbu.getCookie("viewList");
      String oldValue = cbu.getValue("viewList");
      String newValue = oldValue + "/"+ "전자제품1";
      viewListCookie.setValue(newValue);
      response.addCookie(viewListCookie);
      
   }else{ //쿠키가 존재하지 않음으로 생성해준다.
      viewListCookie = CookieBoxUtil.createCookie("viewList", "전자제품1", 60*60*24*7);
      response.addCookie(viewListCookie);
   }
   
%>
<body>
   <h3>가전제품정보를 쿠키에 담았습니다.</h3>
   <p>가전제품 상세 정보가 여기에 나타남</p>
   <div>
      <h3>최근 본 상품 목록</h3>
      <%
         String[] sangpums = viewListCookie.getValue().split("/");
         for(int i = 0; i < sangpums.length; i=i+1){
            out.print("<p>" + sangpums[i] + "</p>"  );
         }
      %>
   </div>
</body>
</html>