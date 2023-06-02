<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    

<c:set var="pageTitle" value="회원가입"></c:set>
<%@ include file="../include/header.jspf" %>
<link rel="stylesheet" type="text/css" href="../css/member.css">

<div class="container" style= " margin-top:100px; max-width: 500px !important;">
	
	<!-- 파일 첨부 창 -->				
				<div class="attach mt-4 ">
					<div>						
						<div class="form-group uploadDiv">
							<label for="upload"><h1>프로필 사진 첨부</h1></label>
							<input type="file" class="form-control" id="upload" name="uploadFile" accept=".jpg, .png, .jpeg" style="width: 100%; margin-bottom: 20px; padding: 9px 20px; font-size: 19px" /> 
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
				<select name="category dropbox_selection" style="
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
<script type="text/javascript">
$(document).ready(function(){
	let formObj = $("form[role='form']"); //게시글 작성 등록
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$"); //확장자가 지정된 것은 업로드 제한
	let maxSize = 25242880; //25MB 파일 최대 크기
	let uploadUL = $(".uploadResult #card");
	
	$("input[type='submit']").on("click", function(e){  //게시글작성 submit버튼
		
		e.preventDefault();	  
	    
	    let str = "";	    
	   
	    $(".uploadResult .card p").each(function(i, obj){
	      
	      let jobj = $(obj);
	      console.log(jobj);
	      console.log("-------------------------");
	      console.log(jobj.data("filename"));		      	
	      str += "<input type='text' name='fileName' value='"+jobj.data("filename")+"'>";	     
	      str += "<input type='text' name='uuid' value='"+jobj.data("uuid")+"'>";
	      str += "<input type='text' name='uploadPath' value='"+jobj.data("path")+"'>";
	   		
	    });	 	    
	    
	    formObj.prepend(str).submit();
	    
	});
	
	$("input[type='file']").change(function(e){
	
		let formData = new FormData(); //가상의 form엘리먼트 생성
		let inputFile = $("input[name='uploadFile']");
		let files = inputFile[0].files[0]; 
		//첫번째 inputFile DOM의 files들 type이 file인경우 선택한 파일들(value값)
		
		console.log(files);
		formData.append("uploadFile", files); 
		
		$.ajax({
			url: '../member/uploadAjaxAction',
			processData: false,
			contentType: false,
			data: formData,
			type: 'POST',					
		    dataType : 'json', //생략해도 무방		    
			success : function(result) {
				alert(result + "결과");
				showUploadResult(result);
				$("#upload").val(""); //파일 입력창 초기화
			},
			error : function() {
				alert("ajax upload failed");
			}
		});
	});	
	
	function showUploadResult(uploadResultArr) {
		
		if(!uploadResultArr || uploadResultArr.length == 0) {
			alert("uploadResultArr result");
			return;
		}		
				
		$(uploadResultArr).each(function(i, obj) {
			let str ="";
			
			if(obj.image) {
				let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);				
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";						
				str += "<img class='mx-auto d-block' src='../member/display?fileName="+fileCallPath+"'>";						

				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-danger badge-pill' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";				
				str += "</div></div>";				
			}
			else {
				
				let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
				let fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");				
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";	
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' >";
				str += "<img class='mx-auto d-block' src='../images/attach.png' >";				
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-danger badge-pill' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
				str += "</div></div>";		
			}
			uploadUL.append(str);
		});		
	}
	
	function checkExtension(fileName, fileSize) {
		
		if(fileSize >= maxSize) {
			alert("파일 사이즈 초과");
		    return false;
		}
		if(regex.test(fileName)) {
			 alert("해당 종류의 파일은 업로드할 수 없습니다.");
		     return false;
		}
		return true;
	}
});


	
//ajax로 이미지 업로드 성공시 하단에 업로드된 이미지 보여주기

	
	/*
$(".uploadResult").on("click", "span", function(e) { // 삭제 x클릭
	console.log("delete file");
	      
    let targetFile = $(this).data("file"); //삭제 파일 경로
	let type = $(this).data("type");
	
	let targetLi = $(this).closest(".card");
	
	$.ajax({
		//url: '../upload/deleteFile?${_csrf.parameterName}=${_csrf.token}',
		url : '../ex02/storesWrite/deleteFile',
	    data: {fileName: targetFile, type:type},
	    dataType:'text',
	    type: 'POST',		    
	    //beforeSend: function(xhr) {
	    //      xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	    //},		    
	    success: function(result){		             
	           targetLi.remove();
	    }
	}); 
});
	
	*/
	
</script>

<script>
function toggleProfileSection(show) {
  var profileSection = document.getElementById("profile-section");
  var categoryDropdown = document.getElementsByName("category dropbox_selection")[0];
  
  if (show) {
    profileSection.style.display = "block";
  } else {
    profileSection.style.display = "none";
    categoryDropdown.selectedIndex = 0;
  }
}
</script>










	



<%@ include file="../include/footer.jspf"%>