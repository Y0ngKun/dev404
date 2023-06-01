<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    

<c:set var="pageTitle" value="동네 이웃들이 자주가는 동네 가게"></c:set>

<%@ include file="../include/header.jspf" %>

<div class="top-banner">
<h5 style="font-size: 30px; position: absolute; top: 28%; left: 34%; bottom: 30%; right: 30%; text-align: left; ">
동네 이웃들이 <br/>
자주 가는 동네 가게</h5>

<span style="font-size: 19px;  position: absolute; top: 59%; left: 34%; bottom: 30%; right: 30%; text-align: left;">
우리 동네 사람들이<br/>
이용하는 가게를 찾아보세요.</span>
</div>

<!-- 동네 가게 리스트 섹션 -->
<section>
	<div class="container align-items-center" style="max-width:768px margin: 0 auto; padding: 0;">
	<h1 class="text-center" style="font-size: 32px; padding: 40px 0 40px 0;">다양한 동네가게를 볼 수 있어요</h1>
		<div class="stores-caterory">
			<ul>
				<li role="listitem"><label>전체<input name="" type="radio">
				</label></li>
				<li role="listitem"><label>식당<input name="" type="radio">
				</label></li>
				<li role="listitem"><label>카페<input name="" type="radio">
				</label></li>
				<li role="listitem"><label>용달/이사<input name="" type="radio">
				</label></li>
				<li role="listitem"><label>뷰티/미용<input name="" type="radio">
				</label></li>
				<li role="listitem"><label>헬스/필라테스/요가<input name="" type="radio">
				</label></li>

			</ul>
		</div>








		<div class="stores-list">
			
			<ul>
				<li style="margin-right: 20px;">
				<a href="/ex02/stores/business-profiles?title=${list[0].title}&content=${list[0].content}">
					<div class="thumb-wrap">
						<img
							src="https://dnvefa72aowie.cloudfront.net/businessPlatform/bizPlatform/profile/center_biz_5863590/1677722646074/e956d3d9f7a89abd32a1c13a79476d7290aa53d05f2b2e40c79490551994c6d4.jpeg?q=82&s=640x640&t=crop"
							class="card-img-top" alt="Card image cap">
					</div>
					<div class="info-wrap">
						<h5 class="storename" > <c:out value="${list[0].title}"></c:out> </h5>
						<p class="card-text"><c:out value="${list[0].content}"></c:out></p>
						<span class="smb-list-item-infos _1o1a6ke8">후기 802 ∙ 단골 36,961 ∙ 농산물</span>
					</div>
				</a>
				</li>
				
				<li>
					<a href="/ex02/stores/business-profiles?title=${list[1].title}&content=${list[1].content}">
					<div class="thumb-wrap">
						<img src="https://dnvefa72aowie.cloudfront.net/business/bizPlatform/profile/50472096/1639685484756/16c5996beb2c0bc90ebdde18b6095516ad067e0f57a06197b2b4228a9cfc7ac9.jpeg?q=82&amp;s=640x640&amp;t=crop" class="thumbnail-image qudd1g9">
					</div>
						<div class="info-wrap">
							<h5 class="storename"><c:out value="${list[1].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[1].content}"></c:out></p>
							<span class="smb-list-item-infos _1o1a6ke8">후기 1,743 ∙ 단골 26,421 ∙ 수산물</span>
						</div>
					</a>
				</li>
				
				<li style="margin-right: 20px;">
				<a href="/ex02/stores/business-profiles?title=${list[2].title}&content=${list[2].content}">
					<div class="thumb-wrap">
						<img src="https://dnvefa72aowie.cloudfront.net/business/bizPlatform/profile/17969333/1648446564196/4eb8d7c682d7d31440333a7a5f4f1895721eee1b32e06993d625d9f669800d86.jpeg?q=82&amp;s=640x640&amp;t=crop" class="thumbnail-image qudd1g9">
					</div>
						<div class="info-wrap">
							<h5 class="storename"><c:out value="${list[2].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[2].content}"></c:out></p>
							<span class="smb-list-item-infos _1o1a6ke8">후기 1,793 ∙ 단골 26,162 ∙ 식자재판매</span>
						</div>
					</a>
				</li>
				<li>
				<a href="/ex02/stores/business-profiles?title=${list[3].title}&content=${list[3].content}">
					<div class="thumb-wrap">
						<img src="https://dnvefa72aowie.cloudfront.net/business/bizPlatform/profile/50095049/1638929787569/978227fd2caa69a520f7169a35af8a740319cfa5896a8173b08f12044632c757.jpeg?q=82&amp;s=640x640&amp;t=crop" class="thumbnail-image qudd1g9">
					</div>
						<div class="info-wrap">
							<h5 class="storename"><c:out value="${list[3].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[3].content}"></c:out></p>
							<span class="smb-list-item-infos _1o1a6ke8">후기 1,442 ∙ 단골 22,893 ∙ 식육판매업</span>
						</div>
					</a>
				</li>
				<li style="margin-right: 20px;">
				<a href="/ex02/stores/business-profiles?title=${list[4].title}&content=${list[4].content}">
					<div class="thumb-wrap">
						<img src="https://dnvefa72aowie.cloudfront.net/business/bizPlatform/profile/21709505/1653454688660/ZjZmYTViYWMzMWRkMjhlNjg0NGIxOGRhM2UzOGNiMDBlNTY1ZThmOWRkYTYyMTFiZDA0MzhjMGY2NzI3N2M1NC5qcGc=.jpeg?q=82&amp;s=640x640&amp;t=crop" class="thumbnail-image qudd1g9">
					</div>
						<div class="info-wrap">
							<h5 class="storename"><c:out value="${list[4].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[4].content}"></c:out></p>
							<span class="smb-list-item-infos _1o1a6ke8">후기 682 ∙ 단골 22,046 ∙ 정육점</span>
						</div>
					</a>
				</li>
				<li>
				<a href="/ex02/stores/business-profiles?title=${list[5].title}&content=${list[5].content}">
					<div class="thumb-wrap">
						<img src="https://dnvefa72aowie.cloudfront.net/businessPlatform/bizPlatform/profile/center_biz_3568585/1669188796548/f0640532c68de863ea734e2349ff0379a759e345ffd71b1fe68ba22108914459.jpeg?q=82&amp;s=640x640&amp;t=crop" class="thumbnail-image qudd1g9">
					</div>
						<div class="info-wrap">
							<h5 class="storename"><c:out value="${list[5].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[5].content}"></c:out></p>
							<span class="smb-list-item-infos _1o1a6ke8">후기 1,239 ∙ 단골 21,901 ∙ 수산물</span>
						</div>
					</a>
				</li>
				<li style="margin-right: 20px;">
				<a href="/ex02/stores/business-profiles?title=${list[6].title}&content=${list[6].content}">
					<div class="thumb-wrap">
						<img src="https://dnvefa72aowie.cloudfront.net/business/bizPlatform/profile/31657420/1678103289195/NzBhN2U2NGZhN2RlOTlmYjM2YmYxODcxZjBhYjQ5ZGMzNzU3MWNhNmMzM2FlOTA0NTE3YjM0N2FjNjY1NDhiNC5qcGc=.jpeg?q=82&amp;s=640x640&amp;t=crop" class="thumbnail-image qudd1g9">
					</div>
						<div class="info-wrap">
							<h5 class="storename"><c:out value="${list[6].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[6].content}"></c:out></p>
							<span class="smb-list-item-infos _1o1a6ke8">후기 1,570 ∙ 단골 21,158 ∙ 수산물</span>
						</div>
					</a>
				</li>
				<li>
				<a href="/ex02/stores/business-profiles?title=${list[7].title}&content=${list[7].content}">
					<div class="thumb-wrap">
						<img src="https://dnvefa72aowie.cloudfront.net/business/bizPlatform/profile/26101884/1667193649988/Yzg0M2MyOTMxZDkwNWRjYTM1YzQ1MjMzODM3ZWU2MTVmNjhmMzc4Y2MzNTc5MzdlZDIxODM1OTA0MzI0MWM3Mi5qcGc=.jpeg?q=82&amp;s=640x640&amp;t=crop" class="thumbnail-image qudd1g9">
					</div>
						<div class="info-wrap">
							<h5 class="storename"><c:out value="${list[7].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[7].content}"></c:out></p>
							<span class="smb-list-item-infos _1o1a6ke8">후기 722 ∙ 단골 19,277 ∙ 정수기판매</span>
						</div>
					</a>
				</li>
				<li style="margin-right: 20px;">
				<a href="/ex02/stores/business-profiles?title=${list[8].title}&content=${list[8].content}">
					<div class="thumb-wrap">
						<img src="https://dnvefa72aowie.cloudfront.net/business/bizPlatform/profile/62513827/1681877485666/NWY3OTVkNGNlOGIyZjg2MTgyMGJmNzYzYjliNzQ4Y2ZkOTRhZjIxNjUyNWYwNDBkMGExYjY5MThjYTc1YTAyOS5qcGc=.jpeg?q=82&amp;s=640x640&amp;t=crop" class="thumbnail-image qudd1g9">
					</div>
						<div class="info-wrap">
								<h5 class="storename"><c:out value="${list[8].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[8].content}"></c:out></p>
							<span class="smb-list-item-infos _1o1a6ke8">후기 818 ∙ 단골 19,206 ∙ 식품판매</span>
						</div>
					</a>
				</li>
				<li>
				<a href="/ex02/stores/business-profiles?title=${list[9].title}&content=${list[9].content}">
					<div class="thumb-wrap">
						<img src="https://dnvefa72aowie.cloudfront.net/business/bizPlatform/profile/57582287/1650809858473/676ed7c2c6e0b675c51eecfa8b5dc954bb4235ced59f754d0f120243330af9e7.jpeg?q=82&amp;s=640x640&amp;t=crop" class="thumbnail-image qudd1g9">
					</div>
						<div class="info-wrap">
							<h5 class="storename"><c:out value="${list[9].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[9].content}"></c:out></p>
							<span class="smb-list-item-infos _1o1a6ke8">후기 1,434 ∙ 단골 18,369 ∙ 수산물</span>
						</div>
					</a>
				</li>
			</ul>
		</div>
		<!-- 가게 리스트 영역 끝 -->
	</div>
