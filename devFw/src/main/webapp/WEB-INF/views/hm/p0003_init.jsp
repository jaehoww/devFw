<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>    
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원 검색창</title>
</head> 
<body>
   <form name="frm" method="post" action="${contextPath}/hm/p0003/searchMember.do">   
	   고객번호 : <input type="text" name="p_id">
	<input type="submit" value="조회하기">
   </form>
</body>
</html>
