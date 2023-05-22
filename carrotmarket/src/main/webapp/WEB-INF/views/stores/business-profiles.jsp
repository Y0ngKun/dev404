<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    

<c:set var="pageTitle" value="동네 이웃들이 자주가는 동네 가게"></c:set>
<%@ include file="../include/header.jspf" %>

<div class="container" style="margin-top: 100px;">
<div class="row text-center justify-content-md-center">
<div class="col-md-9"> <!-- 이미지 영역 시작 -->
	<div style="height: 500px;"> 
	
	<div class="container mt-3 mb-5 p-0 m-0 mx-auto">
	
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
	
						<!-- Indicators -->
						<ul class="carousel-indicators ">
							<li data-target="#myCarousel" data-slide-to="0"
								class="active bg-danger"></li>
							<li data-target="#myCarousel" data-slide-to="1"
								class=" bg-danger"></li>
							<li data-target="#myCarousel" data-slide-to="2"
								class=" bg-danger"></li>
							<li data-target="#myCarousel" data-slide-to="3"
								class=" bg-danger"></li>
						</ul>
	
						<!-- The slideshow -->
						<div class="carousel-inner ">
							<div class="carousel-item active">
								<img src="../images/susan1.jpeg" alt="갑을농수산" class="d-block mx-auto">
								<div class="carousel-caption">
								</div>
							</div>
							<div class="carousel-item">
								<img src="../images/susan2.jpeg" alt="갑을농수산" class="d-block mx-auto ">
								<div class="carousel-caption">
								</div>
							</div>
							<div class="carousel-item">
								<img src="../images/susan3.jpeg" alt="갑을농수산" class="d-block mx-auto ">
								<div class="carousel-caption">
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
	<span style="color: #ffffff; line-height: 500px; font-size: 50px;" >이미지 영역</span> 
	
	-->
	</div>
</div> <!-- 이미지 영역 끝 -->

<section class="col-md-9">

<div class="selerProfile col-md-9 d-inline-flex" style="height:200px;">
<a href="#">프로필이미지</a>

<div class="selerInfo">
<a href="#"></a>
<span>천곡동 ∙ 식자재판매 ∙ 단골 25,939</span>
</div>

<div class="addShop">
<input type="button" value="+ 단골 맺기" />
</div>

<div class="call">
<a href="#">
전화 문의
</a>
</div>
<div class="chat">
<a href="#">
채팅 문의
</a>
</div>
<div class="review">
<a href="#">
후기 작성
</a>
</div>


</div>
</section>

<section class="content">
<div>
<h3>정보</h3>
<span style="font-size: 18px;">
안녕하세요! 새벽에 수산물을 받아와 도매가로 드리는 갑을농수산입니다. <br/>
전국 7개 지점에 창고를 두고 있고 이는 산지의 신선함을 그대로 배송하기 위함입니다.  <br/>
새로운 고객, 아니! 새로운 가족분들을 위함에 돈을 아끼지 않습니다.  <br/>
마구 마구 저렴하게 드릴 테니 필요한 상품 있으시면 언제든 문의주세요! <br/>
</span>
</div>
</section>


<!-- 위치 섹션 -->
<section class="map d-flex flex-column" style="margin-top: 30px;">

<i class="fa-sharp fa-regular fa-location-dot"></i> <span style="font-size: 20px;">강원도 동해시 충혼길 19-2(천곡동) 2층 </span>


<!-- 지도  -->
<div class="item">
<div id="map" class="item" style="margin: 0 auto; height: 194px;" >
map test map testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap testmap test
</div>
</div>

</section>


<section class="profile-footer d-flex flex-column">

<div class="item">
<i class="fa-regular fa-clock"></i> 
<span>
09:30 - 17:30 <br/>
11:40 - 13:00 휴게 시간 <button>show all</button>
</span>
</div>


<i class="fa-regular fa-globe"></i>
<span>www.mrchon.com</span>


<div class="item" style="margin-top: 15px; height: 56px; background-color: #f2f3f6; line-height: 56px;">
<span style="font-size: 20px;">"당근마켓에서 보고 왔어요" 라고 말해보세요! 단골 등록시 무료배송입니다!^^</span>

</div>

<div class="item" style="margin-top: 15px; height: 38px; background-color: #f2f3f6; line-height: 38px;">
<span style="font-size: 20px;">공유하기</span>

</div>

</section>



<!-- 후기 섹션 -->
<section class="d-flex flex-column" style="margin-top: 50px;">
<div class="item">Item1</div>
    <div class="item">Item2</div>
    <div class="item">Item3</div>
    <div class="item">Item4</div>
</section>





</div>
</div>



<%@ include file="../include/footer.jspf" %>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=787053e4ea44893735697779f0b00441"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.5164947, 129.1164823), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(37.5164947, 129.1164823); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
	// marker.setMap(null);   
</script>
</body>