</section>




<br/>


<!-- 이용자 후기 섹션 -->
<section class="stores-review">
<div class="container stores-review-list">
<h1 class="text-center" style="font-size:30px; padding:40px 0 40px 0;">동네 이웃이 남긴 후기를 찾아보세요</h1>

  <ul>
    <li>
	    <a href="#">
	    <article>
		      <div class="reviewer-wraper">
		      	<div class="reviewer-profile-img-wraper" style="width: 36px; height: 36px; border-radius: 50%;">
		      		<div class="thumbnail-base" style="width: 36px; height: 36px; border-radius: 50%; overflow: hidden; position: relative; ">
		        		<img src="https://dnvefa72aowie.cloudfront.net/origin/profile/202206/7b7f15cdc5834f68aeea58ab97d3a2a52166d8c6d274c537b4d331cd8888ddb7.webp?q=82&s=640x640&t=crop" class="reviewer-profile-img">
		       		</div>
		        </div>
		        <div class="reviewer-info">
			        <span class="reviewer-name">소현사랑</span>
			        <span class="reviewer-badge">단골</span>
		        </div>
		      </div>
		      
		      <p class="review-text">태화동 맛집이에요~ 어른, 아이들 입맛에 잘맞아요~ 우리딸이 또 먹으러 가자고 졸라요ㅜㅜ 이모님 밑반찬 떨어지기도 전에 부족한건 채워주시는 친절함에 온가족 만족하고 맛있게 먹고 왔습니다^^</p>
		      <div>가게 이미지 링크 div</div>
	    </article>
	     </a>
    </li>
    
      <li style="margin-left: 10px">
	    <a href="#">
	    <article>
		      <div class="reviewer-wraper">
		      	<div class="reviewer-profile-img-wraper" style="width: 36px; height: 36px; border-radius: 50%;">
		      		<div class="thumbnail-base" style="width: 36px; height: 36px; border-radius: 50%; overflow: hidden; position: relative; ">
		        		<img src="https://dnvefa72aowie.cloudfront.net/origin/profile/202206/7b7f15cdc5834f68aeea58ab97d3a2a52166d8c6d274c537b4d331cd8888ddb7.webp?q=82&s=640x640&t=crop" class="reviewer-profile-img">
		       		</div>
		        </div>
		        <div class="reviewer-info">
			        <span class="reviewer-name">역주행거북이</span>
			        <span class="reviewer-badge">단골</span>
		        </div>
		      </div>
		      
		      <p class="review-text">가격대비 퀄리티가 높습니다. 신선한 야채가 사장님의 부지런함을 대변하는듯합니다. </p>
		      <div>가게 이미지 링크 div</div>
	    </article>
	     </a>
    </li>
    
      <li style="margin-top: 16px">
	    <a href="#">
	    <article>
		      <div class="reviewer-wraper">
		      	<div class="reviewer-profile-img-wraper" style="width: 36px; height: 36px; border-radius: 50%;">
		      		<div class="thumbnail-base" style="width: 36px; height: 36px; border-radius: 50%; overflow: hidden; position: relative; ">
		      		<img src="https://dnvefa72aowie.cloudfront.net/origin/profile/202302/3b75bd0c273c2596b8499e7d89d2564e84e36dcdc13c986220ecc13855788590.webp?q=82&amp;s=640x640&amp;t=crop" alt="마일드 프로필 이미지" class="thumbnail-image qudd1g9">
		       		</div>
		        </div>
		        <div class="reviewer-info">
			        <span class="reviewer-name">마일드</span>
			        <span class="reviewer-badge">단골</span>
		        </div>
		      </div>
		      
		      <p class="review-text">바지락 듬뿍 들어있고 면발은 부드러워요~
