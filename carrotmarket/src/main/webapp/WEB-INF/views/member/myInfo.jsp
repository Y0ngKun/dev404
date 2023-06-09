<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="pageTitle" value="마이 페이지"></c:set>

<%@ include file="../include/header.jspf"%>

<link rel="stylesheet" type="text/css" href="../css/member.css">
<link rel="stylesheet" media="all" href="https://d1unjqcospf8gs.cloudfront.net/assets/home/users/show-b2c7250e62f851bf2967ba56a6ee71752f170e773072e6c74ab741ff9572737b.css" />

<section id="content">
    <section id="user-profile">
    	<div class="d-flex justify-content-evenly mb-3" style="border-bottom: 1px #e9ecef solid;">
    		<button type="button" class="myInfo_Btn" onclick="location.href='myInfo'" style="color : #ff6f0f;">내 정보</button>
			<button type="button" class="myInfo_Btn" onclick="location.href='modify'">내 정보 수정</button>
			<button type="button" class="myInfo_Btn" onclick="location.href='passwd'">비밀번호 변경</button>
			<button type="button" class="myInfo_Btn" onclick="location.href='remove'">회원탈퇴</button>
		</div>
      <h2 id="nickname" class="mt-5">
        ${member.usernickname}
        <span id="region_name">${member.useraddress}</span>
      </h2>
      <ul id="profile-detail">
        <li class="profile-detail-title">매너온도 <span class="profile-detail-count">36.5°C</span></li>
        <li class="profile-detail-title">재거래희망률 <span class="profile-detail-count">표시될 만큼 충분히 거래하지 않았어요.</span></li>
      </ul>
      <div id="profile-image">
      	<!-- 
        <img alt="오무아" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c649f052a34ebc4eee35048815d8e4f73061bf74552558bb70e07133f25524f9.png" />
         -->
      </div>
    </section>

    <div id="user-records-detail">
      <section id="user-filter">
    <ul class="d-flex justify-content-around">
      <li><a class="active" href="#">판매 물품 (2)</a></li>
        <li><a class="" href="#">거래 후기 (0)</a></li>
        <li><a class="" href="#">매너 칭찬</a></li>
    </ul>
</section>

  <section id="user-records" class="user-articles" data-total-page="1" data-current-page="1">
    <h3 class="hide">${member.usernickname}님의 판매 물품 목록</h3>
      <section class="cards-wrap">
        <article class="card ">
  <a class="card-link " data-event-label="581243506" href="/articles/581243506">
    <div class="card-photo ">
        <img alt="제습기" src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/7ca9be8ec9e6eed735fa294d75b3da0c2daab391b1b7e6965a0f7ffb7a15d774_0.webp?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">제습기</h2>
      <div class="card-price ">
        50,000원
      </div>
      <div class="card-region-name">
        부산 사상구 모라제3동
      </div>
      <div class="card-counts">
          <span>
            관심 9
          </span>
        ∙
        <span>
            채팅 0
          </span>
      </div>
    </div>
</a></article>
<article class="card ">
  <a class="card-link " data-event-label="581236806" href="/articles/581236806">
    <div class="card-photo ">
        <img alt="공기청정기" src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/6d3ad986fc9fe2f6079d19065247306e64d7c67fb903222478c64fa83e310d6c_0.webp?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">공기청정기</h2>
      <div class="card-price ">
        500,000원
      </div>
      <div class="card-region-name">
        부산 사상구 모라제3동
      </div>
      <div class="card-counts">
          <span>
            관심 0
          </span>
        ∙
        <span>
            채팅 0
          </span>
      </div>
    </div>
</a></article>

      </section>
  </section>
    </div>

  </section>
<!-- Footer-->
<%@ include file="../include/footer.jspf" %>
