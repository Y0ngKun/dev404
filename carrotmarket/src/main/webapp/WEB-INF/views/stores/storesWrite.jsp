<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../include/header.jspf"%>

<!-- register 메인화면 -->
<div class="container mt-4 mb-4" id="mainContent" >
	<div class="row">
		<div class="col-md-2">
		
		</div>
		<div class="col-md-10">
			<div id="submain">
				<h4 class="text-center wordArtEffect text-success">게시물 등록</h4>
				
				
				
				<!-- 파일 첨부 창 -->				
				<div class="attach mt-4">
					<div class="row">						
						<div class="form-group uploadDiv col-md-12">
							
							<input type="file" class="form-control" id="upload" name="uploadFile" multiple /> 
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
					
					<!--  
					시큐리티 부분
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					-->
					
					<!-- 토큰 정보를 숨겨서 보냄 -->
					<div class="form-group">
						<label for="title">제목:</label>
						<input type="text" class="form-control" id="title" placeholder="Enter Title" 
							name="title" required />		
					</div>
					<div class="form-group">
						<label for="content">내용:</label>
						<textarea class="form-control" id="content" placeholder="Enter Content" 
								name="content" rows="10" required>
						</textarea>		
					</div>
					<!--시큐리티 적용전  
					<div class="form-group">
						<label for="writer">작성자:</label>
						<input type="text" class="form-control" id="writer" name="writer" />		
					</div>
					-->
					<div class="form-group">
						<label for="writer">작성자:</label>
						<input type="text" class="form-control" id="writer" name="writer" />		
					</div>
					
					<button type="submit" class="btn btn-success">작성</button>&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger">취소</button>	&nbsp;&nbsp;
					<a id="listLink" href="list" class="btn btn-primary">목록보기</a>
				</form>
				
				
			</div><!-- submain -->
		</div><!-- col-md-10 -->
	</div> <!-- row -->
</div><!-- mainContent -->

<%@include file="../include/footer.jspf"%>

<script type="text/javascript">
$(document).ready(function(){
	
	let formObj = $("form[role='form']"); //게시글 작성 등록
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$"); //확장자가 지정된 것은 업로드 제한
	let maxSize = 5242880; //5MB 파일 최대 크기
	
	let uploadUL = $(".uploadResult #card");
	
	$("button[type='submit']").on("click", function(e){  //게시글작성 submit버튼
	    
	    e.preventDefault();
	    
	    console.log("submit clicked");
	    
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
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";				
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
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
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
			url : '../storesWrite/deleteFile',
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

</body>
</html>