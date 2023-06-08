<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>index</title>

<style>
.top_banner {
	padding: 150px 50px !important
}
#uploadBtn{
text-align:center!important;
margin-top:20px
}

.row{
margin:0!important
}

/*썸네일 클릭시 나타나는 모달 이미지*/
.modal_img{
width:100%
}

/*썸네일 삭제 버튼*/
.badge{
cursor: pointer;
}
</style>

</head>

<body>
<!-- header -->
<%@ include file="../../include/header.jspf"%>
<!-- //header -->

<div class="board">
	<h2>파일업로드 ajax</h2>
	<!-- 업로드 입력 창 -->
	<div class="uploadDiv">
		<input type="file" name="uploadFile" multiple />
	</div>				
				

				
	<!-- 업로드 결과 창 -->					
	<div class='uploadResult'>					
		<div class='row' id='card'>
			<!-- class="card"로 만들것 -->
		</div>  				
	</div>		
	
	<p>
		<button type="button" id="uploadBtn" class="btn btn-primary mt-3">Ajax Upload</button>
	</p>
</div>

<!-- imageModal -->
<%@ include file="../../realestate/r_include/realestateModal.jsp"%>

<!-- footer -->
<div id="footer">
	<%@ include file="../../include/footer.jspf"%>
</div>
<!-- //footer -->

<script>
$(document).ready(function(){
	
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	//RegExp는 정규식 처리 코아 객체로 exe,sh,zip,alz를 포함하고 있는 정규식 객체
	let maxSize = 5242880; //5MB
	let cloneObj = $(".uploadDiv").clone(); //입력하기 전상태의 DOM을 복사 
	let uploadResult = $(".uploadResult #card");
	
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
			dataType : 'json',
			success : function(result) {
				console.log(result);
				//alert(result);
				showUploadedFile(result); //JSON객체형식으로 온 결과 보여주기 함수 호출
				
				$(".uploadDiv").html(cloneObj.html()); //입력 성공후 입력전 상태로 만듬
			}
		}); //$.ajax
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
		
		let str = "";
		
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
				str += "<img class='mx-auto d-block' src='../images/realestate/attach.png' >";
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
				str += "<img class='mx-auto d-block' src='/display?fileName=" +fileCallPath+"'></a>"; //클릭 링크 이미지,직접 자원에 접근 못함
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
	
	/*썸네일 클릭시 모달로 보여주기*/
	function showImage(fileCallPath) {
		//<a>태그에서 직접 호출시 대비해서 jQuery밖에서 만듬	
		$('.imageModal .modal-body').html("<img class='modal_img' src='display?fileName=" 
					+ encodeURI(fileCallPath)+"&size=1' >");
		$(".imageModal").modal("show");		
	}
	

</script>	
</body>
</html>