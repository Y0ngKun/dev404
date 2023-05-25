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
	<div>
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

		<div class="container stores-list">
			<h1 class="text-center" style="font-size: 30px; padding: 40px 0 40px 0;">다양한 동네가게를 볼 수 있어요</h1>
			<ul class="row">
				<li class="col-md-6">
				<a href="/ex02/stores/business-profiles?title=${list[0].title}&content=${list[0].content}">
					<div class="card">
						<img
							src="https://dnvefa72aowie.cloudfront.net/businessPlatform/bizPlatform/profile/center_biz_5863590/1677722646074/e956d3d9f7a89abd32a1c13a79476d7290aa53d05f2b2e40c79490551994c6d4.jpeg?q=82&s=640x640&t=crop"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title" ><c:out value="${list[0].title}"></c:out></h5>
							<p class="card-text"><c:out value="${list[0].content}"></c:out></p>
						</div>
					</div>
				</a>
				</li>
				<li class="col-md-6">
					<a href="/ex02/stores/business-profiles?title=${list[1].title}&content=${list[1].content}">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%202&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"><c:out value="${list[1].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[1].content}"></c:out></p>
						</div>
					</div>
					</a>
				</li>
				<li class="col-md-6">
				<a href="/ex02/stores/business-profiles?title=${list[2].title}&content=${list[2].content}">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%203&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
								<h5 class="card-title"><c:out value="${list[2].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[2].content}"></c:out></p>
						</div>
					</div>
					</a>
				</li>
				<li class="col-md-6">
				<a href="/ex02/stores/business-profiles?title=${list[3].title}&content=${list[3].content}">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%204&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"><c:out value="${list[3].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[3].content}"></c:out></p>
						</div>
					</div>
					</a>
				</li>
				<li class="col-md-6">
				<a href="/ex02/stores/business-profiles?title=${list[4].title}&content=${list[4].content}">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%205&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"><c:out value="${list[4].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[4].content}"></c:out></p>
						</div>
					</div>
					</a>
				</li>
				<li class="col-md-6">
				<a href="/ex02/stores/business-profiles?title=${list[5].title}&content=${list[5].content}">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
								<h5 class="card-title"><c:out value="${list[5].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[5].content}"></c:out></p>
						</div>
					</div>
					</a>
				</li>
				<li class="col-md-6">
				<a href="/ex02/stores/business-profiles?title=${list[6].title}&content=${list[6].content}">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"><c:out value="${list[6].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[6].content}"></c:out></p>
						</div>
					</div>
					</a>
				</li>
				<li class="col-md-6">
				<a href="/ex02/stores/business-profiles?title=${list[7].title}&content=${list[7].content}">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"><c:out value="${list[7].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[7].content}"></c:out></p>
						</div>
					</div>
					</a>
				</li>
				<li class="col-md-6">
				<a href="/ex02/stores/business-profiles?title=${list[8].title}&content=${list[8].content}">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
								<h5 class="card-title"><c:out value="${list[8].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[8].content}"></c:out></p>
						</div>
					</div>
					</a>
				</li>
				<li class="col-md-6">
				<a href="/ex02/stores/business-profiles?title=${list[9].title}&content=${list[9].content}">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"><c:out value="${list[9].title}"></c:out> </h5>
							<p class="card-text"><c:out value="${list[9].content}"></c:out></p>
						</div>
					</div>
					</a>
				</li>
			</ul>
		</div>
	</div>
</section>




<br/>


<!-- 이용자 후기 섹션 -->
<section class="stores-review">
<div class="container stores-review-list">
<h1 class="text-center" style="font-size:30px; padding:40px 0 40px 0;">동네 이웃이 남긴 후기를 찾아보세요</h1>

  <ul class="row">
    <li class="col-md-6">
    <a href="#">
      <div class="card">
        <img src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%201&w=300&h=150" class="card-img-top" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a card.</p>
        </div>
      </div>
      </a>
    </li>
    
    <li class="col-md-6">
    <a href="#">
      <div class="card">
        <img src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%202&w=300&h=150" class="card-img-top" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a card.</p>
        </div>
      </div>
      </a>
    </li>
    
    <li class="col-md-6">
    <a href="#">
      <div class="card">
        <img src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%203&w=300&h=150" class="card-img-top" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a card.</p>
        </div>
      </div>
      </a>
    </li>
    
    <li class="col-md-6">
    <a href="#">
      <div class="card">
      
        <img src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%204&w=300&h=150" class="card-img-top" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">This is a card.</p>
        </div>
      </div>
      </a>
    </li>
  
  </ul>
</div>
</section>




<!-- 하단 비즈프로필 만들기  -->
<section class="container stores-business" >
<div>
<span>
<img alt="#" src="../resources/images/stores-business.png">
</span>
</div>

<div>
<h6 style="font-size: 30px;">가게를 운영하고 계신가요?</h6>
<span>당근마켓에 등록하고 이웃에게 알려보세요!</span>
</div>


<div>
<a href="#">비즈프로필 만들기</a>
</div>


</section>