새우폭탄부침개 정말 바삭하고 맛있어요
만두는 그냥 그랬어요
머리 묶을수 있는 끈이 테이블마다 있어서 먹을때 이용할수 있어요
겉절이 맛 끝내줍니다^^</p>
		      <div>가게 이미지 링크 div</div>
	    </article>
	     </a>
    </li>
    
      <li style="margin-left: 10px; margin-top: 16px">
	    <a href="#">
	    <article>
		      <div class="reviewer-wraper">
		      	<div class="reviewer-profile-img-wraper" style="width: 36px; height: 36px; border-radius: 50%;">
		      		<div class="thumbnail-base" style="width: 36px; height: 36px; border-radius: 50%; overflow: hidden; position: relative; ">
						<img src="https://dnvefa72aowie.cloudfront.net/origin/profile/202008/2233A96A00552FB85F6755C29F00CB3839E168BB1BB7FC47AF3FFC6C839AFD7C.jpg?q=82&amp;s=640x640&amp;t=crop" alt="좋은선택 프로필 이미지" class="thumbnail-image qudd1g9">
		       		</div>
		        </div>
		        <div class="reviewer-info">
			        <span class="reviewer-name">좋은선택</span>
			        <span class="reviewer-badge">단골</span>
		        </div>
		      </div>
		      
		      <p class="review-text">길치라 잘 못찾아서 메세지 보내니 너무 이쁜 원장님이 마중나와주셔서 첫인상부터 맘에 쏙 들었어요. 급하게 연락하고 갔는데도 여유롭게 잘 해 주셨어요! 속눈썹펌 은 처음 해보는데 눈에 하는거라 걱정을 좀 했지만 괜한 걱정이였어요. 섬세한 손놀림으로 불편함 전혀없이 너무 만족 스럽게 드라마틱 하게 결과가 나왔어요. 원래 속눈썹이 굵고 직모라 뷰러하고 마스카라해도 반나절 지나면 컬이 내려와서 눈주위가 너구리처럼 되는데 속눈썹펌 을 하니 이제 너구리나 팬더될 걱정 안해도 될거 같아요. #월곡동속눈썹펌잘하는집 이 바로 근처에 있었네요.  속눈썹펌은 여기서 안착 해야 겠어요. 시술후 눈화장 팁도 친절하게 알려주시고 미용쪽에 워낙 노하우가 많은 원장님이시라 좋은정보 많이 얻었습니다. 다음에 또 받으러 갈게요~~^^</p>
		      <div>가게 이미지 링크 div</div>
	    </article>
	     </a>
    </li>
    
  
  
  </ul>
