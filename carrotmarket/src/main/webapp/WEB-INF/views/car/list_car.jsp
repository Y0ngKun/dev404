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
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9" />

</head>
<body>

<%@ include file="../include/header.jspf"%>

<div class="container mt-5 mb-5" id="mainContent">
	<div class="row">
		<div class="col-md-30">
			<div class="container mt-10 mb-10 p-0 m-0 mx-auto">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<!-- Indicators -->
					<ul class="carousel-indicators ">
						<li data-target="#myCarousel" data-slide-to="0"
							class="active bg-danger"></li>
						<li data-target="#myCarousel" data-slide-to="1"
							class=" bg-danger"></li>
						<li data-target="#myCarousel" data-slide-to="2"
							class=" bg-danger"></li>
					</ul>

					<!-- The slideshow -->
					<div class="carousel-inner ">
						<div class="carousel-item active">
							<img src="../images/bmw520d.jpg" alt="Los Angeles" class="d-block mx-auto">
							<div class="carousel-caption">
								<h1>최근 인기 매물 TOP-1</h1>
								<p>BMW - 520d</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="../images/펠리세이드.jpg" alt="Chicago" class="d-block mx-auto ">
							<div class="carousel-caption">
								<h1>최근 인기 매물 TOP-2</h1>
								<p>현대 - 펠리세이드</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="../images/그랜저.jpg" alt="New York" class="d-block mx-auto ">
							<div class="carousel-caption">
								<h1>최근 인기 매물 TOP-3</h1>
								<p>현대 - 그랜저</p>
							</div>
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="carousel-control-prev bg-primary" href="#myCarousel"
						data-slide="prev"> <span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next bg-primary" href="#myCarousel"
						data-slide="next"> <span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>

			<!--  
			<h2>TITLE HEADING</h2>
			<h5>Title description, Dec 7, 2017</h5>
			<div class="fakeimg">
				<img src="../images/스포티지.png" class="w-100 h-100" />
			</div>
			<p>Some text..</p>
			<p>Some text.. Some text.. Some text..</p>
			<br />
			<h2>TITLE HEADING</h2>
			<h5>Title description, Dec 7, 2017</h5>
			<div class="fakeimg">
				<img src="../images/qm6.jpg" class="w-100 h-100" />
			</div>
			<p>Some text..</p>
			<p>Some text.. Some text.. Some text..</p>
			<br />
			-->
			
		</div>
	</div>
</div>

<!-- 리스트 영역 -->
<main>
<section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">인기 중고차 매물!</h1>
        <p class="lead text-muted">최근 인기있는 매물들을 소개 합니다!!</p>
        <p>
        <!-- 
          <a href="#" class="btn btn-primary my-2">Main call to action</a>
          <a href="#" class="btn btn-secondary my-2">Secondary action</a>
         -->
        </p>

      <!-- 게시글 등록 -->
      <div>
			<button type="button" class="btn btn-primary float-center mb-3" id="regBtn">게시글 등록</button>
	  </div>

      </div>
    </div>
</section>

  <div class="album py-5 bg-light">
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">				
		
		<c:forEach items="${list_car}" var="car">        
        <div class="col">
          <div class="card shadow-sm">
            <svg style="background: url(display/${car.cno});background-repeat: no-repeat;
    background-size: cover;" class="bd-placeholder-img card-img-top" width="100%" height="210" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
            
            <!-- 
            <title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
             -->
            </svg>

            <div class="card-body">
              <p class="card-text">${car.title}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                  <a class="btn btn-sm btn-outline-secondary" href='get_car?cno=<c:out value="${car.cno}"/>'>상세보기</a>&nbsp;&nbsp;
				  <!--  <a class="btn btn-sm btn-outline-secondary" href='modify_car?cno=<c:out value="${car.cno}"/>'>수정</a> -->
				  
				  <!-- 참고용 코드  
                  <button type="submit" data-oper='remove' class="btn btn-danger">삭제</button>
                	-->
                	
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
	</c:forEach>  
	</div>
	</div>4
</div>

<!-- 페이지 표시 -->
<ul class="pagination justify-content-center" style="margin: 20px 0">
	<c:if test="${pageMaker.prev}">
		<li class="page-item">
		<a class="page-link" href="${pageMaker.startPage - 1}">이전</a>
		</li>
	</c:if>
	
	<c:forEach var="num" begin="${pageMaker.startPage}"
		end="${pageMaker.endPage}">

		<li class="page-item ${pageMaker.cri.pageNum == num ? 'active':''}">
			<a class="page-link" href="${num}">${num}</a>
		</li>
	</c:forEach>
	
	<c:if test="${pageMaker.next}">
		<li class="page-item">
		<a class="page-link" href="${pageMaker.endPage + 1}">다음</a>
		</li>
	</c:if>
</ul> 

<!-- 페이지 번호 클릭시 처리를 담당하는 form(안보이게 처리함), -->
<form id='actionForm' action="list_car" method="get">
	<input type='hidden' name='pageNum'
		value='${pageMaker.cri.pageNum}'>
	<input type='hidden' name='amount'
		value='${pageMaker.cri.amount}'>
</form>

</main>

<!-- 게시글 Test -->
<!--  
<div class="container mt-4 mb-4" id="mainContent">
	<div class="row">
			<div class="table-responsive-md">
						<table id="carTable" class="table table-bordered table-hover ">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>내용</th>
									<th>작성일</th>
									<th>수정일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list_car}" var="car">
									<tr>
										<td class="cno"><c:out value="${car.cno}" /></td>
										<td>
		
											   jquery로 페이지 이벤트 처리 전  
											<a class="move" href='get_car?cno=<c:out value="${car.cno}"/>'>
												<c:out value="${car.title}" />
											</a>
											
										</td>
										<td><c:out value="${car.writer}" /></td>
										<td><c:out value="${car.content}"/></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd"
												value="${car.regDate}" /></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd"
												value="${car.updateDate}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
-->		
<script>
$(document).ready(function(){
				
	let result = '<c:out value="${result}"></c:out>';
	//result는  redirect:로 URL이동시 RedirectAttributes에 저장한 속성값

	console.log("result : " + result);

	history.replaceState({}, null, null);
	//현재 히스토리를 전부 비운다
	
	$("#regBtn").on("click", function(){
		self.location = "register_car";
	});
	
	let actionForm = $("#actionForm");
	$(".page-item a").on("click", function(e){
		e.preventDefault(); //a 태그의 본래의 기능을 취소 시킨다.
		console.log('page 번호 클릭!');
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		//find(selector)메서드는 자식 엘리먼트에서 selector에 해당하는 엘리먼트를 선택한다.
		//pageNum이 name인 input의 value에 클릭한 a의 href값(페이지 번호)을 넣어준다.
		//this는 이벤트가 일어난 객체이므로 <a>가 된다.
		actionForm.submit(); //submit(),reset()은 form의 이벤트
	});
	
	$(".move").on("click", function(e){
		e.preventDefault();
		actionForm.append("<input type='hidden' name='cno' value='" 
				+ $(this).attr("href") + "'>");
		//메서드에 의해 구해지는 값이므로 +로 연결을 해준다. 뒤에는 변수 선언시가 아닌 표시를 의미하므로 보이는 대로 표시한다.
		actionForm.attr("action", "get_car");
		actionForm.submit();
	});
});
</script>

<%@ include file="../include/footer.jspf"%>
</body>
</html>