<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<!-- RWD -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9"/> 

<style>
.card img {
	width : 150px;
	height : 150px;
}
</style>
</head>
<body>

<%@ include file="../include/header.jsp"%>

<div class="container mt-4 mb-4" id="mainContent">
	<div class="row">
		<div class="col-md-2">
			<h4 class="wordArtEffect text-success pl-4">메뉴</h4>
			<nav class="navbar bg-dark navbar-dark container">
				<!-- 수직 메뉴 -->
				<button class="navbar-toggler d-md-none" type="button"
					data-toggle="collapse" data-target="#collapsibleVertical">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse d-md-block"
					id="collapsibleVertical">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#"> <i
								class="fas fa-home" style="font-size: 30px; color: white;"></i>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="register">게시물
								등록</a></li>
						<li class="nav-item"><a class="nav-link" href="#">리스트</a></li>
						<li class="nav-item"><a class="nav-link" href="#">도움말</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="col-md-10">
			<div id="submain">
				<h4 class="text-center wordArtEffect text-success">Ajax파일업로드</h4>
				
				<div class='bigPictureWrapper w-90 mb-5 h-100 mx-auto'>
					 <div class='bigPicture mt-4 h-100'>
					</div>
				</div>
				
				<!-- 업로드 입력 창 -->
				<div class="uploadDiv">
					<input type="file" name="uploadFile" multiple />
				</div>				
				
				<p>
					<button type="button" id="uploadBtn" class="btn btn-primary mt-3">Ajax Upload</button>
				</p>
				
				<!-- 업로드 결과 창 -->					
				<div class='uploadResult mt-3'>					
						<div class='row' id='card'>
							<!-- class="card"로 만들것 -->
						</div>  			
				</div>				
				
			</div>
		</div> <!-- col-md-10 -->
	</div>
</div>

<%@ include file="../include/imageModal.jsp"%>

<%@ include file="../include/footer.jsp"%>

<script>
$(document).ready(function(){
	
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	//RegExp는 정규식 처리 코아 객체로 exe,sh,zip,alz를 포함하고 있는 정규식 객체
	let maxSize = 5242880; //5MB
	let cloneObj = $(".uploadDiv").clone(); //입력하기 전상태의 DOM을 복사 
	let uploadResult = $(".uploadResult #card");
	
	let csrfHeaderName ="${_csrf.headerName}"; 
	let csrfTokenValue="${_csrf.token}";
	
	//beforeSend대신 사용
	$(document).ajaxSend(function(e, xhr, options) { 
        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
    }); 
	
	$("#uploadBtn").on("click", function(e){
		let formData = new FormData();
		//core객체 FormData, 비어있는  <form>태그 엘리먼트의 DOM
		let inputFile = $("input[name='uploadFile']"); //attr속성 selector
		let files = inputFile[0].files; //inputFile은 배열 임ㅡfiles는 배열의 요소로 배열 객체
		console.log(files);
		for(let i = 0; i < files.length; i++) {
			
			if (!checkExtension(files[i].name, files[i].size)) {
				return false;
			}
			formData.append("uploadFile", files[i]);
			//formData객체가 제공하는 append(name속성명,value값)
		}	
		$.ajax({
			url : 'uploadAjaxAction',
			processData : false, //필수
			contentType : false, //필수
			data : formData,
			type : 'POST', //필수
			//beforeSend: function(xhr) {
		    //      xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		    //},
			success : function(result) { //result는 성공시 서버로 부터 받는 데이터
				console.log(result);
				//alert(result);
				showUploadedFile(result); //JSON객체형식으로 온 결과 보여주기 함수 호출
				
				$(".uploadDiv").html(cloneObj.html()); //입력 성공후 입력전 상태로 만듬
			}
		});
	});
	
	function checkExtension(fileName, fileSize) {
		if (fileSize >= maxSize) {
			alert("파일 사이즈 초과");
			return false;
		}
		if (regex.test(fileName)) {
			// test는 RegExp코아 객체의 메서드로 정규식에 지정된 단어 포함 여부 체크
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		return true;
	}
	
	function showUploadedFile(uploadResultArr) {
		
		//uploadResultArr는 서버로 부터 받은 JSON객체타입(list형식)의 result값
		let str = ""; //HTML을 만들 문자열
		
		//jQuery의 each문
		//i는 색인번호이고 obj는 uploadResultArr를 구성하고 있는 원소
		//
		$(uploadResultArr).each(function(i, obj) {
			if(!obj.image) {  //이미지 아닌 경우
				//한글 이나ㅣ 공백등이 URL에 포함되어 있을시를 해결 encodeURIComponent()
				let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
				//YYYY/MM/DD/uuid_파일명
				//BS4의 카드 방식으로 표시
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'>";
				str += "<a href='download?fileName=" + fileCallPath +"'>";
				//str += "<i class='fa fa-paperclip fa-4x' aria-hidden='true'></i>";
				str += "<img class='mx-auto d-block' src='../images/attach.png' >";
				str += "</a>";
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
				str += "</div>";
				str += "</div>";
			}
			else { //이미지인 경우에는 섬네일 파일 경로를 사용
				let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid+"_"+obj.fileName);
				let originPath = obj.uploadPath+ "\\"+obj.uuid +"_"+obj.fileName; //원본파일 경로
				originPath = originPath.replace(new RegExp(/\\/g),"/"); //\\를 /로 대체 
				
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'>";
				str += "<a href=\"javascript:showImage(\'"+originPath+"\')\">"; //원본 파일 보기 위해 클릭 이벤트 처리
				str += "<img class='mx-auto d-block' src='display?fileName=" +fileCallPath+"'></a>"; //클릭 링크 이미지,직접 자원에 접근 못함
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";
				str += "</div>";
				str += "</div>";
			}
			
		});
		
		uploadResult.append(str);
	}
	
	$(".uploadResult").on("click","span", function(e){
		let targetFile = $(this).data("file");//파일경로,this는 이벤트 일어난 span
		let type = $(this).data("type"); //파일형태
		console.log(targetFile);
		
		let targetLi = $(this).closest(".card"); //span소속 card엘리먼트
		
		$.ajax({
		    url: 'deleteFile',
		    data: {fileName: targetFile, type:type}, //객체형으로 보내고 서버는 각각의 속성으로 처리
		    dataType:'text',
		    type: 'POST',
		    success: function(result){
		         //alert(result);
		    	targetLi.remove(); //화면에서 지우기
		   }
		});
	});
});

function showImage(fileCallPath) {
	//<a>태그에서 직접 호출시 대비해서 jQuery밖에서 만듬	
	$('.imageModal .modal-body').html("<img class='d-block w-75 mx-auto' src='display?fileName=" 
				+ encodeURI(fileCallPath)+"&size=1' >");
	$(".imageModal").modal("show");		
}
</script>
</body>
</html>