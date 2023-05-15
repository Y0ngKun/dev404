<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../include/header.jspf"%>
<link rel="stylesheet" type="text/css" href="/resources/css/member.css">
<link rel="stylesheet" media="all" href="https://d1unjqcospf8gs.cloudfront.net/assets/home/users/show-b2c7250e62f851bf2967ba56a6ee71752f170e773072e6c74ab741ff9572737b.css" />

<section id="content">
	<section id="user-profile">
		<div class="d-flex justify-content-evenly mb-3" style="border-bottom: 1px #e9ecef solid;">
			<button type="button" class="myInfo_Btn" onclick="location.href='myInfo'" >내 정보</button>
			<button type="button" class="myInfo_Btn" onclick="location.href='modify'" >내 정보 수정</button>
			<button type="button" class="myInfo_Btn" onclick="location.href='passwd'" >비밀번호 변경</button>
			<button type="button" class="myInfo_Btn" onclick="location.href='remove'" style="color : #ff6f0f;">회원탈퇴</button>
		</div>
		
		<form action="remove" style = "padding-top: 30px; width: 80%; margin : 0 auto;" id="join_form" method="post">	
			<h1>비밀번호</h1>
			<input type="password" name="passwd" required oninvalid="this.setCustomValidity('현재 비밀번호를 입력하세요.')" oninput="this.setCustomValidity('')" />
			<!-- 
			<button id="id_check" type="button" class="karrot-button r14vym0 _1s38h9c3 _1s38h9c4 r14vym4 r14vym7 _1knjz49j"  style="width : 100px; height : 40px; font-size: 1.5rem ">중복확인</button>
			 -->

			
			<input type="submit" value="회원탈퇴" class="common_button"/>
			<input type="button" value="뒤로가기" onclick="history.back()" class="common_button"/>
	</form>
	</section>
</section>
	<!-- Footer-->
	<%@ include file="../include/footer.jspf" %>

</body>
</html>