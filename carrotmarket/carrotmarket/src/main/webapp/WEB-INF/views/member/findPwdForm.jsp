<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    


<%@ include file="../include/header.jspf" %>

<div class="container" style= " margin : 160px auto ; width : 80%;">
	
	<form action="findpwd" method="post" style="width : 50%; margin : 0 auto;">
		<h1 style="text-align: center;">비밀번호 찾기</h1>	
		<div style="margin-top : 50px;">
			<h2>아이디</h2>
			<input type="text" name="userid" placeholder="아이디" style="width : 100%; padding : 0; height : 50px"/>
			<div style="font-size : 1.5rem; color : red; text-align: center">${message}</div>
		</div>
		<input type="submit" value="비밀번호 찾기" style="width : 100%; height : 50px; background-color : #ff6f0f; color: white; cursor: pointer;"/>
	</form>
</div>
<script type="text/javascript" src="../js/member.js">

</script>
<%@ include file="../include/footer.jspf"%>