</div>
</section>




<!-- 하단 비즈프로필 만들기  -->
<section class="container stores-business" >
<div class="imgWrapDiv">
<span>
<img alt="#" src="../resources/images/stores-business.png">
</span>
</div>

<div style="
	padding-left: 100px;
	flex: 1 1;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    align-items: flex-start;">
<h6 style="font-size: 24px;"> <strong> 가게를 운영하고 계신가요? </strong></h6>

<span style="
	font-weight: 400;
    font-size: 13px;
    margin-top: 0.125rem;
    line-height: 1.35;">당근마켓에 등록하고 이웃에게 알려보세요!</span>
</div>


<div style="display: flex !important;">
<a href="#" style="
background-color: #ff6f0f;
font-size: 20px;
color: #ffffff; 
text-decoration: none; 
font-weight: 600;
padding: 7px;
border-radius: 5px;
">비즈프로필 만들기</a>
</div>
</section>




<!-- 글쓰기 등록 버튼 -->
<c:if test="${message == 1}">
<div class="fixed-button text-center">
  <a href="/ex02/storesWrite"><span>+ 글쓰기</span></a>
</div>
</c:if>




<%@ include file="../include/footer.jspf" %>

</body>


<style type="text/css">
/* ~~~~~~~~~~~~ CSS 시작~~~~~~~~~ */

