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
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9" />

</head>
<body>

<%@include file="../include/header.jsp"%>

<div class="container mt-4 mb-4" id="mainContent">
	<div class="row">
		<div class="col-md-2">
			<h4 class="wordArtEffect text-success pl-4">메뉴</h4>
			<nav class="navbar bg-dark navbar-dark container">
				<!-- RWD의 화면 축소시 나타나는 메뉴 버튼(상병계급장) -->
				<!-- d-md-none은 메뉴가 감추어지지 아노고 펼쳐지는 것 예방 -->
				<button class="navbar-toggler d-md-none" type="button"
					data-toggle="collapse" data-target="#collapsibleVertical">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse d-md-block"
					id="collapsibleVertical">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#"> <i
								class="fas fa-home" style="font-size: 30px; color: white;"></i>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="list">게시판
								목록</a></li>
						<li class="nav-item"><a class="nav-link"
							href='modify?bno=<c:out value="${board.bno }"/>'>수정</a></li>
					</ul>
				</div>
			</nav>
		</div>
		
		<div class="col-md-10">
			<div id="submain">
				<h4 class="text-center wordArtEffect text-success">로그인</h4>
				<h4><c:out value="${error}"/></h4>
  				<h4><c:out value="${logout}"/></h4>
  				<!-- action은 login임 -->
  				<form method='post' action="../login">
  					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
  					<div class="form-group">
						<label for="uId">아이디</label>
						<input type="text" class="form-control" name="username" placeholder="아이디 입력" 	id="uId" required/>			
					</div>
					<div class="form-group">
						<label for="uPw">비밀번호</label>
						<input type="password" class="form-control" name="password" id="uPw" placeholder="비밀번호 입력" required/>
					</div>
					<!-- 로그아웃 안하고 접속 단절후  일정시간 로그인 없이 재접속 -->
					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="rememberMe" name="remember-me" checked>
						<label class="form-check-label" for="rememberMe" aria-describedby="rememberMeHelp">remember-me</label>			
					</div>
					<button type="submit" class="btn btn-success">로그인</button>
  				</form>
				 
			</div> <!-- submain -->	
		</div> <!-- col-md-10 -->
	</div>
	<!-- row -->
</div>
<!-- mainContent -->


<%@include file="../include/footer.jsp"%>
</body>
</html>