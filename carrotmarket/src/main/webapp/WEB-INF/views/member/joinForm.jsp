<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    

<c:set var="pageTitle" value="회원가입"></c:set>
<%@ include file="../include/header.jspf" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="../css/member.css">

<div class="container" style= " margin-top:100px; max-width: 500px !important;">
	
	<!-- 파일 첨부 창 -->				
				<div class="attach mt-4 ">
					<div>						
						<div class="form-group uploadDiv">
							<label for="upload"><h1>프로필 사진 첨부</h1></label>
							<input type="file" class="form-control" id="upload" name="uploadFile" accept=".jpg, .png, .jpeg" style="width: 100%; margin-bottom: 20px; padding: 19px 20px; font-size: 19px" /> 
							<!-- submit버튼없이 change이벤트로 처리 -->
						</div>
					</div>	
						
					<div class='uploadResult mt-3'>
						<!-- 업로드 파일 결과를 보여 주는 창 -->					
						<div class='row' id='card'>
						
						</div>  			
					</div>					
				</div>
	<!-- 파일 첨부 부분 끝 -->
	
	<form action="join" method="post" id="join_form" role="form"
	style = "padding-top: 3px; margin : 0 auto;"  >	
			
			<h1>이름</h1>
			<input type="text" name="username"/>
			
			<h1>닉네임</h1>
			<input type="text" name="usernickname"/>
	
			<h1>아이디</h1>
			<input type="text" name="userid"/>
			
			<button id="id_check" type="button" class="karrot-button r14vym0 _1s38h9c3 _1s38h9c4 r14vym4 r14vym7 _1knjz49j"  style="width : 100px; height : 40px; font-size: 1.5rem ">중복확인</button>
			<input type="hidden" id="id_check_success" value="0"/>
			
			<span id="id_check_result" style="font-size : 1.5rem; margin-left : 20px"></span>
		
			<h1>비밀번호</h1>
			<input type="password" name="userpwd"/>
			
			<h1>비밀번호 확인</h1>
			<input type="password" name="userpwd_check"/>
			<input type="hidden" id="userpwd_check_success" value="0" />
			<div id="pwd_check" style="font-size: 1.5rem"></div>
			
			<h1>주소</h1>
			<input type="text" name="useraddress"/>
			
			<h1>이메일</h1>
			<input type="text" name="useremail"/>
			
			<h1>성별</h1>
			<div class="w-75 form-check d-flex justify-content-between m-auto align-bottom" style="height : 60px">
				<div>
				 	<input class="form-check-input" type="radio" name="usergender" value="N" checked="checked" id="N">
				 	<label class="form-check-label ms-1" for="N"> 선택안함</label>
			  	</div>
			  	<div>
				 	<input class="form-check-input" type="radio" name="usergender" value="M" id="M">
				 	<label class="form-check-label ms-1" for="M"> 남자</label>
			  	</div>
			  	<div>
				 	<input class="form-check-input" type="radio" name="usergender" value="F" id="F">
				 	<label class="form-check-label ms-1" for="F"> 여자</label>
			  	</div>
			</div>
			
			<h1>개인/사장님 확인</h1>
			<div class="w-75 form-check d-flex justify-content-between m-auto align-bottom" style="height : 60px">
				<div>
				 	<label class="form-check-label ms-1" for="C"> 개인</label>
				 	<input class="form-check-input" type="radio" name="isbusiness" value="N" checked="checked" id="C" onclick="toggleProfileSection(false)">
			  	</div>
			  	<div>
				 	<label class="form-check-label ms-1" for="B"> 사장님</label>
				 	<input class="form-check-input" type="radio" name="isbusiness" value="Y" id="B" onclick="toggleProfileSection(true)">
	
			  	</div>
			</div>
			
			<!-- 사장님 일 때 보이는 메뉴 -->
			<div id="profile-section" style="padding-top: 5px; width: 100%; margin: 0 auto; display: none; ">
				
				<h1>업종을 선택해주세요</h1>
				<select name="category" style="
				padding:10px; width: 100%; font-size: 20px; margin-bottom: 15px; -webkit-appearance: none; border: solid 1px #CED4DA; border-radius: 3px;
				" >
					<option value="">--카테고리를 선택해주세요--</option>
					<option value="식당">식당</option>
		        	<option value="카페">카페</option>
		        	<option value="용달/이사">용달/이사</option>
		        	<option value="뷰티/미용">뷰티/미용</option>
		      		<option value="헬스/필라테스">헬스/필라테스</option>
				</select>
				<div id="category_error" style="font-size: 1.5rem; color: red;"></div>
			</div>
			
			<input type="submit" id="join_submit" value="회원가입" style="width: 100%;background-color : #ff6f0f; color: white;"/>
			<input type="button" id="join_reset" value="뒤로가기" onclick="history.back()" style="width: 100%;background-color : #ff6f0f; color: white; margin-bottom: 70px;"/>
	</form>
</div>
<script type="text/javascript" src="../js/member.js"></script>

<!-- 프로필 사진 업로드 처리 스크립트 -->

<script>
function toggleProfileSection(show) {
  var profileSection = document.getElementById("profile-section");
  var categoryDropdown = document.getElementsByName("category")[0];
  
  if (show) {
    profileSection.style.display = "block";
  } else {
    profileSection.style.display = "none";
    categoryDropdown.selectedIndex = 0;
  }
}
</script>


<%@ include file="../include/footer.jspf"%>