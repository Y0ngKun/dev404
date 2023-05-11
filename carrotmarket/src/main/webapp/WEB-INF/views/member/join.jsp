<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>당근마켓 :: 회원가입</title>
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


<link rel="stylesheet" type="text/css" href="../resources/css/join.css">
<!--
<script type="text/javascript" src="../resources/js/member.js"></script> 
  -->
</head>
<body>
<div class="fdiv">
	<h2>회원 가입</h2>
	<p>'*' 표시 항목은 필수 입력 항목입니다.</p>
	<form action="/member/join" method="post">
		<table>
		
			<tr>
				<td>이름</td>
				<td><input type="text" name=memberName size="20" required="required">*</td>
			</tr>

			<tr>
				<td>아이디</td>
				<td><input type="text" name="memberId" size="20" id="memberId" required="required">*
					<!--  
					<input type="hidden" name="reid" size="20">
					<input type="button" value="중복체크" onclick="idCheck()"></td>
					-->
			</tr>
			
			<tr>
			<td>암호</td>
			<td><input type="password" name="memberPW" size="20" required="required">*</td>  
			</tr>
			
			<!-- 
			<tr height="30">
			<td width="80">암호 확인</td>
			<td> <input type="password" name="pwd_check" size="20">*</td>
			</tr>
			 -->
			 
			<tr>
			<td>이메일</td>
			<td> <input type="text" name="memberEmail" size="20" required="required">  </td>
			</tr>
			
			<tr>
			<td>전화번호</td>
			<td> <input type="text" name="memberMobile" size="20">  </td>
			</tr>
			
			<tr>
			<td colspan="2" align="center">
			<input type="submit" value="가입하기" class="join_button">
			
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			
			<input type="reset" value="취소">
			
			
			</td>
			</tr>
			
			<tr>
			<td colspan="2"> ${message} </td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>