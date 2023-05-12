<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>당근마켓 :: 로그인</title>
<meta charset="UTF-8">
<!-- RWD -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9"/> 
<!--BS 4 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!--icon -->
<!--fontawesome icon-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<!--google icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


<link rel="stylesheet" type="text/css" href="../resources/css/login.css">
<script type="text/javascript" src="../resources/js/member.js"></script> 

</head>
<body>
	<div class="fdiv">
		<h2 style="text-align: center">로그인</h2>
		
		<form action="/member/login" method="post" id="login_form">
		
			<span> 아이디&nbsp;&nbsp; </span><input class="id_input" placeholder="아이디" type="text" name="memberId" required="required">
			<span>암호&nbsp;&nbsp;</span><input class="pw_input" placeholder="비밀번호" type="password" name="memberPW" required="required">
			
			<input type="submit" class="login_button" value="로그인">
		</form>
		
		<c:if test ="${result == 2}">
            <div class ="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
         </c:if>
		
		
		<div class="fdivsub">
			<span><a href="#"> 아이디 찾기</a></span>
			<span><a href="#"> 비밀번호 찾기 </a></span>
			<span><a href="/member/join"> 회원가입 </a></span>
			<span><a>${message}</a></span>
		</div>
	</div>
	
	
</body>
</html>