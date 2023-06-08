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
		<h2>매물 수정하기</h2>
		<p class="sub_txt">매물 정보를 수정해주세요.</p>
		<div class="board_write_wrap">
			<form>
				<!-- 수정후 조회 페이지로  -->
				<input type='hidden' name='pageNum' value='${cri.pageNum}'/>
				<input type='hidden' name='amount' value='${cri.amount}'/>
				<!-- //수정후 조회 페이지로  -->
				<div class="form-group">
					<label for="title" class="form_name">번호</label> 
					<input type="text" class="form-control" id="bno" 
						placeholder="Enter Title" name="bno"  value='<c:out value="${board.bno}"/>' />
				</div>
						
				<div class="form-group">
					<label for="title" class="form_name">제목</label> 
					<input type="text" class="form-control" id="title" 
						placeholder="Enter Title" name="title"  value='<c:out value="${board.title}"/>' />
				</div>
				<div class="form-group">
					<label for="town" class="form_name">지역</label> 
					<input type="text" class="form-control" id="town" 
					placeholder="Enter town" name="town" value='<c:out value="${board.title}"/>'  />
				</div>
				<div class="form-group">
					<p class="form_name" class="form_name">판매자</p>
					<label><input type="radio" name="writer" value="직거래" ${board.writer eq '직거래' ? 'checked' : '' }>직거래</label> 
					<label><input type="radio" name="writer" value="중개인" ${board.writer eq '중개인' ? 'checked' : '' }>중개인</label> 
				</div>
				<div class="form-group">
					<label for="roomType" class="form_name">룸개수</label> <select name="roomType"
						class="form-control" id="roomType">
						<option value="" disabled selected>룸개수 선택하세요.</option>
						<option value="원룸" ${board.roomType eq '원룸' ? 'selected' : '' }>원룸</option>
						<option value="투룸" ${board.roomType eq '투룸' ? 'selected' : '' }>투룸</option>
						<option value="쓰리룸이상" ${board.roomType eq '쓰리룸이상' ? 'selected' : '' }>쓰리룸 이상</option>
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
					<button class="btn_write" data-oper='modify'><span class="material-icons">check</span>&nbsp;수정하기</button>
                    <button class="btn_write" data-oper='remove'><span class="material-icons">close</span>&nbsp;삭제하기</button>
                    <button class="btn_write" data-oper='list'><span class="material-icons">menu</span>&nbsp;목록보기</button>

				</div>
			</form>
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
	var formobj = $("form");
	
	$('.btn_write').click(function(e){
	
	e.preventDefault();
	
	var operation = $(this).data("oper");
	
	console.log(operation);
	
	if(operation === 'list'){
		formobj.attr("action","../realestate/list")
		.attr("method", "get");
		formobj.submit();
		
	}else if(operation === 'remove'){
		formobj.attr("action","../realestate/remove")
		.attr("method", "post");
		formobj.submit();
		
	}else if(operation === 'modify'){
		formobj.attr("action","../realestate/modify")
		.attr("method", "post");
		formobj.submit();
	}
	});
});
</script>	
</body>
</html>