<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    


<%@ include file="../include/header.jspf" %>

<div class="container" style= " margin : 160px auto ; width : 80%;">
	
	<div style="width :50%; margin : 0 auto;">
		<h1 style="text-align : center;">비밀번호 변경</h1>
		
		<form action="modifyPWD" method="post" id="find_pwd_form" style="margin-top : 20px;">
			<input type="hidden" name="id" value="${member.id}" />
			
			<h1>새로운 비밀번호</h1>
			<input type="password" name="userpwd" style="width : 100%; padding :10px 0;" required="required"/>
			
			<h1>비밀번호 확인</h1>
			<input type="password" name="userpwd_check" style="width : 100%; padding :10px 0;" required="required"/>
			<input type="hidden" id="userpwd_check_success" value="0" />
			<div id="pwd_check" style="font-size: 1.5rem"></div>
			
			
			<input type="submit" style="width : 100%; height : 50px; background-color : #ff6f0f; color: white; cursor: pointer; margin-top: 30px" value="비밀번호 변경"/>;
		</form>
		
	</div>
</div>
<script type="text/javascript" src="../js/findMember.js">

</script>
<%@ include file="../include/footer.jspf"%>