<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<!-- RWD -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9"/> 

</head>
<body>


<%@ include file="../include/header.jsp" %>

<div id="main" class="container mt-5 d-none">
	<h3 class="text-center text-info">로그아웃</h3>
	<form id="frm1" name="frm1" method="post" action="../member/customLogout">		
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<br/>		
		<button type="submit" class="btn btn-success d-block mx-auto" id="btn1" >로그아웃</button>		
	</form>
</div>



<script>
$(document).ready(function(){
	$("#btn1").trigger("click");	
});
</script>
 
</body>
</html>