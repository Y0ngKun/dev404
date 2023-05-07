<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member</title>
</head>
<body>
<form action="/member/join" method="post">
	<input type="text" name="memberEmail" placeholder="이메일">
	<input type="text" name="memberPassword" placeholder="비밀번호">
	<input type="text" name="memberName" placeholder="이름">
	<input type="text" name="memberAge" placeholder="나이">
	<input type="text" name="memberMobile" placeholder="전화번호">
	<input type="submit" value="회원가입">
</form>
</body>
</html>