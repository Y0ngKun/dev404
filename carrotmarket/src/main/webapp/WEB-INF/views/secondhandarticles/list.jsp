<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="당근 찾기"></c:set>

<link rel="stylesheet" media="all" href="https://d1unjqcospf8gs.cloudfront.net/assets/home/search/index-0ea06e6a74007d2189f614229a312e9d24063f6171f58f38e95232750d810017.css" />
<%@ include file="../include/header.jspf"%>

<link rel="stylesheet" type="text/css" href="../css/secondhand/list.css">

<section id="result">
	<div class="result-container">
		<div id="flea-market-wrap" class="articles-wrap">
			<div style="display: flex; justify-content: space-between;">
				<p class="article-kind">중고거래</p>
				<c:if test="${loginUser != null }">
					<a href="/ex02/sharticle/new" class="article-kind">당근 등록</a>
				</c:if>
			</div>
			<div id="result-area">
			
			</div>
			<div class="more-btn">
   			<span class="more-text">더보기</span>
      		<div class="more-loading">
        	<div class="loader"></div>
		</div>
	</div>
</section>
<script src="../js/secondhand/list.js"></script>
<%@ include file="../include/footer.jspf"%>