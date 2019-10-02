<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*"
    import="sec02.ex01.*"
    pageEncoding="UTF-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<style>
h1 {
text-align: center;
}
</style>
  <meta charset="UTF-8">
<title>고객 정보 출력창</title> 
</head>
<body>
<h1>고객 정보 출력</h1>
<%
   request.setCharacterEncoding( "utf-8" );
%>
 <table border='1' width='auto' align='center'>
   <tr align='center' bgcolor='#FFFF66'> 
     	<td>고객번호</td>
		<td>고객이름</td>
		<td>고객주소</td>
		<td>고객주</td>
		<td>고객우편번호</td>
		<td>고객국가</td>
		<td>고객담당자</td>
		<td>고객메일주소</td>
		<td>수정</td>
</tr>

  <c:forEach var="searchMember" items="${searchMember}" >	

     <tr align=center>
    	<td>${searchMember.cust_id}</td>
		<td>${searchMember.cust_name}</td>
		<td>${searchMember.cust_address}</td>
		<td>${searchMember.cust_state}</td>
		<td>${searchMember.cust_zip}</td>
		<td>${searchMember.cust_country}</td>
		<td>${searchMember.cust_contact}</td>
		<td>${searchMember.cust_email}</td>
		<td><a href="${contextPath}/hm/p0003/searchMod.do?p_mod_id=${searchMember.cust_id}">수정</a></td>
     </tr>
  </c:forEach>
</table>
</body>
</html>