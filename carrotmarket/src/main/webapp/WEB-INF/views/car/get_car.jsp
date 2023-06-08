<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<!-- RWD -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9" />

<style>
.card img {
	width : 150px;
	height : 150px;
}
</style>
</head>

<body>
<%@ include file="../include/header.jspf" %>

<div class="container mt-5 mb-5" id="mainContent">
	<div class="row">
	<div class="col-md-30">
		<div class="col-md-20">
			<div id="submain">
				<br/><br/>
				<br/><br/>
				
				<h3 class="text-center multiEffect text-success">상세보기</h3>
				
				<div class='bigPictureWrapper w-100 mb-5 h-100'>
					<div class='bigPicture'>
					</div>
				</div>

				<!-- 첨부물 처리 창 (추가) -->
	  				<div class='uploadResult mt-4'>
	  					<div class='row' id='card'>
	  					</div>
	  				</div>	
				
				<br/><br/>
  				
  				<form>
  				 	<div class="form-group">
  				 		<label for="cno">번호 : </label>
  				 		<input type="text" class="form-control" id="cno" name="cno" readonly
  				 			value='<c:out value="${car.cno}"/>' />
  				 	</div>
  				 	
  				 	<div class="form-group">
  				 		<label for="writer">작성자 : </label>
  				 		<input type="text" class="form-control" id="writer" name="writer" readonly
  				 			value='<c:out value="${car.writer}"/>' />
  				 	</div>

  				 	<div class="form-group">
  				 		<label for="title">제목 : </label>
  				 		<input type="text" class="form-control" id="title" name="title" readonly
  				 			value='<c:out value="${car.title}"/>' />
  				 	</div>
  				 	
  				 	
  				 	<div class="form-group">
  				 		<label for="content">내용 : </label>
<textarea class="form-control" id="content" name="content" rows="10" readonly><c:out value="${car.content}"/></textarea>
  				 	</div>

	  				<br/><br/>
	  				<div class="form-group">
						<label for="carName">차량명 : </label>
						<input type="text" class="form-control" id="carName" name="carName" 
							readonly="readonly" value='<c:out value="${car.carName}"/>' />
					</div>

	  				<div class="form-group">
						<label for="carType">차종 : </label>
						<input type="text" class="form-control" id="carType" name="carType" 
							readonly="readonly" value='<c:out value="${car.carType}"/>' />
					</div>
	  				
	  				<div class="form-group">
						<label for="carYear">연식 : </label>
						<input type="text" class="form-control" id="carYear" name="carYear" 
							readonly="readonly" value='<c:out value="${car.carType}"/>' />
					</div>
	  				
	  				<div class="form-group">
						<label for="carPrice">금액 : </label>
						<input type="text" class="form-control" id="carPrice" name="carPrice" 
							readonly="readonly" value='<c:out value="${car.carPrice}"/>' />
					</div>

	  				<div class="form-group">
						<label for="carDate">차량 등록일 : </label>
						<input type="text" class="form-control" id="carDate" name="carDate" 
							readonly="readonly" value='<c:out value="${car.carDate}"/>' />
					</div>

	  				<div class="form-group">
						<label for="fuel">연료 : </label>
						<input type="text" class="form-control" id="fuel" name="fuel" 
							readonly="readonly" value='<c:out value="${car.fuel}"/>' />
					</div>
					
	  				<div class="form-group">
						<label for="disp">배기량 : </label>
						<input type="text" class="form-control" id="disp" name="disp" 
							readonly="readonly" value='<c:out value="${car.disp}"/>' />
					</div>

	  				<div class="form-group">
						<label for="kilos">키로수 : </label>
						<input type="text" class="form-control" id="kilos" name="kilos" 
							readonly="readonly" value='<c:out value="${car.kilos}"/>' />
					</div>

	  				<div class="form-group">
						<label for="mission">변속기 : </label>
						<input type="text" class="form-control" id="mission" name="mission" 
							readonly="readonly" value='<c:out value="${car.mission}"/>' />
					</div>
					
					<div class="form-group">
  				 		<label for="regDate">게시글 등록일 : </label>
  				 		<input type="text" class="form-control" id="regDate" name="regDate" readonly
  				 			value='<fmt:formatDate pattern="yyyy/MM/dd" value="${car.regDate}"/>' />
  				 	</div>

  				 	<div class="form-group">
  				 		<label for="updateDate">게시글 수정일 : </label>
  				 		<input type="text" class="form-control" id="updateDate" name="updateDate" readonly
  				 			value='<fmt:formatDate pattern="yyyy/MM/dd" value="${car.updateDate}"/>' />
  				 	</div>
	  				</form>
  				
  				<button type="button" data-oper='modify_car' class="btn btn-info">수정</button>
  				&nbsp;&nbsp;
  				<button data-oper='list_car' class="btn btn-danger">목록</button>
  				
	  				<!-- 버튼 클릭을 처리하기 위해 form추가, 보이지 않게 설정해둠 -->
	  				<form id='operForm' action="modify_car" method="get">
	  					<input type="hidden" id="cno" name="cno"
	  						value='<c:out value="${car.cno}"/>'>
	  				</form>
	  				
	  				<!-- 페이지 정보를 추가 -->	
					<input
						type='hidden' name='pageNum'
						value='<c:out value="${cri.pageNum}"/>'> 
					<input
						type='hidden' name='amount'
						value='<c:out value="${cri.amount}"/>'>
					
					<div id="map" style="width:500px;height:400px;"></div>
					<p><em>지도를 클릭해주세요!</em></p> 
					<div id="clickLatlng"></div>
				
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 카카오맵 api 사용 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=?"></script>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.541494514251, 126.84040179518), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
		//지도를 생성합니다.
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new kakao.maps.Marker({ 
		    // 지도 중심좌표에 마커를 생성합니다 
		    position: map.getCenter() 
		}); 
		// 지도에 마커를 표시합니다
		marker.setMap(map);
		
		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
		    
		    // 클릭한 위도, 경도 정보를 가져옵니다 
		    var latlng = mouseEvent.latLng; 
		    
		    // 마커 위치를 클릭한 위치로 옮깁니다
		    marker.setPosition(latlng);
		    
		    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
		    message += '경도는 ' + latlng.getLng() + ' 입니다';
		    
		    var resultDiv = document.getElementById('clickLatlng'); 
		    resultDiv.innerHTML = message;
		    
		});
	</script>

