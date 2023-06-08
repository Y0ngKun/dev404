<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
li{
	list-style:none
}
.user-profile-nav{
	border-bottom : 1px solid #e9ecef;
	display: flex;
	justify-content: space-evenly!important;
	padding:2em 1em 1em;
	font-size:1.6em
}
.user-profile-nav > div > a {

	
}
.active {
	color: #ff6f0f;
	font-weight: bold;

}
</style>


<div class="user-profile-nav">
		<div><a class="" href="myInfo">내 정보</a></div>
		<div><a class="" href="modify">내 정보 수정</a></div>
		<div><a class="" href="passwd">비밀번호 변경</a></div>
		<div><a class="" href="remove">회원탈퇴</a></div>
</div>

<!-- nav class 활성화 -->
<script>
	$(function() {

		let url = window.location.pathname, //현재 url 경로 가져옴
		urlRegExp = new RegExp(url.replace(/\/$/, '') + "$"); //정규식 문자열 패턴
		
		
		$('a').each(function() { //내비게이션에서 모든 링크 가져옴
			if (urlRegExp.test(this.href.replace(/\/$/, ''))) {

				$(this).addClass('active'); // 활성 링크 클래스 'active' 추가

			}

		});

	});
</script>
