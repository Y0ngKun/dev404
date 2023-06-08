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
		<h2>매물 내용</h2>
		<p class="sub_txt">매물 내용 입니다.</p>
		<div class="board_write_wrap">

				<div class="form-group">
					<label for="title" class="form_name">제목</label> 
					<input type="text" class="form-control" id="title" 
						name="title"  readonly="readonly" value='<c:out value="${board.title}"/>'>
				</div>
				<div class="form-group">
					<label for="town" class="form_name">지역</label> 
					<input type="text" class="form-control" id="town" 
						name="town"  readonly="readonly" value='<c:out value="${board.town}"/>'>
				</div>
				<div class="form-group">
					<label for="title" class="form_name">판매자</label> 
					<input type="text" class="form-control" id="writer" 
						name="writer"  readonly="readonly" value='<c:out value="${board.writer}"/>'>
				</div>
				<div class="form-group">
					<label for="title" class="form_name">룸타입</label> 
					<input type="text" class="form-control" id="roomType" 
						name="roomType"  readonly="readonly" value='<c:out value="${board.roomType}" />'>
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
				 
				<!--게시물 조회 후 다시 리스트 페이지로 돌아 갈 때 해당페이지로-->
				<form id='actionForm' action="../realestate/list" method='get'>
 	 				<input type='hidden' name='pageNum' value = '${cri.pageNum}'>
  					<input type='hidden' name='amount' value = '${cri.amount}'>
  					<input type='hidden' name='bno' value = '${board.bno}'>
				</form>
				
				
				<!-- 첨부물 처리 창 -->		
				<p><b>첨부파일</b></p>			
				<div class='uploadResult mt-3'>					
					<div class='row' id='card'>
					</div>  			
				</div>	
				
				<!-- btn -->
				<div class="btn_write_wrap">
					<button class="btn_write modBtn" type="button">
						<a href='../realestate/modify?bno=<c:out value="${board.bno}"/>'><span class="material-icons">check</span>&nbsp;수정하기</a>
					</button>
					&nbsp;
					<button class="btn_write listBtn" type="button">
						<a href='../realestate/list'><span class="material-icons">menu</span>&nbsp;목록보기</a>
					</button>
				</div><!-- //btn -->
				

		</div>
		<!-- //board_wrap -->
	</div>
	<!-- //board -->

<!-- imageModal -->
<%@ include file="../realestate/r_include/realestateModal.jsp"%>
	<!-- footer -->
	<div id="footer">
		<%@ include file="../include/footer.jspf"%>
	</div>
	<!-- //footer -->

<script>
<!--게시물 조회 후 다시 리스트 페이지로 돌아 갈 때 해당페이지로-->
var actionForm = $("#actionForm");
                        	
   $(".listBtn").click(function(e){
        e.preventDefault();
        actionForm.find("input[name='bno']").remove();
        actionForm.submit();
   });
                        	
   $(".modBtn").click(function(e){
        e.preventDefault();
        actionForm.attr("action","../realestate/modify");
        actionForm.submit();
    });
                     
                    
   $(document).ready(function(){
		(function(){
			let bno = '<c:out value="${board.bno}"/>';
			$.getJSON("getAttachList", {bno: bno}, function(arr){
			      console.log(arr);	
			      
			      let str = "";
			      
			      $(arr).each(function(i, obj){
			    	  
			    	  if (!obj.fileType)  {	
							let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
							
							str += "<div class='card col-md-3'>";
							str += "<div class='card-body'>";
							str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'>";
							str += "<a href='../upload/download?fileName=" + fileCallPath +"'>";						
							str += "<img class='mx-auto d-block' src='../images/attach.png' >";
							str += "</a>";
							str += "</p>";
							str += "</div>";
							str += "</div>";
							
						}				    	  
						else { 							
							let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid+"_"+obj.fileName);
							let originPath = obj.uploadPath+ "\\"+obj.uuid +"_"+obj.fileName; 
							originPath = originPath.replace(new RegExp(/\\/g),"/"); 
							
							str += "<div class='card col-md-3'>";
							str += "<div class='card-body'>";
							str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'>";
							str += "<a href=\"javascript:showImage(\'"+originPath+"\')\">"; 
							str += "<img class='mx-auto d-block' src='../upload/display?fileName=" +fileCallPath+"'></a>"; 
							str += "</p>";
							str += "</div>";
							str += "</div>";
						}
			    	  				    	  
			      });
			      
			      $(".uploadResult #card").html(str);
			 });
		})(); 
	});

	function showImage(fileCallPath) {
		$('.imageModal .modal-body').html("<img class='d-block w-75 mx-auto' src='../upload/display?fileName="+encodeURI(fileCallPath)+"&size=1'>");
	    $(".imageModal").modal("show");
	}
</script>	
</body>
</html>