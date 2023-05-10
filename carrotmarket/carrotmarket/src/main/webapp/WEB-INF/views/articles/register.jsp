<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../css/search.css">			
	
	<div style= " margin : 160px auto ; width : 80%; font-size : 1.5rem">
		
	
		<form action="#" method="post" enctype="multipart/form-data" id="register_form"> 
			<div class="mb-3" id="img_area" style="width :100%; height: 100px;background-color : #f9f3e8"></div>
					
			<div class="input-group mb-3">
			  <input type="file" class="form-control" id="inputGroupFile02" multiple="multiple">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div>
			
			<div class="mb-3">
			  <label for="title" class="form-label">글 제목</label>
			  <input type="text" class="form-control" id="title" placeholder="글 제목">
			</div>
			
			<div class="mb-3">
			  <label for="cost" class="form-label">가격</label>
			  <input type="text" class="form-control" id="cost" placeholder="&#8361; 가격 (선택사항)">
			</div>
			
			<div class="form-check mb-3" style="margin-left : 6px;">
			  <input class="form-check-input" name="cost_offer" type="checkbox" value="" id="flexCheckDefault" style="padding : 7px;">
			  <label class="form-check-label ms-1" for="flexCheckDefault" >
			    가격 제안 받기
			  </label>
			</div>
			
			<div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label">글 내용</label>
			  <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" placeholder="글 내용"></textarea>
			</div>
			
			<input type="submit" id="register_submit" value="당근 올리기"/>
		</form>
	</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="../js/articles.js"></script>
<%@ include file="../include/footer.jspf"%>