<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>     
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
<link rel="stylesheet" href="../css/myCss.css?after"> <!-- 수정시 바로 적용을 위해 after추가 -->
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark container sticky-top">
	<a class="navbar-brand" href="#">
		<img src="../images/bird.jpg" alt="Logo" style="width:40px;">
	</a>
	<!-- 컬랩스용 버튼 -->
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item">
			 	<a class="nav-link" href="../home/home">
			 		<i class="fas fa-home" style="font-size:30px;color:white;"></i>
			 	</a>
			 </li>
			 <li class="nav-item">
			 	<a class="nav-link" href="../board/list">게시판</a>
			 </li>
			 <li class="nav-item dropdown">
			 	<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
			 		파일 업로드
			 	</a>
			 	<div class="dropdown-menu">
			 		 <a class="dropdown-item" href="../upload/uploadForm">Form방식</a>
			 		 <a class="dropdown-item" href="../upload/uploadAjax">Ajax방식</a>
			 		 <a class="dropdown-item" href="#">Q&amp;A</a>
			 	</div>
			 </li>
			 <li class="nav-item dropdown">
			 	<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
			 	    시큐리티
			 	</a>
			 	<div class="dropdown-menu">
			 		 <a class="dropdown-item" href="../member/all">All</a>
			 		 <a class="dropdown-item" href="../member/member">Member</a>
			 		 <a class="dropdown-item" href="../member/admin">Admin</a>
			 		 <a class="dropdown-item" href="../member/annoMember">어노테이션M</a>
			 		 <a class="dropdown-item" href="../member/annoAdmin">어노테이션A</a>			 		 
			 	</div>
			 </li>
		</ul>
		
		<!-- 시큐리티 미적용
		<ul class="navbar-nav ml-auto">
			 <li class="nav-item">			 	  			
			 	<button type="button" class="btn btn-dark" data-toggle="modal" data-target="#homeModal">
			 		로그인
			 	</button>			 	
			 	<a id="customLogin" class="nav-link" href="../member/customLogin">로그인</a> 		 	
		 	</li>
		 	<li class="nav-item">
					<a class="nav-link" href="../member/customLogout">로그아웃</a>	
			</li>
		</ul>		
		-->
		
		<ul class="navbar-nav ml-auto"> <!-- login,logout창은 ajax안되니 별도 창 -->
			<sec:authorize access="isAnonymous()">  <!-- 로그인 안한 상태면 로그인 버튼 보임  -->
				<li class="nav-item">
					<a id="customLogin" class="nav-link" href="../member/customLogin">로그인</a>
				</li>
				<li class="nav-item">
					<a id="memberJoin" class="nav-link" href="../member/memberJoin">회원가입</a>
				</li>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()"> <!-- 로그인 한 상태면 로그아웃버튼을 보여줌 -->
				<li class="nav-item">
		 		 	<a class="nav-link" href="#"><sec:authentication property="principal.username"/></a>
		 		 </li>
				<li class="nav-item">
					<a class="nav-link" href="../member/customLogout">로그아웃</a>	
				</li>
			</sec:authorize>
		</ul>
	</div>
	
</nav>
</body>
</html>