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

	<%@ include file="../include/header.jsp"%>

	<div class="container mt-4 mb-4" id="mainContent">
		<div class="row">
			<div class="col-md-2">
				<h4 class="wordArtEffect text-success pl-4">메뉴</h4>
				<nav class="navbar bg-dark navbar-dark container">
					<!-- RWD의 화면 축소시 나타나는 메뉴 버튼(상병계급장) -->
					<!-- d-md-none은 메뉴가 감추어지지 아노고 펼쳐지는 것 예방 -->
					<button class="navbar-toggler d-md-none" type="button"
						data-toggle="collapse" data-target="#collapsibleVertical">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse d-md-block"
						id="collapsibleVertical">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#"> <i
									class="fas fa-home" style="font-size: 30px; color: white;"></i>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="list">게시판
									목록</a></li>
							<li class="nav-item"><a class="nav-link"
								href='modify?bno=<c:out value="${board.bno }"/>'>수정</a></li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="col-md-10">
				<div id="submain">
					<h4 class="text-center wordArtEffect text-success">게시글 내용</h4>
					<form>
						<div class="form-group">
							<label for="bno">번호:</label> <input type="text"
								class="form-control" id="bno" name="bno" readonly
								value='<c:out value="${board.bno }"/>' />
						</div>
						<div class="form-group">
							<label for="title">제목:</label> <input type="text"
								class="form-control" id="title" name="title" readonly
								value='<c:out value="${board.title }"/>' />
						</div>
						<div class="form-group">
							<label for="content">내용:</label>
							<textarea class="form-control" id="content" name="content"
								rows="10" readonly> <c:out value="${board.content}" />
						</textarea>
						</div>
						<div class="form-group">
							<label for="writer">작성자:</label> <input type="text"
								class="form-control" id="writer" name="writer" readonly
								value='<c:out value="${board.writer }"/>' />
						</div>
					</form>
					
					<!-- 
					<button type="button" data-oper='modify' class="btn btn-info">수정</button>
					 -->
					 
					 <sec:authentication property="principal" var="pinfo"/>
					 <sec:authorize access="isAuthenticated()">
					 	<c:if test="${pinfo.username eq board.writer}">
					 	<button data-oper='modify' class="btn btn-info">Modify</button>
					 	</c:if>
					 </sec:authorize>					 
					&nbsp;&nbsp;
					<button data-oper='list' class="btn btn-danger">게시판목록</button>
					<!-- 버튼 클릭을 처리하기 위한 form,안보이는 창 -->
					<form id='operForm' action="modify" method="get">
						<input type='hidden' id='bno' name='bno'
							value='<c:out value="${board.bno}"/>'> 
						<!-- 페이지 정보를 추가 -->	
						<input
							type='hidden' name='pageNum'
							value='<c:out value="${cri.pageNum}"/>'> 
						<input
							type='hidden' name='amount'
							value='<c:out value="${cri.amount}"/>'>
						<!--  검색 적용 -->	
						<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
  						<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>	
					</form>
					
					<!-- 첨부물 처리 창 -->					
					<div class='uploadResult mt-3'>					
						<div class='row' id='card'>
						</div>  			
					</div>		
					
					<!-- 댓글 처리 창 -->
					<div class="row mt-4">
						<div class="col-md-12 clearfix">							
					        	<i class="fas fa-reply fa-2x"></i> Reply
					        	<sec:authorize access="isAuthenticated()">
					        	<button id='addReplyBtn' class='btn btn-outline-primary float-right'>
					        		New Reply
					        	</button>
					        	</sec:authorize>			      
					     </div>  
					</div>
					<div class="row mt-2">
						<div class="col-md-12">
							<ul class="chat list-group">
								<!-- 
								<li class='list-group-item clearfix' data-rno='12'>
									<strong class='text-primary'>user00</strong>
									<small class='float-right text-mute'>2023-05-03</small>
									<p>댓글 내용입니다</p>
								</li>
								 -->
							</ul>        
						</div>
					</div> <!-- 댓글 list -->
					
					<!-- 댓글용 페이지 표시 --> 
					<div id='replyPage'>
						
					</div><!-- 댓글 페이지 -->
					     
				</div><!-- submain -->
			</div><!-- 우측 col-md-10 -->
			
		</div><!-- row -->		
	</div> <!-- mainContent -->	

	<%@ include file="../include/replyModal.jsp"%>
	<%@ include file="../include/imageModal.jsp"%>
	<%@ include file="../include/footer.jsp"%>
	
	<%--외부 js파일 임포트 --%>
	<script src="../js/reply.js"></script>
	
	<%--테스트용 script --%>
	<!-- 테스트 종료후에는 주석 처리
	<script>
		console.log("JS TEST");
		console.log(replyService);
		let bnoValue = '<c:out value="${board.bno}"/>'
		replyService.add(
				{reply:"JS Test", replyer:"tester", bno:bnoValue},
				function(result){ 
				      alert("RESULT: " + result);
				    }
		);
		
		replyService.getList({bno:bnoValue, page:1}, function(list){
		      //list는 getList에서 받는 성공시 데이터
			  for(var i = 0,  len = list.length||0; i < len; i++ ){
			    console.log(list[i]);
			  }
		});
		
		replyService.remove(15, function(count) { //count는 성공시 서버에서 오는 데이터,여기서 callback구현

			   console.log(count);

			   if (count === "success") {
			     alert("REMOVED");
			   }
			 }, function(err) {
			   alert('ERROR...');
		});
		
		replyService.update({
			  rno : 12,
			  bno : bnoValue,
			  reply : "Modified Reply...."
			}, 
			function(result) {
	
			  alert("수정 완료...");

		});
		
		replyService.get(10,function(data){
			console.log(data);
		});
		
	</script>
	-->
	
	<!-- 댓글 처리, script엘리먼트는 필요한 위치에서 여러개 사용해도 무방 -->
	<script>
		$(document).ready(function(){
			let bnoValue = '<c:out value="${board.bno}"/>';
			let replyUL = $(".chat");
			
			showList(1);
			
			
			/*
			function showList(page) {
				console.log("show list " + page);
				
				replyService.getList({bno:bnoValue,page: page|| 1 },						
						function(list){  //list는 서버에서 ArrayList(배열형태,요소는 reply객체의 JSON배열)
						//자바스크립트에서는 JS객체 처럼 사용
						
						var str="";							
						
						if(list == null || list.length == 0){
						       replyUL.html("");						      
						       return;
						}
						
						for (let i = 0, len = list.length || 0; i < len; i++) {
							str += "<li class='list-group-item clearfix' data-rno='"+list[i].rno+"'>";
							str += "<strong class='text-primary'>" + list[i].replyer + "</strong>";
							//str += "<small class='float-right text-mute'>" + list[i].replyDate + "</small>";
							str += "<small class='float-right text-mute'>" + replyService.displayTime(list[i].replyDate) + "</small>";						
							str += "<p>" + list[i].reply + "</p>";
							str += "</li>";							
					    }
					
					//자바에서 Date객체는 ajax로 클라이언트에서 처리시는 posix로 처리됨
					
					replyUL.html(str);
					
				});
			} 
			*/
			
			function showList(page){
				
				console.log("show list " + page);
			    
			    replyService.getList({bno:bnoValue,page: page|| 1 }, function(rpDto) {
			    	let replyCnt = rpDto.replyCnt;
			    	let list = rpDto.list;
				    console.log("replyCnt: "+ replyCnt );
				    console.log("list: " + list);
				   
				    
				    if(page == -1){
				      pageNum = Math.ceil(replyCnt/10.0);
				      showList(pageNum);
				      return;
				    }
				      
				     let str="";
				     
				     if(list == null || list.length == 0){
				    	 replyUL.html(""); 
				         return;
				     }
				     
				     for (let i = 0, len = list.length || 0; i < len; i++) {
							str += "<li class='list-group-item clearfix' data-rno='"+list[i].rno+"'>";
							str += "<strong class='text-primary'>" + list[i].replyer + "</strong>";
							//str += "<small class='float-right text-mute'>" + list[i].replyDate + "</small>";
							str += "<small class='float-right text-mute'>" + replyService.displayTime(list[i].replyDate) + "</small>";						
							str += "<p>" + list[i].reply + "</p>";
							str += "</li>";
					 }
				     
				     replyUL.html(str);
				     
				   
				     
				     showReplyPage(replyCnt);
			 
			   });//replyService.getList()
			     
			}//end showList()
			
			let pageNum = 1;
			let replyPageFooter = $("#replyPage");
			
			function showReplyPage(replyCnt) {
				
				let endNum = Math.ceil(pageNum / 10.0) * 10;
				let startNum = endNum - 9;
				
				let prev = startNum != 1;
			    let next = false;
			    
			    if(endNum * 10 >= replyCnt) {
			    	endNum = Math.ceil(replyCnt/10.0);
			    }
			    
			    if(endNum * 10 < replyCnt) {
			    	next = true;
			    }
			    
			    let str = "<ul class='pagination justify-content-center' style='margin: 20px 0'>";
			    if(prev) {
			    	str += "<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
			    }
			    
			    for(let i = startNum ; i <= endNum; i++) {
			    	let active = pageNum == i ? "active": "";
			    	str+= "<li class='page-item " +active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
			    }
			    
			    if(next) {
			    	str += "<li class='page-item'><a class='page-link' href='"+(endNum + 1)+"'>Next</a></li>";
			    }
				
			    str += "</ul>";
			    
			    console.log(str);
			    
			    replyPageFooter.html(str);
			    
			} //showReplyPage(replyCnt)
			
			let modal = $("#myReplyModal");
		    let modalInputReply = modal.find("input[name='reply']"); //find는 후손중에서 선택
		    let modalInputReplyer = modal.find("input[name='replyer']");
		    let modalInputReplyDate = modal.find("input[name='replyDate']");
		    
		    let modalModBtn = $("#modalModBtn");
		    let modalRemoveBtn = $("#modalRemoveBtn");
		    let modalRegisterBtn = $("#modalRegisterBtn");
		    
			let replyer = null;
			<sec:authentication property="principal" var="pinfo"/>
		    <sec:authorize access="isAuthenticated()">		    
		    	replyer = '<sec:authentication property="principal.username"/>'; 
		    	//이메일 주소가 encode되어 나옴
		    	replyerS = "${pinfo.username}"; //정상 이메일 문자열		    	
			</sec:authorize>
		    
		    let csrfHeaderName ="${_csrf.headerName}"; 
		    let csrfTokenValue="${_csrf.token}";
		    
		    $(document).ajaxSend(function(e, xhr, options) { 
		        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
		    });
		    
		    //나가기버튼 이벤트 처리
		    $("#modalCloseBtn").on("click", function(e){
    	
    			modal.modal('hide');
    		});
		    
		    //등록 모달창 이벤트
			$("#addReplyBtn").on("click", function(e){
				
				modal.find("input").val(""); //input의 값을 초기화
			    modal.find("input[name='replyer']").val(replyerS); //로그인한 사용자로 작성자 고정
			    modalInputReplyDate.closest("div").hide(); //날짜 입력DOM은 감춤
			    modal.find("button[id !='modalCloseBtn']").hide(); //나가기만 보임
			      
			    modalRegisterBtn.show(); //등록버튼 다시 보이게
			      
			    $(".replyModal").modal("show");			   
			      
			 });
		    
		    //댓글 등록 이벤트
		    modalRegisterBtn.on("click",function(e){
      
		      let reply = {
		            reply: modalInputReply.val(),
		            replyer:modalInputReplyer.val(),
		            bno:bnoValue
		      };
		      replyService.add(reply, function(result){
		        
		        alert(result);
		        
		        modal.find("input").val("");
		        modal.modal("hide");
		        
		        showList(1); //등록후 댓글 목록 보이게 함
		        //showList(-1);
		        
		   	  });
		    });
		    
		    //댓글 조회 이벤트
		    $(".chat").on("click", "li", function(e){  //li는 .chat의 자식(후손)
		       
		        let rno = $(this).data("rno"); 
		    	//이벤트가 일어난 li는 this
		    	//data(data-의 값)은 data-값으로 되어있는 DOM선택
		        
		        replyService.get(rno, function(reply){
		        //reply는 서버에서 받은 ReplyVo의 JSON인데 바로 JS의 객체로 처리 		        
		        modalInputReply.val(reply.reply);		       
		        modalInputReplyer.val(reply.replyer);		        
		        modalInputReplyDate.val(replyService.displayTime( reply.replyDate))
		        .attr("readonly","readonly");
		        modal.data("rno", reply.rno);
		        //data-rno속성을 reply.rno로 추가
		          
		        modal.find("button[id !='modalCloseBtn']").hide();
		        modalModBtn.show();
		        modalRemoveBtn.show();
		          
		        $(".replyModal").modal("show");
		              
		      });
		    });
		    
		    //댓글 수정 이벤트
		    /*
		    modalModBtn.on("click", function(e){
		        
		        var reply = {rno:modal.data("rno"), reply: modalInputReply.val()};
		        
		        replyService.update(reply, function(result){
		              
		          alert(result);
		          modal.modal("hide");
		          showList(1);
		          
		        });
		        
		    });
		    */
		    
		    //modal창에서 이메일 주소가 encode형식으로 되어 있음,remove와 modify에서 비교는 인코딩상태로 하고 reply.js로는 정상 형태로 보냄
		    modalModBtn.on("click", function(e){
		    	
		    	let originalReplyer = modalInputReplyer.val();
		    	
		      let reply = {
		    		      rno:modal.data("rno"), 
		    		      reply: modalInputReply.val(),
		    		      //replyer: originalReplyer}; 
		      			  replyer : replyerS};
		      
		    	if(!replyerS){
		    		 alert("로그인후 수정이 가능합니다.");
		    		 modal.modal("hide");
		    		 return;
		    	}

		    	console.log("Original Replyer: " + originalReplyer);
		    	
		    	if(replyerS  != originalReplyer){
		    	 
		    		 alert("자신이 작성한 댓글만 수정이 가능합니다.");
		    		 modal.modal("hide");
		    		 return;
		    	 
		    	}
		    	  
		    	replyService.update(reply, function(result){
		    	      
		    	  alert(result);
		    	  modal.modal("hide");
		    	  showList(pageNum);
		    	  
		    	});
		      
		    });
		    
		    //삭제 이벤트
		    modalRemoveBtn.on("click", function (e){
		    	  
		    	  let rno = modal.data("rno");
		    	  
		    	  console.log("RNO: " + rno);
		       	  console.log("REPLYER: " + replyer);
		       	 
		       	  
		       	  if(!replyer){
		     	 	  alert("로그인후 삭제가 가능합니다.");
		     		  modal.modal("hide");
		     		  return;
		     	  }
		       	  
		          let originalReplyer = modalInputReplyer.val();
		     	  
		     	  console.log("Original Replyer: " + originalReplyer);
		     	  
		     	 if(replyerS  != originalReplyer){
		     		  
		     		  alert("자신이 작성한 댓글만 삭제가 가능합니다.");
		     		  modal.modal("hide");
		     		  return;
		     		  
		     	  }
		    	
		     	  originalReplyer = replyerS;
		     	
		    	 // replyService.remove(rno, originalReplyer, function(result){
		    	 replyService.remove(rno, function(result){	
		    	        
		    	      alert(result);
		    	      modal.modal("hide");
		    	      //showList(1);		    	     
		    	      showList(pageNum);
		    	      
		    	  });
		    	  
		   });
		    
		    //페이지 번호 클릭 이벤트
		    replyPageFooter.on("click","li a", function(e){
		        e.preventDefault();
		        console.log("page click");
		        
		        var targetPageNum = $(this).attr("href");
		        
		        console.log("targetPageNum: " + targetPageNum);
		        
		        pageNum = targetPageNum;
		        
		        showList(pageNum);
		     });
		    
		});
	</script>
	
	
	<!-- 게시판 상세보기 창에서 게시판 관련 이벤트 처리 -->
	<script>
		$(document).ready(function() {
			let operForm = $("#operForm");
			$("button[data-oper='modify']").on("click", function(e) {
				operForm.attr("action", "modify").submit();
			});
			$("button[data-oper='list']").on("click", function(e) {
				operForm.find("#bno").remove();
				//id가 bno인 DOM을 찾아서 제거
				operForm.attr("action", "list");
				operForm.submit();
			});
		});
	</script>
	
	
	<!-- 첨부물 처리 자바스크립트 -->
	<script>
		$(document).ready(function(){
			//즉시실행함수(1회)
			(function(){
				let bno = '<c:out value="${board.bno}"/>';
				$.getJSON("getAttachList", {bno: bno}, function(arr){
				    
				      console.log(arr);	
				      
				      let str = "";
				      
				      $(arr).each(function(i, obj){
				    	  
				    	  if (!obj.fileType)  {	
				    		  
				    		    //한글 이나ㅣ 공백등이 URL에 포함되어 있을시를 해결 encodeURIComponent()
								let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
								//YYYY/MM/DD/uuid_파일명
								//BS4의 카드 방식으로 표시
								str += "<div class='card col-md-3'>";
								str += "<div class='card-body'>";
								str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'>";
								str += "<a href='../upload/download?fileName=" + fileCallPath +"'>";
								//str += "<i class='fa fa-paperclip fa-4x' aria-hidden='true'></i>";
								str += "<img class='mx-auto d-block' src='../images/attach.png' >";
								str += "</a>";
								str += "</p>";
								//str += "<h4><span class='d-block w-50 mx-auto' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
								str += "</div>";
								str += "</div>";
								
							}				    	  
							else {
																
								let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid+"_"+obj.fileName);
								let originPath = obj.uploadPath+ "\\"+obj.uuid +"_"+obj.fileName; //원본파일 경로
								originPath = originPath.replace(new RegExp(/\\/g),"/"); //\\를 /로 대체 
								
								str += "<div class='card col-md-3'>";
								str += "<div class='card-body'>";
								str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'>";
								str += "<a href=\"javascript:showImage(\'"+originPath+"\')\">"; //원본 파일 보기 위해 클릭 이벤트 처리
								str += "<img class='mx-auto d-block' src='../upload/display?fileName=" +fileCallPath+"'></a>"; //클릭 링크 이미지,직접 자원에 접근 못함
								str += "</p>";
								//str += "<h4><span class='d-block w-50 mx-auto' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";
								str += "</div>";
								str += "</div>";
							}
				    	  				    	  
				      });
				      
				      $(".uploadResult #card").html(str);
				 });
			})();
			
			/*
			$(".uploadResult").on("click","span", function(e){
				   
				  var targetFile = $(this).data("file");
				  var type = $(this).data("type");
				  console.log(targetFile);
				  
				  let targetLi = $(this).closest(".card");
				  
				  $.ajax({
				    url: '../upload/deleteFile',
				    data: {fileName: targetFile, type:type},
				    dataType:'text',
				    type: 'POST',
				    success: function(result){
				         //alert(result);
				    	targetLi.remove();
				   }
				 }); //$.ajax
				  
			});	
			*/
			
		});
		
		//외부에서 get으로 호출
		function showImage(fileCallPath) {
			//<a>태그에서 직접 호출시 대비
			//alert(fileCallPath);
			
			/*
			$(".bigPictureWrapper").css("display","block").show();
			
			$(".bigPicture")
			  .html("<img class='d-block w-75 mx-auto' src='display?fileName="+ encodeURI(fileCallPath)+"'>")
			  .animate({width:'100%', height: '100%'}, 1000);
			*/
			 $('.imageModal .modal-body').html("<img class='d-block w-75 mx-auto' src='../upload/display?fileName="+encodeURI(fileCallPath)+"&size=1' >")

	         $(".imageModal").modal("show");
		}
	</script>
</body>
</html>