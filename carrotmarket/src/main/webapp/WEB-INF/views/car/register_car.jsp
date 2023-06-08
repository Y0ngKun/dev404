<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- RWD -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9"/> 

<title>Insert title here</title>

<style>
.card img {
	width : 200px;
	height : 200px;
}
</style>

</head>
<body>

<%@ include file="../include/header.jspf" %>

<div class="container mt-5 mb-5 pl-0" id="content">
	<div class="row">
		<div class="col-md-30">
			<div class="col-md-20">
				<div id="submain">
					<br/><br/>
					<br/><br/>
				
					<!-- 파일 첨부 창 (추가) -->
					<div class="attach mt-5">
						<h1 class="text-center threeDEffect text-success mb-5">파일 업로드!</h1>
						<div class="row">
						
							<div class="form-group uploadDiv col-md-12">
								<label for="upload">&nbsp;&nbsp;&nbsp;&nbsp;FileUpload</label>
								<!-- 라벨의 for는 html 요소와 라벨 요소를 연결하는데 사용되는 속성,
								 -->
								<input type="file" class="form-control" id="upload" name="uploadFile" multiple="multiple"/>
							</div>
						</div>
					
					<!-- 업로드 된 파일의 결과를 보여 줄 창 (추가) -->
					<div class="uploadResult mt-5">
						
						<div class="row" id="card">
						</div>
					</div>
					
					<h3 class="text-center multiEffect text-success">게시글 (매물) 등록</h3>
		
				<form action="register_car" method="post" id="freg" name="freg" role="form" enctype="multipart/form-data">
					
					<div class="form-group">
						<label for="writer">작성자 : </label>
						<input type="text" class="form-control" id="writer" name="writer" placeholder="Writer" required="required">
					</div>
				
					<div class="form-group">
						<label for="title">제목 : </label>
						<input type="text" class="form-control" id="title" name="title" placeholder="Title" required="required">
					</div>
				
					<div class="form-group">
						<label for="content">내용 : </label>
						<textarea class="form-control" id="content" rows="10" name="content" required="required"></textarea>
					</div>
					
					<br/><br/>
					
					<div class="form-group">
						<label for="carName">차량명 : </label>
						<input type="text" class="form-control" id="carName" name="carName" placeholder="carname" required="required">
					</div>
				
					<div class="form-group">
						<label for="carType">차종 : </label>
						<input type="text" class="form-control" id="carType" name="carType" placeholder="cartype" required="required">
					</div>
					
					<div class="form-group">
						<label for="carYear">연식 : </label>
						<input type="text" class="form-control" id="carYear" name="carYear" placeholder="caryear" required="required">
					</div>
				
					<div class="form-group">
						<label for="carPrice">금액 : </label>
						<input type="text" class="form-control" id="carPrice" name="carPrice" placeholder="carprice" required="required">
					</div>
					
					<div class="form-group">
						<label for="carDate">등록일 : </label>
						<input type="text" class="form-control" id="carDate" name="carDate" placeholder="cardate" required="required">
					</div>
				
					<div class="form-group">
						<label for="fuel">연료 : </label>
						<input type="text" class="form-control" id="fuel" name="fuel" placeholder="fuel" required="required">
					</div>
				
					<div class="form-group">
						<label for="disp">배기량 : </label>
						<input type="text" class="form-control" id="disp" name="disp" placeholder="disp" required="required">
					</div>
				
					<div class="form-group">
						<label for="kilos">키로수 : </label>
						<input type="text" class="form-control" id="kilos" name="kilos" placeholder="kilos" required="required">
					</div>
					
					<div class="form-group">
						<label for="mission">변속기 : </label>
						<input type="text" class="form-control" id="mission" name="mission" placeholder="mission" required="required">
					</div>
				
					<button type="submit" class="btn btn-success">작성</button>&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger">취소</button>&nbsp;&nbsp;
					<a id="listLink" href="list_car" class="btn btn-primary">목록보기</a>
				
				</form>
				
					<!-- 테스트용 첨부파일 창 -->
					<!--  
					<form action="uploadFormAction" method="post" enctype="multipart/form-data">
						<input type="file" name="uploadFile" multiple="multiple">
					</form>
					-->

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function(){
	let formObj = $("form[role='form']"); //게시글 등록
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$"); //확장자를 지정 해둔것은 업로드를 제한 한다. 
	let maxSize = 5242880; //5MB, 파일의 최대 크기를 지정
	
	let uploadUL = $(".uploadResult #card");
	
	$("button[type='submit']").on("click", function(e){ //게시글 작성시 submit 버튼
		e.preventDefault();
	
		if(confirm("작성하시겠어요?")){
			alert("게시글 작성을 완료 하였습니다.");
		} else {
			alert("작성을 취소 합니다.");
		}
		
		console.log("submit clicked");
		
		let str = "";
		
		$(".uploadResult .card p").each(function(i, obj){
			
			let jobj = $(obj);
			
			console.dir(jobj);
			console.log("-----------");
			console.log(jobj.data("filename"));
			
			//List<BoardAttachVO> attachList;멤버변수로 수집됨
		      str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
		      str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
		      str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
		      str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
			
		      console.log(str);
		});
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
			url: '../car/uploadAjaxAction',
			processData: false,
			contentType: false,
			data: formData,
			type: 'POST',				    
		    dataType : 'json', //생략해도 무방	
		  //beforeSend: function(xhr) { 
		    //      xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		    //},	
			success : function(result) {
				console.log(result);
				//List<AttachFileDTO>가 결과로 옴
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
		      
	    let targetFile = $(this).data("file"); //삭제 파일 경로
		let type = $(this).data("type");
		
		let targetLi = $(this).closest(".card");
		
		$.ajax({
			//url: '../upload/deleteFile?${_csrf.parameterName}=${_csrf.token}',
			url : '../car/deleteFile',
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
				str += "<div class='card col-md-4'>";
				str += "<div class='card-body'>";
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";						
				str += "<img class='mx-auto d-block' src='../car/display?fileName="+fileCallPath+"'>";						
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";				
				str += "</div></div>";				
			}
			else {
				
				let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
				let fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");				
				str += "<div class='card col-md-4'>";
				str += "<div class='card-body'>";	
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' >";
				str += "<img class='mx-auto d-block' src='../images/attach.png' >";				
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
				str += "</div></div>";		
			}
			uploadUL.append(str);
		});		
	}
});
</script>

</body>
</html>