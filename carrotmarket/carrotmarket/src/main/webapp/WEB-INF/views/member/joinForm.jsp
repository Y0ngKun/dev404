<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    


<%@ include file="../include/header.jspf" %>
link<link rel="stylesheet" type="text/css" href="../css/member.css">

<div class="container" style= " margin : 150px auto ; width : 80%;">
	<form action="join" style = "padding-top: 30px; width :50%; margin : 0 auto;" id="join_form" method="post">	
			<h1>이름</h1>
			<input type="text" name="username" style="width : 100%; padding :10px 0;" required="required"/>
			
			<h1>닉네임</h1>
			<input type="text" name="nickname" style="width : 100%;padding :10px 0;" required="required"/>
	
			<h1>아이디</h1>
			<input type="text" name="userid" style="width : 100%;padding :10px 0;" required="required"/>
			
			<button id="id_check" type="button" class="karrot-button r14vym0 _1s38h9c3 _1s38h9c4 r14vym4 r14vym7 _1knjz49j"  style="width : 100px; height : 40px; font-size: 1.5rem ">중복확인</button>
			<input type="hidden" id="id_check_success" value="0"/>
			
			<span id="id_check_result" style="font-size : 1.5rem; margin-left : 20px"></span>
		
			<h1>비밀번호</h1>
			<input type="password" name="userpwd" style="width : 100%; padding :10px 0;" required="required"/>
			
			<h1>비밀번호 확인</h1>
			<input type="password" name="userpwd_check" style="width : 100%; padding :10px 0;" required="required"/>
			<input type="hidden" id="userpwd_check_success" value="0" />
			<div id="pwd_check" style="font-size: 1.5rem"></div>
			
			<h1>주소</h1>
			<input type="text" name="address" style="width : 100%; padding :10px 0;" required="required"/>
			
			<input type="submit" id="join_submit" value="회원가입" style="width: 100%;background-color : #ff6f0f; color: white;"/>
			<input type="button" id="join_reset" value="뒤로가기" onclick="history.back()" style="width: 100%;background-color : #ff6f0f; color: white;"/>
	</form>
</div>
<script type="text/javascript" src="../js/member.js">

</script>
<%@ include file="../include/footer.jspf"%>