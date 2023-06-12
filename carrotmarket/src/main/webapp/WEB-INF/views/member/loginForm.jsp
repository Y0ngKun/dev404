<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    

<c:set var="pageTitle" value="로그인"></c:set>
<%@ include file="../include/header.jspf" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="../css/member.css">

<div class="login-top-banner">

</div>

<div class="container" style= " margin : auto; width : 80%; padding-top: 50px; padding-bottom: 50px;">
	<form action="login" style="width : 50%; margin : 0 auto;" method="post">	
			<input type="hidden" name="url" value="${url}"/>
			<h1>아이디</h1>
			<input type="text" name="userid" style="width : 100%" placeholder="아이디를 입력해주세요"/>
		
			<h1>비밀번호</h1>
			<input type="password" name="userpwd" style="width : 100%" placeholder="비밀번호를 입력해주세요"/>
			
			<div style="color : red; font-size : 1.5rem">${message}</div>
			
			<div class="form-check mb-3 mt-3" style="margin-left : 9px;">
				<div>
					<input class="form-check-input" name="rememberMe" type="checkbox" id="rememberMe" style="padding : 7px;">
					<label class="form-check-label ms-1" for="rememberMe"> 로그인 유지</label>
				</div>
			</div>
			<div>
				<button id="login_button" style="width : 100%; height : 50px; background-color : #ff6f0f; color: white; margin-top: 42px;"><h2>로그인</h2></button>
			</div>
				<button id="join_button" style="width : 100%; height : 50px; background-color : #ff6f0f; color: white; margin-top: 12px;"><h2>회원가입</h2></button>
	</form>
</div>

<script type="text/javascript" src="../js/member.js"></script>
<%@ include file="../include/footer.jspf"%>