<!-- 게시판 상세보기 - 관련 이벤트 (동적)처리 -->
<script>
//페이지 로드시 실행 코드를 정의해주는 함수, 즉 페이지가 로드되면 아래 코드 블록이 실행됨.
$(document).ready(function(){
	let operForm = $("#operForm"); 
	//operForm이라는 변수를 선언하여 $("#operForm"); 을 선택자로 하여 id가 operForm인 요소를 가져온다
	
	$("button[data-oper='modify_car']").on("click", function(e){
		
		if(!confirm("수정 하시겠습니까?")){
			alert("수정을 취소 합니다.");
			return false;
		} else {
			alert("수정 창으로 이동 합니다.");
		}
		
		operForm.attr("action", "modify_car").submit();
		
		
	});
	
	$("button[data-oper='list_car']").on("click", function(e){
		operForm.find("#cno").remove();
		//id가 cno인 DOM 객체를 찾아서 제거한다.
		operForm.attr("action", "list_car");
		operForm.submit();
	});
});
</script>

<!-- 첨부파일 처리 자바스크립트 -->
<script>
$(document).ready(function(){
	//즉시실행함수(1회)
	(function(){
		let cno = '<c:out value="${car.cno}"/>';
		$.getJSON("getAttachList", {cno : cno}, function(arr){
		      //GET방식으로 컨트롤러의 getAttachList로 cno값을 보내서 결과를 arr로 받아서 처리
		      console.log(arr);	
		      
		      let str = "";
		      
		      $(arr).each(function(i, obj){
		    	  
		    	  if (!obj.fileType)  {	 //일반 파일일시
		    		  
		    		    //한글 이나ㅣ 공백등이 URL에 포함되어 있을시를 해결 encodeURIComponent()
						let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
						//YYYY/MM/DD/uuid_파일명
						//BS4의 카드 방식으로 표시
						str += "<div class='card col-md-4'>";
						str += "<div class='card-body'>";
						str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'>";
						str += "<a href='../car/download?fileName=" + fileCallPath +"'>";						
						str += "<img class='mx-auto d-block' src='../images/attach.png' >";
						str += "</a>";
						str += "</p>";
						//str += "<h4><span class='d-block w-50 mx-auto' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
						str += "</div>";
						str += "</div>";
						
					}				    	  
					else { //이미지 일시
														
						let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid+"_"+obj.fileName);
						let originPath = obj.uploadPath+ "\\"+obj.uuid +"_"+obj.fileName; //원본파일 경로
						originPath = originPath.replace(new RegExp(/\\/g),"/"); //\\를 /로 대체 
						
						str += "<div class='card col-md-4'>";
						str += "<div class='card-body'>";
						str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'>";
						str += "<a href=\"javascript:showImage(\'"+originPath+"\')\">"; //원본 파일 보기 위해 클릭 이벤트 처리
						str += "<img class='mx-auto d-block' src='../car/display?fileName=" +fileCallPath+"'></a>"; //클릭 링크 이미지,직접 자원에 접근 못함
						str += "</p>";
						//str += "<h4><span class='d-block w-50 mx-auto' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";
						str += "</div>";
						str += "</div>";
					}
		    	  				    	  
		      });
		      console.log(str);
		      $(".uploadResult #card").html(str);
		 });
	})(); //()는 즉시 실행 연산자	
});

function showImage(fileCallPath) {
	//<a>태그에서 직접 호출시 대비
	alert(fileCallPath);
	
	$(".bigPictureWrapper").css("display","block").show();
			
	$(".bigPicture")
		.html("<img class='d-block w-75 mx-auto' src='../car/display?fileName="+ encodeURI(fileCallPath)+"'>")
		.animate({width:'100%', height: '100%'}, 1000);
	
	$('.imageModal_car .modal-body').html("<img class='d-block w-75 mx-auto' src='../car/display?fileName=" + encodeURI(fileCallPath)+"&size=1'>");
    $('.imageModal_car').modal('show');
}
</script>

<%@ include file="../include/footer.jspf" %>

<!-- 데이터를 잘 받아오는지 확인용으로 작성해본 테스트 코드  
<table style="margin-top:600px;">
  <tr>
    <th>번호</th>
    <th>제목</th>
    <th>작성자</th>
    <th>내용</th>
  </tr>
  <tr>
    <td><c:out value="${car.cno}"/></td>
    <td><c:out value="${car.title}"/></td>
    <td><c:out value="${car.writer}"/></td>
    <td><c:out value="${car.content}"/></td>
  </tr>
</table>
-->

<!-- 카카오맵 api 라이브러리 추가  -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>

<!-- 카카오맵 api - services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>

</body>
</html>