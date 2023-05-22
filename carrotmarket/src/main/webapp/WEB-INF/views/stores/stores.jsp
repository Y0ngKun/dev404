<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    

<c:set var="pageTitle" value="동네 이웃들이 자주가는 동네 가게"></c:set>
<%@ include file="../include/header.jspf" %>

<div class="top-banner">test</div>

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
				<a href="/ex02/stores/business-profiles">
					<div class="card">
						<img
							src="https://dnvefa72aowie.cloudfront.net/businessPlatform/bizPlatform/profile/center_biz_5863590/1677722646074/e956d3d9f7a89abd32a1c13a79476d7290aa53d05f2b2e40c79490551994c6d4.jpeg?q=82&s=640x640&t=crop"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">수산물</h5>
							<p class="card-text">This is a card.</p>
						</div>
					</div>
				</a>
				</li>
				<li class="col-md-6">
					<a href="#">
					<div class="card">
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%202&w=300&h=150"
							class="card-img-top" alt="Card image cap">
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
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%203&w=300&h=150"
							class="card-img-top" alt="Card image cap">
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
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%204&w=300&h=150"
							class="card-img-top" alt="Card image cap">
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
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%205&w=300&h=150"
							class="card-img-top" alt="Card image cap">
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
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
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
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
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
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
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
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
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
						<img
							src="https://placeholdit.imgix.net/~text?txtsize=33&txt=Card%206&w=300&h=150"
							class="card-img-top" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<p class="card-text">This is a card.</p>
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
<div class="container mt-4 mb-4" id="mainContent" >
	<div class="row">
		
		<div class="col-md-12">
			<div id="submain">
				<h4 class="text-center wordArtEffect text-success">게시물 등록</h4>
				
						<div class="attach mt-4">
					<h5 class="text-center wordArtEffect text-success mb-5"> <i class="fa-regular fa-images" style="font-size: 30px;"></i> </h5>
					<div class="row">						
					<!-- 파일 업로드 부분 -->
						<div class="form-group uploadDiv col-md-12">
							<label for="upload">&nbsp;&nbsp;&nbsp;&nbsp;파일업로드:</label>
							<input type="file" class="form-control" id="upload" name="uploadFile" multiple /> 
							<!-- submit버튼없이 change이벤트로 처리 -->
						</div>
					</div>	
						
					<div class='uploadResult mt-3'>
						<!-- 업로드 파일 결과를 보여 주는 창 -->					
						<div class='row' id='card'>
						</div>  			
					</div>					
				</div><!-- 파일 첨부 -->
				
				
				<form action="stores" method="post" id="storesReg" name="storesReg" role="form">
					<!-- 업로드된 파일의 정보를 숨겨서 보낼 위치 -->
					<div class="form-group">
						<label for="title">제목:</label>
						<input type="text" class="form-control" id="title" placeholder="제목을 입력해주세요" 
							name="title" required />		
					</div>
					<div class="form-group">
						<label for="content">내용:</label>
						<textarea class="form-control" id="content" placeholder="상품/서비스 소개, 새로운 메뉴, 이벤트 등 다양한 소식을 알려보세요." 
								name="content" rows="10" style="color:#000000;" required>
						</textarea>		
					</div>
					
					<button type="submit" style="background-color: #ff6f0f; width: 40px; height: 30px; margin-left: 20px; border-radius: 20%;"">작성</button>&nbsp;&nbsp;
					<button type="reset" id="closeModal" style="background-color: #f2f3f6; width: 40px; height: 30px; margin-left: 20px; border-radius: 20%;">취소</button>	&nbsp;&nbsp;
					
				</form>
				
				<!-- 파일 첨부 창 -->				
		
			</div><!-- submain -->
		</div><!-- col-md-10 -->
	</div> <!-- row -->
</div><!-- mainContent -->

  </div>
</div>

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










<%@ include file="../include/footer.jspf" %>

</body>








<style type="text/css">

.top-banner{
text-align:center;
font-size:100px;
width: 100%;
height: 380px;
background-color: #f7f1eb;
overflow: hidden;
background-image: url("../resources/images/nearby_stores_hero_image.png");
background-size: 453px 260px;
background-repeat: no-repeat;
background-position: center;
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
</html>