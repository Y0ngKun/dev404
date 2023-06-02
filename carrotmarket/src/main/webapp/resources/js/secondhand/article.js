/**
 * 
 */
 window.onpopstate = function(e){
	console.log(e.state)
}		
 
 $(document).ready(function(){
 	let articleNo = $("#content").data("id");
 	
 	console.log(history.state);
 	
 	//관심글인지 유무
 	$.ajax({
 		url : '../shlike/like/'+articleNo,
 		success : function(result){
 			if(result == 'success'){
	 			$(".bi").toggleClass("bi-heart-fill");
				$(".bi").toggleClass("bi-heart");
			}
 		}
 	});
 	
 	//이미지 처리하기
 	$.ajax({
 		url: '../shattach/' + articleNo,
 		success : function(result){
 			showImage(result);
 			slickfunction();
 		}
 	});
 	
 	let timeValue = $("#article-category").data('time');
 	let updateTime = displayTime(timeValue);
 	$("#article-category").text(updateTime);
 	
 	//관심 게시글 클릭시
 	$(".bi").on("click",function(){
		
		if( $(this).hasClass("bi-heart")){
			console.log(articleNo);
			$.ajax({
				url : '../shlike/like/'+ articleNo ,
				type : 'post',
				success : function(){
					alert("관심글이 등록되었습니다.");
					$(".bi").toggleClass("bi-heart-fill");
					$(".bi").toggleClass("bi-heart");
					let likeCount = parseInt($("#like").text());
					$("#like").text(likeCount+1);
				},
				error : function(){
					alert('오류');
				}
			});
		}else if( $(this).hasClass("bi-heart-fill")){
			$.ajax({
				url : '../shlike/unlike/'+articleNo,
				type : 'delete',
				success : function(result){
					alert("관심글이 해제되었습니다.");
					$(".bi").toggleClass("bi-heart-fill");
					$(".bi").toggleClass("bi-heart");
					let likeCount = parseInt($("#like").text());
					$("#like").text(likeCount-1);
				},
				error : function(){
					alert('오류');
				}
			});
		}
 	});
 	
 	//게시글 삭제
	$("#delete-article").on("click",function(e){
		e.preventDefault();
		if(confirm('게시글을 삭제하시겠습니까?') ){
			$.ajax({
				url : 'delete',
				data : {id : articleNo},
				type : 'post',
				success : function(result){
					alert("삭제에 성공했습니다.");
					location.replace('/ex02/sharticle/list');
				},
				error : function(error){
					alert("오류");
					history.back();
				}
			})
		}else{
			return false;
		}
	});
	
	//판매상태 변경
	$(".isSell").on("click",function(e){
		e.preventDefault();
		
		if(confirm('정보를 변경하시겠습니까?') ){
			location.replace("sell?" + $(this).attr("href"));
		}else{
			return false;
		}
	});
	
	//채팅버튼 누를시 유효검사
	$("#chat-btn").click(function(e){
		e.preventDefault();
		let loginUser = $(this).data("loginuser");
		let sell = $(this).data("sell");
		let targetUser = $(this).data("targetuser");
		
		if(sell == 2){
			alert('이미 거래가 완료되었습니다.');
			return false;
		}
		
		if(loginUser == targetUser){
			alert('본인이 작성한 글입니다.');
			return false;
		}
		location.href = '../chat/new?targetUser=' + targetUser + '&articleNo=' + articleNo;
	});
 });
 
//게시글 올린 시간을 조회한 시간 기준으로 표시하기
function displayTime(timeValue){
	let today = new Date();
	
	let updateDate = new Date(timeValue);
	let updateTime = Math.floor((today.getTime() - updateDate.getTime()) / 1000 / 60);
	let str = '';
	
	if(updateTime <1){
		str='방금전';
		return str;
	}
	if(updateTime < 60){
		str = updateTime + '분 전';
		return str;
	}
	
	if(updateTime < 60 * 24){
		str = Math.floor(updateTime/60) + '시간 전';
		return str;
	}
	if(updateTime< 365 * 24 * 60 ){
		str = Math.floor(updateTime/60/24)+ '일 전';
		return str;
	}
}
//이미지 가져오기
function showImage(result){
 	let imgArea = $(".imageArea");
 	
 	if(result.length == 0){
	 	let str = '';
		str+= '<img src="../shattach/get?fileName=non"/>';
		imgArea.append(str);
 	}
 	
 	for(let i = 0; i<result.length; i++){
 		let str = '';
 		let filecallpath = encodeURIComponent(result[i].filePath + result[i].fileName);
 		str+= '<img src="../shattach/get?fileName='+ filecallpath + '"/>';
 		imgArea.append(str);
 	}
 }
 //이미지 가져온 후 slick을 사용해 슬라이드 구현
 function slickfunction(){
 	$(".imageArea").slick({
 		slide: 'img',
 		infinite : true,
 		dots : true,
 		draggable : true,
 		arrows: true,
 		prevArrow: $('#aro1_prev'),
		nextArrow: $('#aro1_next'),
 	})
 }