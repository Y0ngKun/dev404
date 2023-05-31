<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<c:set var="pageTitle" value="동네 이웃들이 자주가는 동네 가게"></c:set>
<%@ include file="../include/header.jspf" %>

<div class="container align-items-center" style="max-width:768px margin: 100px 0 0 0 auto; padding: 0;">
<div class="row text-center justify-content-md-center">

<!-- 이미지 영역 시작 -->
<div class="container mt-3 mb-5 p-0 m-0 mx-auto d-flex justify-content-center">
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
  
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="../images/susan1.jpeg" class="d-block" alt="image1">
      </div>
      <div class="carousel-item">
        <img src="../images/susan2.jpeg" class="d-block" alt="image2">
      </div>
      <div class="carousel-item">
        <img src="../images/susan3.jpeg" class="d-block" alt="image3">
      </div>
    </div>
  
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div>
 <!-- 이미지 영역 끝 -->


<!-- 프로필 섹션 -->
		<section class="aa0" style="margin-bottom: 20px">
			<div class="selerProfile aa1">
				
				<div class="aa2">
					<div class="d5c2h80 ">
						<a href="#" class="d5c2h81 ">
							<img alt="#" src="https://dnvefa72aowie.cloudfront.net/businessPlatform/bizPlatform/profile/center_biz_5863590/1677722646074/e956d3d9f7a89abd32a1c13a79476d7290aa53d05f2b2e40c79490551994c6d4.jpeg?q=82&s=640x640&t=crop">
						</a>
						<div class="d5c2h82">
						 	<a href="#">시골청년</a>
						 	<span>남평읍 ∙ 농산물 ∙ 단골 36,716</span>
						</div>
					</div>
				</div><!-- aa2 -->
					
				<!-- 버튼 -->
				<div class="addShop aa3">
					<button type="button"
						style="background-color: #ff6f0f; font-size: 14px; line-height: 1.4; padding: 6px 6px; color: #fff; border: 1px solid #ff6f0f;">+단골 맺기</button>
				</div><!-- aa3 -->
						
			</div><!-- aa1 -->


			<!-- 퀵메뉴 -->
		<div class="_1gzoib80">
			<div class="quick-menu-group">
				<div class="call" style="width: 33.3%;">
					<a href="#">
						<i class="fa-light fa-phone"></i>
						<span>전화 문의</span>
					</a>
				</div>
				<div class="chat" style="width: 33.3%;">
					<a href="#">
						<i class="fa-sharp fa-light fa-comments"></i>
						<span>채팅 문의</span>
					</a>
				</div>
				<div class="write-review" style="width: 33.3%;">
					<a href="#">
						<i class="fa-sharp fa-solid fa-pen-line"></i>
						<span>후기 작성</span>
					</a>
				</div>
			</div>
		</div>
		</section>



		<!-- 본문 내용 섹션 -->
<section class="content">
<div class="container align-items-center" style="max-width:768px margin: 0 auto; padding: 0; text-align: left;">
<h3 style="text-align: left; font-size: 22px; font-weight: bold;">정보</h3>
<span style="font-size: 18px;">
<c:out value="${content}"></c:out>
</span>


</div>
</section>


<!-- 위치 섹션 -->
<section class="map d-flex flex-column" style="margin-top: 30px;">
<div style="text-align: left;">
<i class="fa-sharp fa-regular fa-location-dot"></i> <span style="font-size: 20px;"><c:out value="${title}"></c:out> </span>
</div>

<!-- 지도  -->
<div class="item">
<div id="map" class="item" style="margin: 0 auto; height: 194px;" >

</div>
</div>

</section>


<section class="profile-footer d-flex flex-column" style="text-align: left;">

<div class="item">
<i class="fa-regular fa-clock"></i> 
<span>
09:30 - 17:30 <br/>
11:40 - 13:00 휴게 시간
</span>
</div>

<div>
<i class="fa-regular fa-globe"></i><span>www.mrchon.com</span>
</div>

<div class="item" style="margin-top: 15px; height: 56px; background-color: #f2f3f6; line-height: 56px; text-align: center;">
<span style="font-size: 20px; ">"당근마켓에서 보고 왔어요" 라고 말해보세요! 단골 등록시 무료배송입니다!^^</span>

</div>

<div class="item" style="margin-top: 15px; height: 38px; background-color: #f2f3f6; line-height: 38px; text-align: center;">
<span style="font-size: 20px; ">공유하기</span>

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
<style>
.carousel-item img {
    width: 800px;
    height: 469px;
    object-fit: cover;
  }
.carousel-inner {
    border-radius: 10px;
    overflow: hidden;
  }
  
</style>

<script type="text/javascript">
$('.carousel').carousel({
    touch: true
  });
</script>
</body>

<style>

/*기본 크기 컨텐츠 설정 시작*/
body{
font-size: 13px;
}
.container {
  max-width: 768px;
}
@media (min-width: 768px) {
  .container {
    width: 100%;
 
  }
}
/*기본 크기 컨텐츠 설정 끝*/


/*셀러 프로필 정보 섹션 시작*/
.aa1{
padding: 1.5rem 0;
flex-direction: row;
align-items: center;
display: flex;
overflow: hidden;
}
.aa2{
flex: 1 1;
    overflow: hidden;
    pointer-events: none;
}
.d5c2h80 {
    display: flex;
    overflow: hidden;
    align-items: center;
    justify-content: flex-start;
}
.d5c2h81{
	width: 48px;
    height: 48px;
    border-radius: 50%;
    position: relative;
    display: flex;
    overflow: hidden;
}

.d5c2h82{
display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: flex-start;
    padding-left: 0.75rem;
    flex: 1 1;
    overflow: hidden;
}
.d5c2h82 a{
color: #000000;
text-decoration: none;
font-weight: bold;
font-size: 14px;
}

.quick-menu-group{
display: flex;
    overflow: hidden;
    align-items: stretch;
    color: #000000;
}
.quick-menu-group div a{
width: 100%;
    cursor: pointer;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-decoration: none;
    color: #000000;
    font-size: 14px;
}


}
.quick-menu-group .call{
width: 33.3% !important;
flex: 1 1;
    position: relative;
    overflow: hidden;
}

.quick-menu-group .chat{
width: 33.3% !important;
flex: 1 1;
    position: relative;
    overflow: hidden;
}
.quick-menu-group .write-review{
width: 33.3% !important;
flex: 1 1;
    position: relative;
    overflow: hidden;
}
/*셀러 프로필 정보 섹션 끝*/

</style>

