<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<%@ include file="../include/header.jspf" %>

<div class="container mt-5 mb-5" id="mainContent">
	<div class="row">
	<div class="col-md-30">
		<div class="col-md-20">
			<div id="submain">
				<br/><br/>
				<br/><br/>

					<!-- 첨부 파일 리스트 출력 창 -->
	  				<div class="attach mt-5">
	  					<h5 class="text-center multiEffect text-success mb-5">첨부파일 수정</h5>
	  					<div class="row">
	  						<div class="form-group uploadDiv col-md-12">
	  							<label for="upload">&nbsp;&nbsp;&nbsp;&nbsp;파일 수정 및 업로드 : </label>
	  							<input type="file" class="form-control" id="upload" name="uploadFile" multiple="multiple"/>
	  							<!-- submit 버튼없이 change JS 이벤트로 처리  -->
	  						</div>
	  					</div>
	  				</div>
	  				
	  				<!-- 첨부파일 리스트 창 출력 -->
	  				<div class="uploadResult mt-5">
	  					<div class="row" id="card">
	  					</div>	  				
	  				</div>
				
				<h4 class="text-center text-success">게시글 수정</h4>
				
					<!-- 버튼 클릭을 처리하기 위해 form추가, 보이지 않게 설정해둠 -->
	  				<form id='operForm' action="modify_car" method="get">
	  					<input type="hidden" id="cno" name="cno"
	  						value='<c:out value="${car.cno}"/>'>
	  				</form>
				
  				<form id="mform" name="mform" action="modify_car" method="post">
  				
  				 	<br/><br/>
				
				 	<div class="form-group">
  				 		<label for="cno">번호 : </label>
  				 		<input type="text" class="form-control" id="cno" name="cno" readonly
  				 			value='<c:out value="${car.cno}"/>' />
  				 	</div>
  				 	
  				 	<div class="form-group">
  				 		<label for="writer">작성자 : </label>
  				 		<input type="text" class="form-control" id="writer" name="writer" readonly
  				 			value='<c:out value="${car.writer}"/>' />
  				 	</div>

  				 	<div class="form-group">
  				 		<label for="title">제목 : </label>
  				 		<input type="text" class="form-control" id="title" name="title" required="required"
  				 			value='<c:out value="${car.title}"/>' />
  				 	</div>
  				 	
  				 	<div class="form-group">
  				 		<label for="content">내용 : </label>
<textarea class="form-control" id="content" name="content" rows="10" required="required"><c:out value="${car.content}"/></textarea>
  				 	</div>

	  				<br/><br/>
	  					 
	  				<div class="form-group">
						<label for="carName">차량명 : </label>
						<input type="text" class="form-control" id="carName" name="carName" 
							required="required" value='<c:out value="${car.carName}"/>' />
					</div>

	  				<div class="form-group">
						<label for="carType">차종 : </label>
						<input type="text" class="form-control" id="carType" name="carType" 
							required="required" value='<c:out value="${car.carType}"/>' />
					</div>
	  				
	  				<div class="form-group">
						<label for="carYear">연식 : </label>
						<input type="text" class="form-control" id="carYear" name="carYear" 
							required="required" value='<c:out value="${car.carType}"/>' />
					</div>
	  				
	  				<div class="form-group">
						<label for="carPrice">금액 : </label>
						<input type="text" class="form-control" id="carPrice" name="carPrice" 
							required="required" value='<c:out value="${car.carPrice}"/>' />
					</div>

	  				<div class="form-group">
						<label for="carDate">차량 등록일 : </label>
						<input type="text" class="form-control" id="carDate" name="carDate" 
							required="required" value='<c:out value="${car.carDate}"/>' />
					</div>

	  				<div class="form-group">
						<label for="fuel">연료 : </label>
						<input type="text" class="form-control" id="fuel" name="fuel" 
							required="required" value='<c:out value="${car.fuel}"/>' />
					</div>
					
	  				<div class="form-group">
						<label for="disp">배기량 : </label>
						<input type="text" class="form-control" id="disp" name="disp" 
							required="required" value='<c:out value="${car.disp}"/>' />
					</div>

	  				<div class="form-group">
						<label for="kilos">키로수 : </label>
						<input type="text" class="form-control" id="kilos" name="kilos" 
							required="required" value='<c:out value="${car.kilos}"/>' />
					</div>

	  				<div class="form-group">
						<label for="mission">변속기 : </label>
						<input type="text" class="form-control" id="mission" name="mission" 
							required="required" value='<c:out value="${car.mission}"/>' />
					</div>
					
					<div class="form-group">
  				 		<label for="regDate">게시글 등록일 : </label>
  				 		<input type="text" class="form-control" id="regDate" name="regDate" readonly
  				 			value='<fmt:formatDate pattern="yyyy/MM/dd" value="${car.regDate}"/>' />
  				 	</div>

  				 	<div class="form-group">
  				 		<label for="updateDate">게시글 수정일 : </label>
  				 		<input type="text" class="form-control" id="updateDate" name="updateDate" readonly
  				 			value='<fmt:formatDate pattern="yyyy/MM/dd" value="${car.updateDate}"/>' />
  				 	</div>
  				
  				</form>
  				
  				<button type="button" data-oper='modify_car' class="btn btn-info">수정</button>&nbsp;&nbsp;
  				<button type="button" data-oper='remove_car' class="btn btn-danger">삭제</button>&nbsp;&nbsp;
  				<button type="button" data-oper='list_car' class="btn btn-primary">목록</button>
  				
  				<!-- data-oper 속성은 HTML 요소에 사용자 정의 데이터를 저장하기 위해 사용되는 속성으로, 
  					클라이언트 측 스크립트에서 해당 속성값을 활용하여 작업을 수행하거나 조건을 확인하는데 활용 한다. 
  				-->
  				
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../include/footer.jspf" %>

