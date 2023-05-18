<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="pageTitle" value="${article.title}"></c:set>
<%@ include file="../include/header.jspf"%>
<script type="text/javascript" src="${kakaoKey}"></script>
 <link rel="stylesheet" media="all" href="https://d1unjqcospf8gs.cloudfront.net/assets/home/articles/show-761545e418b84f277aa422ad6dc89cee119e0355d95f099cd3141f529fea4806.css" />

<div style="margin: 160px auto; width: 80%; font-size: 1.5rem">
	<article id="content" data-id="${article.id}">
		<h1 class="hide">참치캔</h1>
		<div class="imageArea">	
		</div>

		<section id="article-profile">
			<a id="article-profile-link" href="/u/ngk6owM6rAY0pbXq">
				<h3 class="hide">프로필</h3>
				<div class="space-between">
					<div style="display: flex;">
						<!-- 
						<div id="article-profile-image">
							<img alt="당근당근쥬스"
								src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c649f052a34ebc4eee35048815d8e4f73061bf74552558bb70e07133f25524f9.png" />
						</div>
						 -->
						<div id="article-profile-left">
							<div id="nickname">${article.nickname }</div>
							<div id="region-name">${article.address }</div>
						</div>
					</div>
					<div id="article-profile-right">
						<dl id="temperature-wrap">
							<dt>매너온도</dt>
							<dd class="text-color-04 ">
								39.4 <span>°C</span>
							</dd>
						</dl>
						<div class="meters">
							<div class=" bar bar-color-04" style="width: 39%;"></div>
						</div>
						<div class=" face face-04"></div>
					</div>
				</div>
			</a>
		</section>

		<section id="article-description">
			<h1 property="schema:name" id="article-title"
				style="margin-top: 0px;">${article.title}</h1>
			<p id="article-category">
				가공식품 ∙
				<time> 6일 전 </time>
			</p>
			
			<p style="font-size: 18px; font-weight: bold;">
				<fmt:formatNumber value="${article.cost}" type="currency"></fmt:formatNumber>
			 </p>
			<div property="schema:description" id="article-detail">
				${article.body}
			</div>
			<p id="article-counts">관심 19 ∙ 채팅 56 ∙ 조회 864</p>
		</section>
	</article>
</div>

<script src="../js/article.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>

<%@ include file="../include/footer.jspf"%>