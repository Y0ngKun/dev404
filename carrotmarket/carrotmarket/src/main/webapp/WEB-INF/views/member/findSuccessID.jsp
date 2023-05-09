<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    


<%@ include file="../include/header.jspf" %>

<div class="container" style= " margin : 160px auto ; width : 80%;">
	
	<div style="width :50%; text-align: center; margin : 0 auto;">
		<h2>회원님의 아이디는 ${findIdList} 입니다.</h2>
		<button onclick="location.href='findpwd'" style="width : 100%; height : 50px; background-color : #ff6f0f; color: white; cursor: pointer; margin-top: 30px">비밀번호 찾기</button>
	</div>
</div>
<script type="text/javascript" src="../js/member.js">

</script>
<%@ include file="../include/footer.jspf"%>