<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    


<%@ include file="../include/header.jspf" %>
<link rel="stylesheet" type="text/css" href="../css/member.css">

<div class="container" style= " margin : 170px auto ; width : 80%;">
	<form action="login" style="width : 50%; margin : 0 auto;" method="post">	
			<input type="hidden" name="url" value="${url}"/>
			<h1>ID</h1>
			<input type="text" name="userid" style="width : 100%"/>
		
			<h1>PW</h1>
			<input type="password" name="userpwd" style="width : 100%"/>
			
			<div style="color : red; font-size : 1.5rem">${message}</div>
			
			<div style="display : flex; justify-content: space-around; margin-top : 10px;">
				<a href="findid" style="font-size : 1.3rem">아이디 찾기</a>
				<a href="findpwd" style="font-size : 1.3rem">비밀번호 찾기</a>
			</div>
			<div>
				<button style="width : 100%; height : 50px; background-color : #ff6f0f; color: white;"><h2>로그인</h2></button>
			</div>
				<button id="join_button" style="width : 100%; height : 50px; background-color : #ff6f0f; color: white;"><h2>회원가입</h2></button>
	</form>
</div>
<script type="text/javascript" src="../js/member.js">

</script>
<%@ include file="../include/footer.jspf"%>