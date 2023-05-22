<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="회원정보 수정"></c:set>

<%@ include file="../include/header.jspf"%>
<link rel="stylesheet" type="text/css" href="../css/member.css">
<link rel="stylesheet" media="all" href="https://d1unjqcospf8gs.cloudfront.net/assets/home/users/show-b2c7250e62f851bf2967ba56a6ee71752f170e773072e6c74ab741ff9572737b.css" />

<section id="content">
	<section id="user-profile">
		<div class="d-flex justify-content-evenly mb-3" style="border-bottom: 1px #e9ecef solid;">
			<button type="button" class="myInfo_Btn" onclick="location.href='myInfo'" >내 정보</button>
			<button type="button" class="myInfo_Btn" onclick="location.href='modify'" style="color : #ff6f0f;">내 정보 수정</button>
			<button type="button" class="myInfo_Btn" onclick="location.href='passwd'">비밀번호 변경</button>
			<button type="button" class="myInfo_Btn" onclick="location.href='remove'">회원탈퇴</button>
		</div>
		
		<form action="modify" style = "padding-top: 30px; width: 80%; margin : 0 auto;" id="modify_form" method="post">
			<input type="hidden" name="id" value="${member.id}"/>
			<h1>이름</h1>
			<input type="text" name="username" readonly="readonly" value="${member.username }" class="readonly"/>
			
			<h1>닉네임</h1>
			<input type="text" name="usernickname" value="${member.usernickname}"/>
	
			<h1>아이디</h1>
			<input type="text" name="userid" readonly="readonly" value="${member.userid}" class="readonly"/>
		
			<h1>비밀번호</h1>
			<input type="password" name="userpwd" required oninvalid="this.setCustomValidity('비밀번호를 입력하세요.')" oninput="this.setCustomValidity('')" />
			
			
			<h1>성별</h1>
			<div class="w-75 form-check d-flex justify-content-between m-auto">
				<div>
				 	<input class="form-check-input" type="radio" name="usergender" value="N" checked="checked" id="N" ${member.usergender eq 'N' ? 'checked' : '' }>
				 	<label class="form-check-label ms-1" for="N" > 선택안함</label>
			  	</div>
			  	<div>
				 	<input class="form-check-input" type="radio" name="usergender" value="M" id="M" ${member.usergender eq 'M' ? 'checked' : '' }>
				 	<label class="form-check-label ms-1" for="M" > 남자</label>
			  	</div>
			  	<div>
				 	<input class="form-check-input" type="radio" name="usergender" value="F" id="F" ${member.usergender eq 'F' ? 'checked' : '' }>
				 	<label class="form-check-label ms-1" for="F" > 여자</label>
			  	</div>
			</div>
			
			<h1>이메일</h1>
			<input type="text" name="useremail" value="${member.useremail}"/>
			
			
			<h1>주소</h1>
			<input type="text" name="useraddress" value="${member.useraddress}"/>
			
			<input type="submit" value="회원정보 수정" class="common_button"/>
			<input type="button" value="뒤로가기" onclick="history.back()" class="common_button"/>
	</form>
	</section>
</section>


<!-- Footer-->
<%@ include file="../include/footer.jspf"%>

</body>
</html>