ul li{
margin: 0 ;
}

/*기본 크기 컨텐츠 설정 시작*/
.container {
  max-width: 768px;
}
@media (min-width: 768px) {
  .container {
    width: 100%;
 
  }
}
/*기본 크기 컨텐츠 설정 끝*/

/*맨 위에 배경 배너*/
.top-banner{
position:relative;
margin-top:50px;
padding-top:100px;
text-align:center;
width: 100%;
height:325px;
background-color: #f7f1eb;
overflow: hidden;
background-image: url("../resources/images/nearby_stores_hero_image.png");
background-size: 453px 260px;
background-repeat: no-repeat;
background-position: 57%;
}

/* 카테고리 부분 시작*/
.stores-caterory ul{
text-align: center;
}
.stores-caterory ul li{
display: inline-block;
cursor: pointer;
margin: 3px;
padding-bottom: 20px;
}
.stores-caterory ul li input{
margin: 0;
padding: 0;
opacity: 0;
position: absolute;
top: 0;
left: 0;
right: 0;
bottom: 0;
width: 100%;
height: 100%;
cursor: pointer;
}

.stores-caterory ul li label{
cursor: pointer;
    line-height: 1.5;
    font-size: 14px;
    font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;
    box-sizing: border-box;
    border-radius: 6.25rem;
    border: 0.0625rem solid #eaebee;
    cursor: pointer;
    padding: 8px 16px;
    min-height: 2rem;
    position: relative;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    overflow: hidden;
    white-space: nowrap;
}

.stores-caterory ul li label:hover{
background-color:  #eaebee;
}
/* 카테고리 부분 끝*/


/* 가게 리스트 시작 */
.stores-list{
	position: relative;
}
.stores-list ul{
display: flex;
flex-wrap: wrap;
list-style: none;
    margin: 0;
}
.stores-list ul li{
 list-style:none;
 width: calc(50% - 1rem);
 box-sizing: border-box;
 margin: 0;
display: list-item;
text-align: -webkit-match-parent;
 }