<script>
//첨부파일을 포함한 게시물 처리
$(function(){
	let formObj = $("#mform");
	
	$("button").on("click",function(e){
		e.preventDefault(); //이벤트가 일어난 버튼의 기본 동작을 제거
		
		let operation = $(this).data("oper");
		//data(data-의 뒷이름)메서드는 속성이 html5에 새롭게 추가된 data-속성값을 참조하여 값을 반환
		console.log("operation : "  + operation);
		
		if(operation == "remove_car") {
			
			if(confirm("정말 삭제 하시겠습니까? 삭제시 복구는 불가 합니다.")){
				alert("삭제 성공!");
			} else {
				alert("삭제 취소!");
				return false;
			}
			formObj.attr("action", "remove_car");
		}
		
		else if(operation == "list_car") {
			formObj.attr("action", "list_car").attr("method","get");
			//페이지 정보
			let pageNumTag = $("input[name='pageNum']").clone(); //복사를 해둔다.
			let amountTag = $("input[name='amount']").clone(); //복사를 해둔다.
			
			formObj.empty(); //formObj의 자식 엘리먼트를 모두 제거한다.
			
			//복사해둔 페이지 관련된 정보를 다시 추가한다.
			formObj.append(pageNumTag);
			formObj.append(amountTag);
		}
		else if(operation == 'modify_car'){
			console.log("submit clicked");
			
			let str = "";
			
			$(".uploadResult .card p").each(function(i, obj){
				let jobj = $(obj);
				
				console.dir(jobj);
				console.log("-------------------");
				console.log(jobj.data("filename"));
				
				str += "<input type='hidden' name='attachList["+i+"].fileName' value='" + jobj.data("filename") + "'>";
				str += "<input type='hidden' name='attachList["+i+"].uuid' value='" + jobj.data("uuid") + "'>";
				str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='" + jobj.data("path") + "'>";
				str += "<input type='hidden' name='attachList["+i+"].fileType' value='" + jobj.data("type") + "'>";
			});
			console.log(str);
			
			formObj.prepend(str).submit();
		}
		
		formObj.submit();
	});
});
</script>

<script>
//첨부물 list처리
$(document).ready(function(){
	//화면으로 이동하자 마자 리스트를 출력하므로 즉시 실행 함수로 처리
	(function(){
		let cno = '<c:out value="${car.cno}"/>';
		$.getJSON("getAttachList", {cno: cno}, function(arr){
		    
		      console.log(arr);	
		      
		      let str = "";
		      
		      $(arr).each(function(i, obj){
		    	  
		    	  if (!obj.fileType)  {					
						let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
						str += "<div class='card col-md-4'>";
						str += "<div class='card-body'>";
						str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
						str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'>";						
						str += "<img class='mx-auto d-block' src='../images/attach.png' >";
						str += "</p>";
						str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill'	data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
						
						str += "</div></div>";
													
					}
					else {
						
						let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid+"_"+obj.fileName); //주소창의 URI인코딩 형식 문자열
						let originPath = obj.uploadPath+ "\\"+obj.uuid +"_"+obj.fileName;
						originPath = originPath.replace(new RegExp(/\\/g),"/"); //\\를 /로 대체 
						//let originPath = obj.uploadPath+ "/"+obj.uuid +"_"+obj.fileName;  //위 2줄대신 바로 사용해도 됨
						
						str += "<div class='card col-md-4'>";
						str += "<div class='card-body'>";
						str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
						str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"'>";
						
						str += "<img class='mx-auto d-block' src='../car/display?fileName="+fileCallPath+"'>";
						str += "</p>";
						str += "<h4><span class='d-block w-50 mx-auto badge badge-secondary badge-pill' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";
						
						str += "</div></div>";							
					}		    	  
		      });
		      
		      $(".uploadResult #card").html(str);
		 });
	})();
	
	//삭제처리 span태그 클릭시 화면에서 제거 처리
	$(".uploadResult").on("click","span", function(e){
		   
		  let targetFile = $(this).data("file"); //파일 경로를 반환
		  let type = $(this).data("type");
		  console.log(targetFile);
		  
		  let targetLi = $(this).closest(".card"); //가장 가까운 엘리먼트
		  
		  targetLi.remove();
	});
});
</script>

<script>
//수정 첨부 파일 등록
$(document).ready(function(){
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	let maxSize = 5242880; //5MB
	let uploadUL = $(".uploadResult #card");
	
	$("input[type='file']").change(function(e){			
		let formData = new FormData(); //가상의 form엘리먼트 생성
		let inputFile = $("input[name='uploadFile']");
		let files = inputFile[0].files; 
		//첫번째 inputFile DOM의 files들 type이 file인경우 선택한 파일들(value값)
		console.log(files);
			
		for(let i = 0; i < files.length; i++)  {
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
					
				str += "<div class='card col-md-4'>";
				str += "<div class='card-body'>";
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";
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