<!-- 글쓰기 등록 버튼 -->
<c:if test="${message == 1}">
<div class="fixed-button text-center">
  <a href="#" id="openModal"><span>+ 글쓰기</span></a>
</div>
</c:if>


<!-- 글쓰기 모달창 -->
<div id="myModal" class="modal fixed-button text-center">
	<div class="modal-content">
		<div class="container mt-4 mb-4" id="mainContent">
			<div class="row">

				<div class="col-md-12">
					<div id="submain">
						<h4 class="text-center wordArtEffect text-success">게시물 등록</h4>


						<form role="form" action="stores" id="storesForm" method="post" enctype="multipart/form-data">
								<!-- 파일 업로드 부분 -->
							<div class="attach mt-4">
								<div class="row">
									<div class="form-group uploadDiv col-md-12">
										<label for="upload">&nbsp;&nbsp;&nbsp;&nbsp;파일업로드:</label> <input
											type="file" class="form-control" id="upload" name="uploadFile"
											multiple />
										<!-- submit 버튼 없이 change 이벤트로 처리 -->
									</div>
								</div>
								
								<div class='uploadResult mt-3'>
									<!-- 업로드 파일 결과를 보여 주는 창 -->					
									<div class='row' id='card'>
									
									</div>  			
								</div>	
								
							</div>

							<div class="form-group">
								<label for="title">작성자:</label> <input type="text"
									class="form-control" id="usernickname" value="${usernickname}"
									name="title" readonly="readonly" />
							</div>
							<div class="form-group">
								<label for="location">위치</label> <input type="text"
									class="form-control" id="location" placeholder="가게 위치를 입력해주세요"
									name="location" required />
							</div>
							<div class="form-group">
								<label for="content">내용:</label>
								<textarea class="form-control" id="content" name="content"
									rows="10" style="color: #000000;" maxlength="500" required></textarea>
							</div>

							<button type="submit"
								style="background-color: #ff6f0f; width: 40px; height: 30px; margin-left: 20px; border-radius: 20%;">작성</button>
							&nbsp;&nbsp;
							<button type="reset" id="closeModal"
								style="background-color: #f2f3f6; width: 40px; height: 30px; margin-left: 20px; border-radius: 20%;">취소</button>
							&nbsp;&nbsp;
						</form>

						<!-- 파일 첨부 창 -->

					</div>
					<!-- submain -->
				</div>
				<!-- col-md-10 -->
			</div>
			<!-- row -->
		</div>
		<!-- mainContent -->

	</div>
</div>
<!-- 모달창 끝 -->

<script>
  var openModalBtn = document.getElementById("openModal");
  var closeModalBtn = document.getElementById("closeModal");
  var modal = document.getElementById("myModal");

  // 모달 열기 버튼 클릭 시 모달 표시
  openModalBtn.addEventListener("click", function() {
    modal.style.display = "block";
  });

  // 모달 닫기 버튼 클릭 시 모달 숨김
  closeModalBtn.addEventListener("click", function() {
    modal.style.display = "none";
  });
  
</script>

<!-- 글쓰기 모달창에서 파일 첨부 관련 스크립트 -->
<script type="text/javascript">
$(document).ready(function(){
	let formObj = $("form[role='form']");
	let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	let maxSize = 25242880; //25MB 파일 최대 크기
	let uploadUL = $(".uploadResult #card");
	
	$("button[type='submit']").on("click",function(e){
		console.log("서브밋 버튼 작동 중지 확인")
		e.preventDefault();
		let str = "";
	});
	
});
</script>









<%@ include file="../include/footer.jspf" %>

</body>


<style type="text/css">

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

.stores-list ul li{
 list-style:none;
 margin: 0;
 }
 .stores-list ul li a{
text-decoration: none; 
 }
  .stores-list ul li a:hove{
  background-color: red;
  }
   .stores-list ul li a img{
   width: 80px;
   height: 80px;
 }
 .stores-list ul li p{
 -webkit-line-clamp: 2; 
 -webkit-box-orient: vertical; 
 display: -webkit-box; 
 overflow: hidden; 
 text-overflow: ellipsis; 
 border: 0px solid #ffffff; 
 width: 260px;
 
 }
 
 
 
 
 
 
 
 
 
 
.stores-review ul li{
list-style: none;
margin: 0;
}

.stores-review ul li a{
text-decoration: none;
}


.stores-business{
background-color: #f7be6824;
width: 100%;
height:130px;
margin-top:100px;
margin-bottom:100px;
align-items: center;
}
.stores-caterory ul{
text-align: center;
}
.stores-caterory ul li{
display: inline-block;
cursor: pointer;
}
.stores-caterory ul li label{
cursor: pointer;
}

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

<script>
/*
$(document).ready(function(){
  
  $("#uploadBtn").on("click", function(e){
 
    var formData = new FormData(); //코아객체,form태그DOM,빈 객체                   uploadAjax.jsp
    
    var inputFile = $("input[name='uploadFile']");
    
    var files = inputFile[0].files;
    
    console.log(files);
    
  });  
});
*/
</script>  


</html>