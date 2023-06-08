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

	<!-- board_list -->
	<div class="board">
		<h2>인기 부동산 직거래 게시글</h2>
		<div class="btn_list">
				<button type="button" id="write_btn">매물 등록하기</button>
			</div>
		<div class="board_list_wrap">
			<c:forEach items="${list}" var="board">
				<div class="item">
			  	<a class="move" href='<c:out value="${board.bno}"/>'>
			  		<article>
			  			<div class="room_img">
			  	
			  				<img src="../images/realestate/sample_room.jpg">
	
							
			  			</div>
			  			<div class="con">
			  				<p class="tit"><c:out value="${board.title}" /></p>
			  				<p class="town"><c:out value="${board.town}" /></p>
			  				<p class="price"><c:out value="${board.roomType}" /></p>
			  				<p class="regdate"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></p>
			  			</div>
			  		</article>
			  	</a>
			</div>
		</c:forEach>
		
		<!-- 페이징 -->
		<div class="pull-right">
			<ul class="pagination">
			
				<!-- 이전 -->
				<c:if test="${pageMaker.prev}">
				 <li class="page-item">
      				<a class="page-link" href="${pageMaker.startPage - 1}" aria-label="Previous">
        				<span aria-hidden="true">&laquo;</span>
      				</a>
    			</li>
    			</c:if>
    			<!-- 페이지번호 -->
				<c:forEach begin="${pageMaker.startPage}" 
							end="${pageMaker.endPage}" var="num">
					 <li class="page-item ${pageMaker.cri.pageNum == num? "active" : "" }">
					 	<a class="page-link" href="${num}">${num}</a></li>
				</c:forEach>
				<!-- 다음 -->
				<c:if test="${pageMaker.next}">
				<li class="page-item">
      				<a class="page-link" href="${pageMaker.endPage + 1}" aria-label="Next">
        				<span aria-hidden="true">&raquo;</span>
      				</a>
    			</li>
    			</c:if>
			</ul>
		</div><!-- 페이징 -->
		
		<form id='actionForm' action="../realestate/list" method='get'>
 	 		<input type='hidden' name='pageNum' value = '${pageMaker.cri.pageNum}'>
  			<input type='hidden' name='amount' value = '${pageMaker.cri.amount}'>
		</form>
		
		</div> <!-- //board_wrap -->
	</div><!-- //board -->
	<!-- //board -->

	<!-- footer -->
	<div id="footer">
		<%@ include file="../include/footer.jspf"%>
	</div>
	<!-- //footer -->

<!-- 모달창 -->
<div id="myModal" class="modal" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p>Modal body text goes here.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function() {
	
	var result = '<c:out value="${result}"/>';

		checkModal(result);

		history.replaceState({}, null, null);

		function checkModal(result) {

			if (result === '' || history.state) {
				return;
			}
			if (result === 'success') {
				$(".modal-body").html(
						"정상적으로 처리되었습니다.");
			} else if(parseInt(result) > 0) {
				$(".modal-body").html(
						"게시글 " + parseInt(result) + " 번이 등록되었습니다.");
				}
				$("#myModal").modal("show");
				}

	/*등록하기 버튼*/
	$("#write_btn").on("click", function(){
		self.location = "register";
	});
	
	/*페이징*/
    var actionForm = $("#actionForm");
    
    $(".page-link").on("click", function(e) {
      
      e.preventDefault();
      
      var targetPage = $(this).attr("href");
      
      console.log(targetPage);   
      
      actionForm.find("input[name='pageNum']").val(targetPage);
      actionForm.submit();
     
	});
    
    /*해당페이지로 돌아오기*/
    $(".move").on("click", function(e){
    	e.preventDefault();
    	
    	var targetBno = $(this).attr("href");
    	
    	console.log(targetBno);
    	
    	actionForm.append("<input type='hidden' name='bno' value='"+targetBno+"'>'");
    	actionForm.attr("action", "../realestate/get").submit();
    	
    });
 
});


</script>



</body>
</html>