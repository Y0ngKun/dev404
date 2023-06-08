<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>index</title>

<!-- 부동산 직거래 -->	
<link rel="stylesheet" href="../css/realestate.css?after">
<!--google icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<!-- header -->
	<%@ include file="../include/header.jspf"%>
	<!-- //header -->

	<!-- top_banner -->
	<%@ include file="../realestate/r_include/top_banner.jsp"%>
	<!-- //top_banner -->

	<!-- board -->
	<div class="board">
		<h2>매물 등록하기</h2>
		<p class="sub_txt">매물 정보를 입력해주세요.</p>
		<div class="board_write_wrap">
			<form action="register" method="post" id="freg" name="freg" role="form">
				<div class="form-group">
					<label for="title">제목</label> 
					<input type="text" class="form-control" id="title" name="title" required />
				</div>
				<div class="form-group">
					<label for="town">지역</label> 
					<input type="text" class="form-control" id="town" name="town" required />
				</div>
				<div class="form-group">
					<p class="form_name">판매자</p>
					<label><input type="radio" name="writer" value="직거래">직거래</label> 
					<label><input type="radio" name="writer" value="중개인">중개인</label> 
				</div>
				<div class="form-group">
					<label for="roomType">룸개수</label> 
					<select name="roomType" class="form-control" id="roomType">
						<option value="" disabled selected>룸개수 선택하세요.</option>
						<option value="원룸">원룸</option>
						<option value="투룸">투룸</option>
						<option value="쓰리룸이상">쓰리룸 이상</option>
					</select>
				</div>
				<!-- 
				<div class="form-group">
					<label for="status">상태(판매중,판매완료)</label> <input type="text"
						class="form-control" id="status" placeholder="Enter status"
						name="status" required />
				</div>
				<div class="form-group">
					<label for="price">가격</label> <input type="text"
						class="form-control" id="price" placeholder="Enter price"
						name="price" required />
				</div>
				<div class="form-group">
					<label for="area">면적</label> <input type="text"
						class="form-control" id="area" placeholder="Enter area"
						name="area" required />
				</div>
				<div class="form-group">
					<label for="structure">방/욕실수</label> <input type="text"
						class="form-control" id="structure" placeholder="Enter structure"
						name="structure" required />
				</div>
				<div class="form-group">
					<label for="floor">층</label> <input type="text"
						class="form-control" id="floor" placeholder="Enter floor"
						name="floor" required />
				</div>
				<div class="form-group">
					<label for="loan">대출가능여부</label> <input type="text"
						class="form-control" id="loan" placeholder="Enter loan"
						name="loan" required />
				</div>
				<div class="form-group">
					<label for="moveInDate">입주 가능일</label> <input type="text"
						class="form-control" id="moveInDate"
						placeholder="Enter moveInDate" name="moveInDate" required />
				</div>
				<div class="form-group">
					<label for="pet">반려동물</label> <input type="text"
						class="form-control" id="pet" placeholder="Enter pet" name="pet"
						required />
				</div>
				<div class="form-group">
					<label for="parking">주차</label> <input type="text"
						class="form-control" id="parking" placeholder="Enter parking"
						name="parking" required />
				</div>
				<div class="form-group">
					<label for="elevator">엘리베이터</label> <input type="text"
						class="form-control" id="elevator" placeholder="Enter elevator"
						name="elevator" required />
				</div>
				<div class="form-group">
					<label for="content">내용</label>
					<textarea class="form-control" id="content"
						placeholder="Enter Content" name="content" rows="10" required></textarea>
				</div>
				 -->
				 
			
				<!-- btn -->
				<div class="btn_write_wrap">
					<button type="submit" class="btn_write">
						<span class="material-icons">check</span>&nbsp;작성
					</button>
					&nbsp;
					<button type="reset" class="btn_write">
						<span class="material-icons">close</span>&nbsp;취소
					</button>
					&nbsp;
					<button onclick="location.href='list'" class="btn_write">
						<span class="material-icons">menu</span>&nbsp;목록보기
					</button>

				</div>

			</form>
		<!-- 첨부파일 -->
		<div class="uploadDiv">
					<input type="file" name="uploadFile" multiple />
				</div>				
				<!-- 업로드 결과 창 -->					
				<div class='uploadResult'>					
					<div class='row' id='card'>
					<!-- class="card"로 만들것 -->
					</div>  
				</div>
		</div>		
		<!-- //board_wrap -->
	</div>
	<!-- //board -->
	<!-- //board -->

	<!-- footer -->
	<div id="footer">
		<%@ include file="../include/footer.jspf"%>
	</div>
	<!-- //footer -->

<script>
$(document).ready(function(){
	
	let formObj = $("form[role='form']"); 
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	let maxSize = 5242880;
	
	let uploadUL = $(".uploadResult #card");
	
	
	
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
		let formData = new FormData(); 
		let inputFile = $("input[name='uploadFile']");
		let files = inputFile[0].files; 
		
		console.log(files);
			
		for(var i = 0; i < files.length; i++)  {
			if (!checkExtension(files[i].name, files[i].size)) {
				return false;
			}			
			formData.append("uploadFile", files[i]); 
			 
		}		
		
		$.ajax({
			
			url: '../upload/uploadAjaxAction',
			processData: false,
			contentType: false,
			data: formData,
			type: 'POST',				    
		    dataType : 'json',
			success : function(result) {
				console.log(result);
				
				showUploadResult(result);
				$("#upload").val(""); 
			},
			error : function() {
				alert("파일업로드");
			}
		});
	});
	
	$(".uploadResult").on("click", "span", function(e) { 
		console.log("delete file");
		      
	    let targetFile = $(this).data("file"); 
		let type = $(this).data("type");
		
		let targetLi = $(this).closest(".card");
		
		$.ajax({
			url : '../upload/deleteFile',
		    data: {fileName: targetFile, type:type},
		    dataType:'text',
		    type: 'POST',		    
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
				str += "<img class='mx-auto d-block' src='../upload/display?fileName="+fileCallPath+"'>";						
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
});
</script>
</body>
</html>