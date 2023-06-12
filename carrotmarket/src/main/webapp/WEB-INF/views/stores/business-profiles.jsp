<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="동네 이웃들이 자주가는 동네 가게"></c:set>
<%@ include file="../include/header.jspf" %>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">


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
	      <c:choose>
		      <c:when test="${not empty urlResourceList[0]}">
		      	<img src="images/${list[0].writer}" class="d-block" alt="image1">
		      </c:when>
		      <c:otherwise>
		      	<img src="../images/stores/article_defaultImg.jpg" class="d-block" alt="기본이미지">
		      </c:otherwise>
	      </c:choose>
      </div>
      
      <div class="carousel-item">
              <c:choose>
		      <c:when test="${not empty urlResourceList[1]}">
		      	<img src="${urlResourceList[1]}" class="d-block" alt="image1">
		      </c:when>
		      <c:otherwise>
		      	<img src="../images/stores/article_defaultImg.jpg" class="d-block" alt="기본이미지">
		      </c:otherwise>
	      </c:choose>
      </div>
      
      
      <div class="carousel-item">
              <c:choose>
		      <c:when test="${not empty urlResourceList[2]}">
		      	<img src="${urlResourceList[2]}" class="d-block" alt="image3">
		      </c:when>
		      <c:otherwise>
		      	<img src="../images/stores/article_defaultImg.jpg" class="d-block" alt="기본이미지">
		      </c:otherwise>
	      </c:choose>
      </div>
      
      <!-- carousel-item 끝 -->
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
						 	<a href="#">${storesVO.storeName}</a>
						 	<span>${storesVO.storesLocation}</span>
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
					<span style="width: 24px; height:24px; margin-bottom: 6px; ">
					<i class="fas fa-phone" style="font-size: 24px;"></i>
					</span>
						<span>전화 문의</span>
					</a>
				</div>
				<div class="chat" style="width: 33.3%;">
					<a href="#">
						<span style="width: 24px; height:24px; margin-bottom: 6px;">
						<i class="fas fa-comments" style="font-size: 24px;"></i>
						</span>
						<span>채팅 문의</span>
					</a>
				</div>
				<div class="write-review" style="width: 33.3%;">
					<a href="#">
						<span style="width: 24px; height:24px; margin-bottom: 6px;">
						<i class="fas fa-pen" style="font-size: 24px;"></i>
						</span>
						<span>후기 작성</span>
					</a>
				</div>
			</div>
		</div>
		</section>



		<!-- 본문 내용 섹션 -->
		<section class="content">
			<div class="container align-items-center" style="max-width: 768px margin: 0 auto; padding: 0; text-align: left;">
				<article class="notice" style="margin-bottom: 15px; padding: 19px; border-radius: 10px;">
					<div>
						<span style="margin-right: 7px;"><i class="fas fa-bullhorn fa-lg" style=""></i></span>
					</div>
					
					<div>
					<span style="font-size: 18px;">알림</span>
					<span style="font-size: 18px; display: block;"><c:out value="${storesVO.notice}"></c:out></span>
					</div>
					
				</article>
				
				<h3 style="text-align: left; font-size: 22px; font-weight:bold; margin-top: 43px;">정보</h3>
				
				<span style="font-size: 18px;"> <c:out value="${storesVO.content}"></c:out>
				</span>


			</div>
		</section>


		<!-- 위치 섹션 -->
		<section class="map d-flex flex-column" style="margin-top: 30px; margin-bottom: 20px;">
			<div style="text-align: left; margin-bottom: 10px;" >
				<span style="margin-right: 6px;"> <i class="fas fa-map-marker" style="font-size: 18px;"></i> </span> 
				<span style="font-size: 20px;"> <c:out value="${storesVO.storesLocation }"></c:out> </span>
			</div>

			<!-- 지도  -->
			<div class="item">
				<div id="map" class="item" style="margin: 0 auto; height: 194px;">

				</div>
			</div>

		</section>


		<section class="profile-footer d-flex flex-column" style="text-align: left;">

			<div class="item" style="margin-bottom: 7px;">
				<span style="margin-right: 10px;"> <i class="far fa-clock"
					style="font-size: 18px;"></i>
				</span> <span style="font-size: 18px;"> 09:30 - 17:30  <br /> 11:40 - 13:00 휴게 시간
				</span>
			</div>

			<div>
				<span style="margin-right: 10px;"> <i class="fas fa-globe"
					style="font-size: 18px;"></i>
				</span> <span style="font-size: 18px;">www.mrchon.com</span>
			</div>

			<div class="item"
				style="margin-top: 15px; height: 56px; background-color: #f2f3f6; line-height: 56px; text-align: center;">
				<span style="font-size: 18px; font-weight: bold;">"당근마켓에서 보고
					왔어요" 라고 말해보세요! </span> <span style="font-size: 18px;">단골 등록시
					무료배송입니다!^^</span>

			</div>

			<div class="item"
				style="margin-top: 15px; height: 38px; background-color: #f2f3f6; line-height: 38px; text-align: center;">
				<span style="font-size: 20px;"> <span><i
						class="fas fa-share-alt-square"></i></span> 공유하기
				</span>

			</div>

		</section>



		<!-- 후기 섹션 -->
		<section class="stores-reivew " style="margin-top: 50px; margin-bottom: 20px;">
		<div class="container">
		
			<div style="display: flex; align-items: center;">
				<div style="flex: 1 1;">
				 <h3 style="font-weight: bold; font-size: 18px; text-align: left; margin: 0; ">후기</h3>
				 </div>
				 <div>
				 	<button style="
				 	    background-color: #ff6f0f;
					    font-size: 14px;
					    line-height: 1.4;
					    padding: 6px 6px;
					    color: #fff;
					    border: 1px solid #ff6f0f;
					    align-items: center;
				 	"><span>+</span>후기 작성</button>
				 </div>
			</div>
			
			<ul style="list-style: none; margin: 0; padding: 0">
				<li>
					<div class="review-wraper" style="
					display: flex;
    				justify-content: flex-start;
    				overflow: hidden;
    				align-items: center;">
    				
						<div class="user-profile-img" 
						style="
						width: 36px; 
						height: 36px; 
						position: relative; 
						border-radius: 50%;
						overflow: hidden;
						">
							<img alt="#" src="https://dnvefa72aowie.cloudfront.net/origin/profile/202202/080f3524c2258cab147354677d6a04ef267a52182cd463f06312881fcb4df2b0.webp?q=82&s=640x640&t=crop" 
							style="
							    opacity: 1;
							    transition: .2s;
							    position: absolute;
							    left: 0;
							    top: 0;
							    right: 0;
							    bottom: 0;
							    width: 100%;
							    height: 100%;
							    -o-object-fit: cover;
							    object-fit: cover;
							">
						</div>
						
						<div class="user-info-wraper" style="margin-left: 8px;">
							<span class="username" style="font-size: 16px; font-weight: bold;">깡미꼰맘</span>
							<span class="badge-wraper">
								<span class="badge" style="background-color: #ff6f0f">단골</span>
							</span>
						</div>
					</div>
					<p style="text-align: left; margin-top: 10px; font-size: 19px;">저번에 한번 주문해서 가격대비 괜찮다 생각해서 이번에 또 주문했는데 저장한지 오래된 사과를 보내신건지 이렇게 수분말라 쪼글한 사과가 10키로 한박스안에 
