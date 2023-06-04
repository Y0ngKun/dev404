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
					</ul>
				</div>	
			</nav>
		</div>
		<div class="col-md-10">
			<div id="submain">
				<h4 class="text-center wordArtEffect text-success">게시글 수정</h4>
				<form  id="mform" name="mform" action="modify" method="post">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<!-- 페이지 관련 정보 추가 -->
					<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
        			<input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
        			<!-- 검색 적용 -->	
        			<input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
					<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>				
					<div class="form-group">
						<label for="bno">번호:</label>
						<input type="text" class="form-control" id="bno" name="bno" readonly value='<c:out value="${board.bno }"/>' />		
					</div>
					<div class="form-group">
						<label for="title">제목:</label>
						<input type="text" class="form-control" id="title" name="title" value='<c:out value="${board.title }"/>'/>		
					</div>
					<div class="form-group">
						<label for="content">내용:</label>
						<textarea class="form-control" id="content" name="content" rows="10" >
							<c:out value="${board.content}" />
						</textarea>		
					</div>
					<div class="form-group">
						<label for="writer">작성자:</label>
						<input type="text" class="form-control" id="writer" name="writer" readonly value='<c:out value="${board.writer }"/>'/>		
					</div>
					<div class="form-group">
						<label for="regDate">게시일:</label>
						<input type="text" class="form-control" id="regDate" name="regDate" 
							value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${board.regDate}" />'  readonly/>		
					</div>
					<div class="form-group">
						<label for="updateDate">수정일:</label>
						<input type="text" class="form-control" id="updateDate" name="updateDate" 
							value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${board.updateDate}" />'  readonly/>		
					</div>
					<sec:authentication property="principal" var="pinfo"/>
					<sec:authorize access="isAuthenticated()">
						<c:if test="${pinfo.username eq board.writer}">
							<button type="submit" data-oper='modify' class="btn btn-info">Modify</button>&nbsp;&nbsp;
  							<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>&nbsp;&nbsp;	  
						</c:if>
					</sec:authorize>											
					<button type="submit" data-oper='list' class="btn btn-success">List</button>					
				</form>
				
				<!-- 첨부파일 부분 -->
				<div class="attach mt-4">
					<h5 class="text-center wordArtEffect text-success mb-5">첨부파일 수정(Ajax)</h5>
					<div class="row">						
						<div class="form-group uploadDiv col-md-12">
							<label for="upload">&nbsp;&nbsp;&nbsp;&nbsp;파일수정업로드:</label>
							<input type="file" class="form-control" id="upload" name="uploadFile" multiple /> <!-- submit버튼없이 change이벤트로 처리 -->
						</div>
					</div>	
						
					<div class='uploadResult mt-3'>					
						<div class='row' id='card'>
						</div>  			
					</div>															
					
				</div>
			</div><!-- submain -->
		</div> <!-- col-md-10 -->
	</div> <!-- row -->
</div> <!-- mainContent -->

<%@include file="../include/footer.jsp"%>

<script>
$(function(){
	let formObj = $("#mform");
	
	$("button").on("click",function(e){
		e.preventDefault(); //이벤트가 일어난 버튼의 기본 동작을 제거
		let operation = $(this).data("oper");
		//data(data-의 뒷이름)메서드는 속성이 html5에 새롭게 추가된 data-속성값을 참조하여 값을 반환
		console.log("operation : "  + operation);
		if(operation == "remove") {
			formObj.attr("action","remove");
		}
		else if(operation == "list") {
			formObj.attr("action", "list").attr("method","get");
			//페이지 정보
			let pageNumTag = $("input[name='pageNum']").clone(); //복사해둠
		    let amountTag = $("input[name='amount']").clone();
			//검색정보
		    let keywordTag = $("input[name='keyword']").clone();
		    let typeTag = $("input[name='type']").clone();
		    
			formObj.empty(); //formObj의 자식 엘리먼트를 모두 제거(4개포함 게시판 컬럼)
			//복사해둔 페이지 관련 정보를 다시 추가
			formObj.append(pageNumTag); //자식으로 붙여쓰기
		    formObj.append(amountTag);
		    formObj.append(keywordTag);
		    formObj.append(typeTag);	       
		}
		else if(operation == 'modify') {
			 console.log("submit clicked");
			 
		     let str ="" ;  
		     
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
		}
		
		formObj.submit();
	});
	
});
</script>

