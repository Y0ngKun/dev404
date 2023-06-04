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
				<h4 class="text-center wordArtEffect text-success">회원가입</h4>
				<form action="../member/memberJoin" method="post" id="frm1" name="frm1">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<div class="form-group">
						<label for="uId">아이디</label>
						<input type="email" class="form-control" name="userid" placeholder="E-Mail주소 입력" 	id="uId" required/>
					</div>
					<div class="form-group">						
						 <button type="button" id="id_chk" class="btn btn-outline-primary">아이디중복체크</button>
						 <input	type="hidden" name="reid" size="20">						 
					</div>
					<div class="form-group">
						<label for="uPw">비밀번호</label>
						<input type="password" class="form-control" name="userpw" id="uPw"	placeholder="비밀번호 입력" required/>
					</div>
					<div class="form-group">
						<label for="uPwchk">비밀번호확인</label>
						<input type="password" class="form-control" name="userpwChk" id="uPwChk"	placeholder="비밀번호확인입력" required/>
					</div>
					<div class="form-group">
						<label for="uName">사용자명</label>
						<input type="text" class="form-control" name="userName" id="uName" placeholder="사용자명" required/>			
					</div>				
					<button type="submit" class="btn btn-success">회원가입</button>&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger">취 소</button>&nbsp;&nbsp;		
				</form>				 
			</div> <!-- submain -->	
		</div> <!-- col-md-10 -->
	</div>
	<!-- row -->
</div>
<!-- mainContent -->

<%@include file="../include/footer.jsp"%>

<script>
$(document).ready(function(){
	$("#id_chk").click(function(e){
		e.preventDefault();
		if (document.frm1.userid.value == "") {
			alert('아이디를 입력하여 주십시오.');
			document.frm1.userid.focus();
			return false;
		}
		
		let userid = document.frm1.userid.value;
		
		
		$.ajax({
			url : "../member/idChk?userid=" + userid,
			type : "GET",			
			success : function(result){				
				if(result == "success")	{
					document.frm1.reid.value = userid;
					alert("사용 가능한 아이디입니다");
				}
				else {
					document.frm1.userid.focus();
					document.frm1.userid.value = "";
					alert("다른 아이디를 등록하세요");
				}					
			}			
		});
	});
	
	$("#uPwChk").blur(function(){		
		if(document.frm1.userpw.value != document.frm1.userpwChk.value) {
			alert("암호가 일치하지 않습니다.");
			frm1.userpw.focus();
			return false;
		}
	});
	
	$("#frm1").submit(function(){
		if(document.frm1.reid.value != document.frm1.userid.value) {
			alert("체크한 아이디를 다시 수정하셨습니다")
			return false;
		}
		return true;
	});
});

</script>
</body>
</html>