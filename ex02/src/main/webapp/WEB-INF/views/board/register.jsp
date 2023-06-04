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

<%@include file="../include/header.jsp"%>

<!-- register 메인화면 -->
<div class="container mt-4 mb-4" id="mainContent" >
	<div class="row">
		<div class="col-md-2">
			<h4 class="wordArtEffect text-success pl-4">메뉴</h4>
			<nav class="navbar bg-dark navbar-dark container">
				<!-- RWD의 화면 축소시 나타나는 메뉴 버튼(상병계급장) -->
				<!-- d-md-none은 메뉴가 감추어지지 아노고 펼쳐지는 것 예방 -->
				<button class="navbar-toggler d-md-none" type="button" data-toggle="collapse" 
					data-target="#collapsibleVertical">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse d-md-block" id="collapsibleVertical">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="#">
								<i class="fas fa-home" style="font-size:30px;color:white;"></i>
							</a>
						</li>
						<li class="nav-item">
						 	<a class="nav-link" href="list">게시판 목록</a>
						 </li>
						 <li class="nav-item">
						 	<a class="nav-link" href="#">추후메뉴</a>
						 </li>						
					</ul>
				</div>	
			</nav>
		</div>
		<div class="col-md-10">
			<div id="submain">
				<h4 class="text-center wordArtEffect text-success">게시물 등록</h4>
				<form action="register" method="post" id="freg" name="freg" role="form">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<div class="form-group">
						<label for="title">제목:</label>
						<input type="text" class="form-control" id="title" placeholder="Enter Title" 
							name="title" required />		
					</div>
					<div class="form-group">
						<label for="content">내용:</label>
						<textarea class="form-control" id="content" placeholder="Enter Content" 
								name="content" rows="10" required></textarea>		
					</div>
					<div class="form-group">
						<label for="writer">작성자:</label>
						<input type="text" class="form-control" id="writer" name="writer" 
							value='<sec:authentication property="principal.username"/>' readonly />		
					</div>
					<button type="submit" class="btn btn-success">작성</button>&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger">취소</button>	&nbsp;&nbsp;
					<a id="listLink" href="list" class="btn btn-primary">목록보기</a>
				</form>
				
				<!-- 첨부파일 부분 -->
				<div class="attach mt-4">
					<h5 class="text-center wordArtEffect text-success mb-5">파일업로드(Ajax)</h5>
					<div class="row">						
						<div class="form-group uploadDiv col-md-12">
							<label for="upload">&nbsp;&nbsp;&nbsp;&nbsp;파일업로드:</label>
							<input type="file" class="form-control" id="upload" name="uploadFile" multiple /> <!-- submit버튼없이 change이벤트로 처리 -->
						</div>
					</div>	
						
					<div class='uploadResult mt-3'>					
						<div class='row' id='card'>
						</div>  			
					</div>															
					
				</div>
				
			</div> <!--submain  -->
		</div> <!-- col-md-10 -->
	</div> <!--row  -->
</div> <!-- maincontent -->

<%@ include file="../include/imageModal.jsp"%>

<%@include file="../include/footer.jsp"%>

<script>
$(document).ready(function(){
	
	let formObj = $("form[role='form']");
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	let maxSize = 5242880; //5MB
	
	let uploadUL = $(".uploadResult #card");
	
	let csrfHeaderName ="${_csrf.headerName}"; 
	let csrfTokenValue="${_csrf.token}";
	
	$(document).ajaxSend(function(e, xhr, options) { 
        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
    }); 
	
	$("button[type='submit']").on("click", function(e){
	    
	    e.preventDefault();
	    
	    console.log("submit clicked");
	    
	    let str = "";
	    
	    $(".uploadResult .card  p").each(function(i, obj){
	      
	      let jobj = $(obj);
	      
	      console.dir(jobj);
	      console.log("-------------------------");
	      console.log(jobj.data("filename"));
	      
	      
	      str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
	     
	    });	    
	   
	    console.log(str);
	    
	    formObj.prepend(str).submit();
	    
	});
	
	$("input[type='file']").change(function(e){			
		let formData = new FormData(); //가상의 form엘리먼트 생성
		let inputFile = $("input[name='uploadFile']");
		let files = inputFile[0].files; 
		//첫번째 inputFile DOM의 files들 type이 file인경우 선택한 파일들(value값)
		console.log(files);
			
		for(var i = 0; i < files.length; i++)  {
			if (!checkExtension(files[i].name, files[i].size)) {
				return false;
			}			
			formData.append("uploadFile", files[i]); 
			 //선택한 파일들을 input type="file" name="uploadFile" value="files[i]"로 만들어 붙이기
		}		
		
		$.ajax({
			//url: '../upload/uploadAjaxAction?${_csrf.parameterName}=${_csrf.token}',
			url: '../upload/uploadAjaxAction',
			processData: false,
			contentType: false,
			data: formData,
			type: 'POST',					
			//beforeSend: function(xhr) { 
		    //      xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		    //},		    
		    dataType : 'json', //생략해도 무방		    
			success : function(result) {
				console.log(result);
				showUploadResult(result);
				$("#upload").val(""); //파일 입력창 초기화
			},
			error : function() {
				alert("ajax upload failed");
			}
		});
	});
	
	$(".uploadResult").on("click", "span", function(e) { // 삭제 x클릭
		console.log("delete file");
		      
	    let targetFile = $(this).data("file");
		let type = $(this).data("type");
		
		let targetLi = $(this).closest(".card");
		
		$.ajax({
			//url: '../upload/deleteFile?${_csrf.parameterName}=${_csrf.token}',
			url : '../upload/deleteFile',
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
	
	function showUploadResult(uploadResultArr) {
		
		if(!uploadResultArr || uploadResultArr.length == 0)
			return;		
				
		$(uploadResultArr).each(function(i, obj) {
			let str ="";
			if(obj.image) {
				
				let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
				
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";
				//str += "<div>";
				//str += "<span>"+ obj.fileName+"</span><br/>";				
				str += "<img class='mx-auto d-block' src='../upload/display?fileName="+fileCallPath+"'>";
				//str += "<button type='button' data-file='"+fileCallPath+"'";
				//str += "data-type='image' class='btn'><i class='fa fa-times'></i></button><br/>";
				//str += "</div>";				
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";
				//str += "<p class='regAttach' class='mr-2 d-none' data-path='"+obj.uploadPath+"'";
				//str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>"; //form에 넣기 위함
				str += "</div></div>";				
			}
			else {
				
				let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
				let fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");				
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";	
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' >";
				//str += "<div><span> "+ obj.fileName+"</span><br/>";
				//str += "<button type='button' data-file='"+fileCallPath+"' data-type='file' class='btn' >" ;				
				//str += "<i class='fa fa-paperclip fa-2x' aria-hidden='true'>&nbsp;&nbsp;</i>";
				//str += "<i class='fa fa-times'></i></button>";
				str += "<img class='mx-auto d-block' src='../images/attach.png' >";
				//str += "</button>";				
				//str += "</div>";
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
				//str += "<p class='regAttach' class='mr-2 d-none' data-path='"+obj.uploadPath+"'"; //form에 넣기 위함
				//str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";
				str += "</div></div>";		
								
			}
			
			uploadUL.append(str);
		});		
	}
	
});
</script>
</body>
</html>