<!-- 첨부물 처리 자바스크립트 -->
<script>
	$(document).ready(function(){
		//즉시실행함수(1회)
		(function(){
			let bno = '<c:out value="${board.bno}"/>';
			$.getJSON("getAttachList", {bno: bno}, function(arr){
			    
			      console.log(arr);	
			      
			      let str = "";
			      
			      $(arr).each(function(i, obj){
			    	  
			    	  if (!obj.fileType)  {					
							let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
							//str += "<li class='list-group-item mr-2'><i class='fa fa-paperclip fa-2x' aria-hidden='true'></i> " + obj.fileName + "</li>";	
							str += "<div class='card col-md-3'>";
							str += "<div class='card-body'>";
							str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
							str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'>";
							//str += "<a href='../upload/download?fileName=" + fileCallPath +"'>";
							//str += "<i class='fa fa-paperclip fa-2x' aria-hidden='true'></i>" + obj.fileName + "</a>";
							str += "<img class='mx-auto d-block' src='../images/attach.png' >";
							str += "</p>";
							str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
							//str += "<p class='regAttach' class='mr-2 d-none' data-path='"+obj.uploadPath+"'";
						    //str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'></p>"; //form에 넣기 위함
							str += "</div></div>";
														
						}
						else {
							//str += "<li>" + obj.fileName + "</li>";
							let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid+"_"+obj.fileName); //주소창의 URI인코딩 형식 문자열
							let originPath = obj.uploadPath+ "\\"+obj.uuid +"_"+obj.fileName;
							originPath = originPath.replace(new RegExp(/\\/g),"/"); //\\를 /로 대체 
							//let originPath = obj.uploadPath+ "/"+obj.uuid +"_"+obj.fileName;  //위 2줄대신 바로 사용해도 됨
							
							str += "<div class='card col-md-3'>";
							str += "<div class='card-body'>";
							str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
							str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'>";
							//str += "<a href=\"javascript:showImage(\'"+originPath+"\')\">";  //서버밖의 폴더에는 직접접근이 불가능해서 여기서 link로 접근 못함					
							// <a href="javascript:showImage('xxxx')" 함수 호출이 아닌 문자열 만들기 이므로 ''필요					
							//str += "<img src='../upload/display?fileName=" +fileCallPath+"'></a>";
							str += "<img class='mx-auto d-block' src='../upload/display?fileName="+fileCallPath+"'>";
							str += "</p>";
							str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";
							//str += "<p class='regAttach' class='mr-2 d-none' data-path='"+obj.uploadPath+"'";
						    //str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'></p>"; //form에 넣기 위함
							str += "</div></div>";							
						}
			    	  /*
			    	  if(obj.fileType) {
			    		  let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
			    		  str += "<div class='card col-md-3'>";
						  str += "<div class='card-body'>";
						  str += "<p class='mr-2' data-path='"+obj.uploadPath+"'";
						  str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";
						  str += "<div>";
						  str += "<span>"+ obj.fileName+"</span><br/>";				
						  str += "<img width='100' height='100' src='../upload/display?fileName="+fileCallPath+"'>";
						  str += "<button type='button' data-file='"+fileCallPath+"'";
						  str += "data-type='image' class='btn'><i class='fa fa-times'></i></button><br/>";
						  str += "</div>";				
						  str += "</p>";
						  //str += "<p class='regAttach' class='mr-2 d-none' data-path='"+obj.uploadPath+"'";
					      //str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'></p>"; //form에 넣기 위함
						  str += "</div></div>";		
			    	  }
			    	  else {
			    		  let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
						  let fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
							
						  str += "<div class='card col-md-3'>";
						  str += "<div class='card-body'>";	
						  str += "<p class='mr-2'" ;
						  str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' >";
						  str += "<div><span> "+ obj.fileName+"</span><br/>";
						  str += "<button type='button' data-file='"+fileCallPath+"' data-type='file' class='btn' >" ;				
						  str += "<i class='fa fa-paperclip fa-2x' aria-hidden='true'>&nbsp;&nbsp;</i>";
						  str += "<i class='fa fa-times'></i></button>";
					      str += "</div>";
						  str += "</p>";
						  //str += "<p class='regAttach' class='mr-2 d-none' data-path='"+obj.uploadPath+"'"; //form에 넣기 위함
						  //str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";
						  str += "</div></div>";	
			    	  }				           
			    	  */
			      });
			      
			      $(".uploadResult #card").html(str);
			 });
		})();
		
		$(".uploadResult").on("click","span", function(e){
			   
			  var targetFile = $(this).data("file");
			  var type = $(this).data("type");
			  console.log(targetFile);
			  
			  let targetLi = $(this).closest(".card");
			  
			  targetLi.remove();
			  
			  /*
			  $.ajax({
			    url: '../upload/deleteFile',
			    data: {fileName: targetFile, type:type},
			    dataType:'text',
			    type: 'POST',
			    success: function(result){
			         //alert(result);
			    	targetLi.remove();
			   }
			 }); 
			  */
			  
		});	
		
		
	});
	
	//외부에서 get으로 호출
	/*
	function showImage(fileCallPath) {
		//<a>태그에서 직접 호출시 대비
		//alert(fileCallPath);
		
		
		//$(".bigPictureWrapper").css("display","block").show();
		
		//$(".bigPicture")
		 // .html("<img class='d-block w-75 mx-auto' src='display?fileName="+ encodeURI(fileCallPath)+"'>")
		 // .animate({width:'100%', height: '100%'}, 1000);
		
		 $('.imageModal .modal-body').html("<img class='d-block w-75 mx-auto' src='../upload/display?fileName="+encodeURI(fileCallPath)+"&size=1' >")

         $(".imageModal").modal("show");
	}
	*/
