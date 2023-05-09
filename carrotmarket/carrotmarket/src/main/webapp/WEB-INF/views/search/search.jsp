<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="../css/search.css">
<%@ include file="../include/header.jspf"%>



<section id="result">
	<div class="result-container">
		<div id="flea-market-wrap" class="articles-wrap">
			<div style="display: flex; justify-content: space-between;">
				<p class="article-kind">중고거래</p>
				<c:if test="${loginUser != null }">
					<a href="/ex02/articles/new"class="article-kind">당근 등록</a>
				</c:if>
			</div>
			<article class="flea-market-article flat-card">
				<a class="flea-market-article-link" href="/articles/579662287">
					<div class="card-photo">
						<img alt="(미개봉) 삼성 갤럭시북2 NT550XEZ-A58A (사무용 노트북. 업무용 노트북) 삼성노트북"
							src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/ca587ba8f04d080ef9ce53425fc1b747ce28596ab081d6e2c1389d5c9c350dca_0.webp?q=82&amp;s=300x300&amp;t=crop" />
					</div>
					<div class="article-info">
						<div class="article-title-content">
							<span class="article-title">(미개봉) 삼성 갤럭시북2 NT550XEZ-A58A
								(사무용 노트북. 업무용 노트북) 삼성노트북</span> <span class="article-content">미개봉
								새상품 제조년월23년2월 삼성전자 갤럭시북2 NT550XEZ-A58A 노트북 팝니다. 색상 그라파이트 구성품 노트북
								본품, 유선마우스, 충전기, 케이블 도 포함되어있어요 죄송하지만 네고문의는 답장 안합니다. 15.6인치 PD충전
								i5-12세대 1235U DDR4 8GB M.2 256GB 색상 그라파이트 노트북뒷판 뚜껑이 있어 램 및
								hdd,ssd추가도 쉽습니다. 핸드폰충전기 C타입으로 충전이되는 제품이라 편리합니다. 윈도우 미설치제품으로
								직접설치하셔야합니다.</span>
						</div>

						<p class="article-region-name">충남 천안시 동남구 수신면</p>
						<p class="article-price ">580,000원</p>
						<section class="article-sub-info">
							<span class="article-watch"> <img class="watch-icon"
								alt="Watch count"
								src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg" />
								1
							</span>
						</section>
					</div>
				</a>
			</article>
			<div class="more-btn" data-o-keyword="노트북" data-page="1" data-total-pages="834">
   			<span class="more-text">더보기</span>
      		<div class="more-loading">
        	<div class="loader"></div>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jspf"%>