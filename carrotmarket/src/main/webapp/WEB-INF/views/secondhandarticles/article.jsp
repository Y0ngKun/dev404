<%@ page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="pageTitle" value="${article.title}"></c:set>
<%@ include file="../include/header.jspf"%>

<c:if test="${article.lng != null && article.lat != null }">
<script type="text/javascript" src="${kakaoKey}"></script>
</c:if>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<!-- 당근 -->
 <link rel="stylesheet" media="all" href="https://d1unjqcospf8gs.cloudfront.net/assets/home/articles/show-761545e418b84f277aa422ad6dc89cee119e0355d95f099cd3141f529fea4806.css" />
<!-- slick -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<link rel="stylesheet" href="../css/secondhand/article.css" />
<!-- 카카오 맵 -->

<div style="margin: 95px auto; width: 100%; font-size: 1.5rem">
	<article id="content" data-id="${article.id}">
		<div class="row">
			<span class="prev col-1" id="aro1_prev" style="text-align: center"><i class="bi bi-arrow-left"></i></span>
			<div class="imageArea col-10" style="height:350px; overflow: hidden; margin: auto"></div>
			<span class="next col-1" id="aro1_next" style="text-align: center"><i class="bi bi-arrow-right"></i></span>
		</div>
		<section id="article-profile">
			<h3 class="hide">프로필</h3>
			<c:if test="${loginUser == article.memberNo }">
			<div class="dropdown mt-3 mb-3">
			  <button class="common-btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
			    내 글 수정하기
			  </button>
			  <ul class="dropdown-menu myArticle">
			    <li><a class="dropdown-item article_dropdown isSell" href="id=${article.id}&sell=1">예약중</a></li>
			    <li><a class="dropdown-item article_dropdown isSell" href="id=${article.id}&sell=2">거래완료</a></li>
			    <li><a class="dropdown-item article_dropdown" href="modify?id=${article.id}">글 수정하기</a></li>
			    <li><a class="dropdown-item article_dropdown" id="delete-article" data-id="${article.id}">글 삭제하기</a></li>
			  </ul>
			</div>
			</c:if>
			<div class="space-between">
					<!-- 
					<div id="article-profile-image">
						<img alt="당근당근쥬스"
							src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c649f052a34ebc4eee35048815d8e4f73061bf74552558bb70e07133f25524f9.png" />
					</div>
					 -->
				<div id="article-profile-left" style="display:flex">
					<div>
						<div id="nickname" class="fs-2">${article.nickname }</div>
						<div id="region-name">${article.address }</div>
					</div>
					<c:choose>
						<c:when test="${article.sell == 1 }">
							<div class="ms-4"><span style="background-color : #22c355;font-size: 12px; margin-left: -4px; margin-top: 6px"class="badge"> 예약중 </span></div>
						</c:when>
						<c:when test="${article.sell == 2 }">
							<div class="ms-4"><span class="badge bg-secondary" style="font-size: 12px; margin-left: -4px; margin-top: 6px">거래 완료</span></div>
						</c:when>
						<c:otherwise>
							<div class="ms-4"><span class="badge" style="background-color: #ff8a3d; font-size: 12px; margin-left: -4px; margin-top: 6px">판매중</span></div>
						</c:otherwise>
					</c:choose>
				</div>
				
				<div id="article-profile-right">
					<i class="bi bi-heart"></i>
				<!--
					<dl id="temperature-wrap">
						<dt>매너온도</dt>
						<dd class="text-color-04 ">
							90.4 <span>°C</span>
						</dd>
					</dl>
					<div class="meters">
						<div class=" bar bar-color-04" style="width: 39%;"></div>
					</div>
					<div class=" face face-04"></div>
				</div>
				 -->
				</div>
			</div>
		</section>

		<section id="article-description">
			<h1 property="schema:name" id="article-title"
				style="margin-top: 0px;">${article.title}</h1>
			<p id="article-category" data-time='<fmt:formatDate value="${article.updateDate}" pattern="yyyy/MM/dd HH:mm:ss"/>'></p>
			<p id="cost-area">
				<fmt:formatNumber value="${article.cost}" pattern="#,###" />원
				<span style="color : gray ; font-size : 10px;">
					${article.costOffer == true ? '가격제안 가능' : '가격제안 불가능' }
				</span>
			 </p>
			<!--  <div property="schema:description" id="article-detail">-->
				<pre>${article.body} </pre>
			<!-- </div> -->
			<p id="article-counts">관심 <span id="like">${article.likeCount}</span> ∙ 채팅 ${article.chatCount} ∙ 조회 ${article.hitCount }</p>
			
			<c:if test="${article.lng != null && article.lat != null }">
				<div id="staticMap" style="width:100%;height:350px; margin:auto;" data-lng="${article.lng}" data-lat="${article.lat}"></div>	
			</c:if>
			
			<c:if test="${article.locationInfo != null }">
				<div class="mt-2 mb-2">희망 거래 장소 : ${article.locationInfo}</div>
			</c:if>
			
			<button data-loginuser="${loginUser}" data-targetUser="${article.memberNo}" data-articleNo="${article.id}" data-sell="${article.sell}" id="chat-btn" class="mt-2 common-btn">채팅하기</button>
		</section>
	</article>
</div>
<c:if test="${article.lng != null && article.lat != null }">
<script src="../js/secondhand/staticMap.js"></script>
</c:if>

<script src="../js/secondhand/article.js"></script>
<%@ include file="../include/footer.jspf"%>