</script>

<script>
//수정 첨부 파일 등록
$(document).ready(function(){
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	let maxSize = 5242880; //5MB
	let uploadUL = $(".uploadResult #card");
	
	let csrfHeaderName ="${_csrf.headerName}"; 
	let csrfTokenValue="${_csrf.token}";
	
	$(document).ajaxSend(function(e, xhr, options) { 
        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
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
		
		if(!uploadResultArr || uploadResultArr.length == 0) {
			uploadUL.append("");
			return;
		}
					
				
		$(uploadResultArr).each(function(i, obj) {
			let str ="";
			if(obj.image) {
								
				let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid+"_"+obj.fileName); //주소창의 URI인코딩 형식 문자열
				let originPath = obj.uploadPath+ "\\"+obj.uuid +"_"+obj.fileName;
				originPath = originPath.replace(new RegExp(/\\/g),"/"); //\\를 /로 대체 
				//let originPath = obj.uploadPath+ "/"+obj.uuid +"_"+obj.fileName;  //위 2줄대신 바로 사용해도 됨
				
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";
				//str += "<a href=\"javascript:showImage(\'"+originPath+"\')\">";  //서버밖의 폴더에는 직접접근이 불가능해서 여기서 link로 접근 못함					
				// <a href="javascript:showImage('xxxx')" 함수 호출이 아닌 문자열 만들기 이므로 ''필요					
				//str += "<img src='../upload/display?fileName=" +fileCallPath+"'></a>";
				str += "<img class='mx-auto d-block' src='../upload/display?fileName="+fileCallPath+"'>";
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";
				//str += "<p class='regAttach' class='mr-2 d-none' data-path='"+obj.uploadPath+"'";
			    //str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'></p>"; //form에 넣기 위함
				str += "</div></div>";
				
			}
			else {
				
				let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
				//str += "<li class='list-group-item mr-2'><i class='fa fa-paperclip fa-2x' aria-hidden='true'></i> " + obj.fileName + "</li>";	
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";
				//str += "<a href='../upload/download?fileName=" + fileCallPath +"'>";
				//str += "<i class='fa fa-paperclip fa-2x' aria-hidden='true'></i>" + obj.fileName + "</a>";
				str += "<img class='mx-auto d-block' src='../images/attach.png' >";
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
				//str += "<p class='regAttach' class='mr-2 d-none' data-path='"+obj.uploadPath+"'";
			    //str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'></p>"; //form에 넣기 위함
				str += "</div></div>";
				
				/*
				let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
				let fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
				
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";	
				str += "<p class='mr-2'" ;
				str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' >";
				str += "<div><span> "+ obj.fileName+"</span><br/>";
				str += "<button type='button' data-file='"+fileCallPath+"' data-type='file' class='btn' >" ;				
				str += "<i class='fa fa-paperclip fa-2x' aria-hidden='true'>&nbsp;&nbsp;</i>";
				str += "<i class='fa fa-times'></i></button>";
				str += "</div>";
				str += "</p>";
				str += "<p class='regAttach' class='mr-2 d-none' data-path='"+obj.uploadPath+"'"; //form에 넣기 위함
				str +=  "data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";
				str += "</div></div>";	
				*/
				
				/*
				str += "<li ";
				str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
				str += "<span> "+ obj.fileName+"</span>";
				str += "<button type='button' data-file='"+fileCallPath+"' data-type='file' " ;
				str += "class='btn'><i class='fa fa-times text-white'></i></button><br>";
				str += "<img width='100' height='100' src='../images/attach.png'></a>";
				str += "</div>";
				str +"</li>";
				*/
			}
			
			uploadUL.append(str);
		});		
	}
});
</script>
</body>
</html>