<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="pageTitle" value="당근 올리기"></c:set>

<%@ include file="../include/header.jspf"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script type="text/javascript" src="${kakaoKey}"></script>
<link href="../css/secondhand/article.css" rel="stylesheet">

	
		

	<div style= " margin : 160px auto ; width : 80%; font-size : 1.5rem">
		<form action="modify" method="post" enctype="multipart/form-data" id="modify_form"> 
			<input type="hidden" name="id" value="${article.id}" id="id"/>
			
			
			<div class="mb-3" style="width :100%" id="img_area">
			</div>
	 			
			<div class="input-group mb-3">
			  <input type="file" class="form-control" name="files" id="inputGroupFile02" multiple="multiple" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">올리기</label>
			</div>
		
			<div class="mb-3">
			  <label for="title" class="form-label">제목</label>
			  <input type="text" class="form-control" name="title" value="${article.title}">
			</div>
			
			<div class="mb-3">
			  <label for="cost" class="form-label"> 가격 (선택사항)</label>
			  <input type="text" class="form-control" name="cost" placeholder="숫자만 입력해주세요" value="${article.cost}">
			</div>
			
			<div class="form-check mb-3" style="margin-left : 6px;">
			  <input class="form-check-input" name="costOffer" type="checkbox" id="flexCheckDefault" style="padding : 7px;" ${article.costOffer == true ? 'checked' : ''} >
			  <label class="form-check-label ms-1" for="flexCheckDefault" >
			    가격 제안 받기
			  </label>
			</div>
			
			<div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label">글 내용</label>
			  <textarea class="form-control" name="body" id="exampleFormControlTextarea1" rows="10">${article.body}</textarea>
			</div>
			
			<div class="mb-3">
			 	<label for="location_search" class="form-label">거래 희망 장소 (선택사항)</label>
			 	<span style="font-size : 1rem; color : gray;">검색 후 마커를 선택해주세요</span> 
				<div class="input-group mb-3">
				  <input id="location_search" type="text" class="form-control" placeholder="원하는 거래 장소">
				  <button class="btn" type="button" id="button-addon2">찾기</button>
				</div>
				<div id="maparea">
					<c:if test="${article.lng != null && article.lat != null }">
					<span id="istrue"></span>
					</c:if>
				</div>
				<input type="hidden" id="lat" name="lat" value="${article.lat}"/>
				<input type="hidden" id="lng" name="lng" value="${article.lng}"/>
				
				<div class="mb-3">
			 		<label for="location_detail" class="form-label">선택한 곳의 장소명을 입력해 주세요</label>
			 		<span style="font-size : 1rem; color : gray;">누구나 찾기 쉬운 공공장소가 좋아요</span>
					<input type="text" class="form-control" name="locationInfo" value="${article.locationInfo}">
				</div>
			</div>
			
			<input type="submit" style="height: 48px;" class="common-btn" id="modify_submit" value="당근 올리기"/>
		</form>
		<div id="delete-area">
			
		</div>
	</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="../js/secondhand/modify.js"></script>
<script src="../js/secondhand/map.js"></script>

<%@ include file="../include/footer.jspf"%>