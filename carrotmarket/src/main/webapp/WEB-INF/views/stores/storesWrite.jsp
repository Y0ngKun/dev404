<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../include/header.jspf"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

 <style type="text/css">
    .container {
      max-width: 768px !important;
      font-size: 18px;
    }

    input {
      padding: 14px !important;
    }

  input::placeholder,
  textarea::placeholder {
  	font-size:15px;
    color: #eaebee !important; 
  }
  </style>
  

<!-- register 메인화면 -->
<div class="container" id="mainContent" >
		<div>
			<div id="submain">
				<h4 class="text-center wordArtEffect text-success"> <strong style="color: #ff6f0f; font-size: 31px; font-weight: bolder;"> 우리가게 등록하기</strong></h4>
				 
				<!-- 파일 첨부 창 -->				
				<div class="attach mt-4">
					<div class="row">						
						<div class="form-group uploadDiv">
							<label for="upload"><strong>상점 이미지를 등록해주세요</strong> </label>
							<input type="file" class="form-control" id="upload" name="uploadFile" multiple="multiple" style="paddin: 10px;" /> 
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
								
				<form action="/ex02/storesWrite" method="post" id="freg" name="freg" role="form">
					
					<div class="form-group" style="margin-top: 7px;">
						<label for="notice"><strong>알림 사항 : </strong></label>
						<input type="text" class="form-control" id="notice" placeholder="안내 사항이나 전달 사항을 알려주세요" 
							name="notice" required />		
					</div>
			
					<div class="form-group">
					<label for="content" style="margin-top: 5px;"><strong>가게 정보 : </strong></label><textarea class="form-control" id="content" placeholder="우리 가게를 소개해주세요" name="content" rows="20" style="width: 100%; margin-bottom: 15px;" required></textarea>
					
</div>
					<div class="form-group">
						<label for="customBenefit"><strong>단골 혜택 : </strong></label>
						<input type="text" class="form-control" id="customBenefit" name="customBenefit" placeholder="당근 마켓을 보고 왔을 때 혜택을 알려주세요!" />		
					</div>
					
					
					<div class="form-group">
						<label for="storesLocation"><strong>가게 위치 : </strong></label>
						<input type="text" class="form-control" id="storesLocation" name="storesLocation" />		
					</div>	
					
					
					
					
					<div class="form-group">
						<label for="writer"><strong>작성자 : </strong></label>
						<input type="text" name="storeName" value="${usernickname}" class="form-control" id=storeName readonly="readonly"  />		
					</div>
					
					<div>
					<input type="hidden" name="writer" value="${loginUser}">
					</div>
					
					<!-- 버튼 영역 -->
					<div class="container text-center">
					<button type="submit" class="btn" style="color:#fff; ; font-size: 15px; background-color: #ff6f0f; padding: 9px;">작성</button>&nbsp;&nbsp;
					<button type="reset" class="btn" style="color:#fff; ; font-size: 15px; background-color: #ff6f0f; padding: 9px;margin-left: 10px;">취소</button>	&nbsp;&nbsp;
					<a id="listLink" href="/ex02/stores/stores" class="btn" style="color:#fff; ; font-size: 15px; background-color: #ff6f0f; padding: 9px; margin-left: 50px;">목록 보기</a>
					</div>
				</form>
				
			</div><!-- submain -->
		</div><!-- col-md-10 -->
</div><!-- mainContent -->

<%@include file="../include/footer.jspf"%>


<script type="text/javascript">
$(document).ready(function(){
	
	let formObj = $("form[role='form']"); //게시글 작성 등록
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$"); //확장자가 지정된 것은 업로드 제한
	let maxSize = 25242880; //25MB 파일 최대 크기
	
	let uploadUL = $(".uploadResult #card");
	
	$("button[type='submit']").on("click", function(e){  //게시글작성 submit버튼
	    
	    e.preventDefault();
	    
	    console.log("회원 가입 창 submit 버튼 클릭함");
	    
	    let str = "";
	    
	    $(".uploadResult .card  p").each(function(i, obj){
	      
	      let jobj = $(obj);
	      
	      console.dir(jobj);
	      console.log("-------------------------");
	      console.log(jobj.data("filename"));
	      
	      //List<BoardAttachVO> attachList;멤버변수로 수집됨
	      str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
	      str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
	     
	    });	    
	   
	    console.log(str);
	    
	    formObj.prepend(str).submit();
	    
	});
	
//여기!!!!!!!!!!!!!!!!!!!!
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
		url: '../ex02/storesWrite/uploadAjaxAction',
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
			//List<AttachFileDTO>가 결과로 옴
			showUploadResult(result);
			$("#upload").val(""); //파일 입력창 초기화
		},
		error : function() {
			alert("ajax upload failed");
		}
	});
});

	
//ajax로 이미지 업로드 성공시 하단에 업로드된 이미지 보여주기
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
			str += "<img class='mx-auto d-block' src='../ex02/storesWrite/display?fileName="+fileCallPath+"'>";						
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
	
	

	
$(".uploadResult").on("click", "span", function(e) { // 삭제 x클릭
	console.log("delete file");
	      
    let targetFile = $(this).data("file"); //삭제 파일 경로
	let type = $(this).data("type");
	
	let targetLi = $(this).closest(".card");
	
	$.ajax({
		//url: '../upload/deleteFile?${_csrf.parameterName}=${_csrf.token}',
		url : '../member/deleteFile',
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
	
	
});
</script>
</body>

</html>