.stores-list ul li:after {
 content: "";
 display: block;
 width: 95%;
 border-bottom: 1px solid #eaebee;
 margin: 10px auto;
}
 
 .stores-list ul li a{
text-decoration: none; 
width: 100%;
padding: 10px 0;
box-sizing: border-box;
display: flex;
align-items: flex-start;
overflow: hidden;
cursor: pointer;
color: #212124;
 }
.stores-list .thumb-wrap{
  border-radius: 6.25rem; 
  overflow: hidden;
  margin-right: 15px;
  }
  
.stores-list .info-wrap .storename{
font-size: 19px; 
font-weight: bold;
}
  .stores-list ul li a:hover{
background-color:rgba(32, 22, 93, 0.03);
  }
   .stores-list ul li a img{
   width: 80px;
   height: 80px;
 }
 .stores-list .info-wrap p{
 font-size:16px;
 -webkit-line-clamp: 2; 
 -webkit-box-orient: vertical; 
 display: -webkit-box; 
 overflow: hidden; 
 text-overflow: ellipsis; 
 border: 0px solid #ffffff; 
 width: 200px;
 }
 .stores-list .info-wrap span{ 
 color: #868b94;
 font-size: 13px;
 }
 
 /* 가게 리스트 끝 */
 
 
/*사용자 리뷰 시작*/
.stores-review ul{
    display: flex;
    flex-wrap: wrap;
    overflow: hidden;
    align-items: stretch;
    list-style: none;
    padding: 0;
    margin: 0;
}
.stores-review ul li{
width: calc(50% - 0.5rem);
    display: list-item;
    text-align: -webkit-match-parent;
    list-style: none;
    padding: 0;
    margin: 0;
    font-size: 16px;
}

.stores-review ul li article{
box-sizing: border-box;
    border: 1px solid #eaebee;
    border-radius: 8px;
    overflow: hidden;
    padding: 1.25rem 1rem;
}

.stores-review ul li article:hover{
background-color: #f2f3f6;

}

.reviewer-info{
flex: 1 1;
    padding-left: 7px;
    flex-direction: column;
    align-items: flex-start;
}

.reviewer-info .reviewer-name{
font-weight: bold;
font-size: 17px;
}

.stores-review ul li a{
text-decoration: none;
    text-align: start;
    width: 100%;
    box-sizing: border-box;
    color: #212124;

}
.review-text{
	line-height: 1.4;
    letter-spacing: -.01em;
    margin: 0.375rem 0 0;
    overflow: hidden;
    text-overflow: ellipsis;
    word-break: break-all;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    margin-top:8px;
    margin-bottom: 10px;
}

.reviewer-wraper{
display: flex;
    justify-content: flex-start;
    overflow: hidden;
    align-items: center;
}
.reviewer-wraper  .reviewer-profile-img-wraper{
    display: flex;
    justify-content: flex-start;
    overflow: hidden;
    align-items: center;
}
.reviewer-wraper  .reviewer-profile-img-wraper .thumbnail-base img{
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
    border-style: none;
}

.reviewer-badge {
font-size:12px;
font-weight:bold;
background-color: #ff6f0f;
color: #fff;
padding:2px;
border-radius: 40%;
}


/*사용자 리뷰 끝*/






/* 비즈 프로필 만들기 시작*/


.stores-business{

   background-color: #f7be6824;
   border-radius: 0.375rem;
   overflow: hidden;
   padding: 30px;
   display: flex;
   flex-direction: row;
   align-items: flex-start;
   margin-top:75px;
   margin-bottom:75px;
}

.imgWrapDiv{
	width: 4.5rem;
    height: 4.5rem;
    position: relative;
}



/* 비즈 프로필 만들기 끝*/




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
font-size:44px;
text-align: center;
margin: 0 auto;
color: #ffffff;
display: block;
width: 70px;
height: 70px;
background-color: #ff6f0f;
border-radius: 50%;
}






.modal {
      display: none;
      position: fixed;
      z-index: 1;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      overflow: auto;
      background-color: rgba(0, 0, 0, 0.5);
    }
    
.modal-content {
      background-color: #fefefe;
      margin: 15% auto;
      padding: 20px;
      border: 1px solid #888;
      width: 80%;
    }
 



</style>

</html>