이만큼이나 나오네요 채팅방에 문의드려도 답도 없으시고 담부턴 주문하지 말아야겠네요
사과 상태가 너무 안좋네요 다른것도 겉은 멀쩡해도
깍이니 멍든부분도 많고ㅜㅜ</p>
					</li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
		</section>
	</div>
</div>

<!-- 수정하기 버튼 -->
<div class="fixed-button text-center">
  <a href="/ex02/biz/storesModify?bno=${bno}"><span><i class="far fa-edit fa-xs"></i>  </span></a>
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
/*
$(document).ready(function(){
$('.carousel').carousel({
    touch: true
  });
})
*/
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

.notice{
    display: flex;
    align-items: flex-start;
    border-radius: 0.625rem;
    padding: 1rem;
    line-height: 1.35;
    overflow: hidden;
    background-color: #f7be6824;
}
.stores-reivew ul{
margin: 0;
padding: 0;
}

.stores-reivew ul li{
margin: 0;
padding: 0;
}

/*글 수정, 삭제 버튼*/
.fixed-button {
	width:50px;
 	height:50px;
    position: fixed;
    bottom: 10%;
    right: 10%;
    align-items: center;
    
 }
.fixed-button a{
 text-decoration: none;
 }
.fixed-button a span{
font-size:37px;
text-align: center;
margin: 0 auto;
color: #ffffff;
display: block;

width: 70px;
height: 70px;
padding-left: 4px;
background-color: #ff6f0f;
border-radius: 50%;

}


</style>

