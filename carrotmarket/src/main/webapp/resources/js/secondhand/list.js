/**
 * 
 */
 $(document).ready(function(){
 	let pageNum = 1;
 	//페이지가 보여졌을때
 	$(window).on('pageshow', function(event) {
 		//뒤로가기 이벤트가 있을때
	    if (event.originalEvent.persisted || (window.performance && window.performance.navigation.type == 2)) {
	    	//history api에서 페이지 정보 꺼내와서 전에 봤던 리스트까지 창 띄우기
	        pageNum = history.state.page;
	        getList(pageNum);
	    }else{
			getList(pageNum);    
	    }
	});	

 	$(".more-btn").on("click",function(e){
 		let loading = '<div class="spinner-border text-warning" role="status"><span class="visually-hidden">Loading...</span></div>'
 		let clone = $(this).clone();
 		$(this).html(loading);
 		pageNum = pageNum+1;
 		getList(pageNum, clone);

 		$(".more-btn").html(clone.html());
 	});
 	
 
 	$("#result-area").on("click","a",function(e){
 		e.preventDefault();
 		let id = $(this).attr("href");
 		$.ajax({
 			url : 'hitcount/'+id,
 			type : 'post',
 			success : function(result){
 				location.href='get?id='+id;
 			}
 		});
 	});
 	
	function getList(pageNum, clone){
 		$.ajax({
 			url : 'list/'+pageNum,
 			success : function(result){
 				$("#result-area").empty();
 				appendList(result);
 			}	
 		});
 		
 		history.pushState({page : pageNum},null,'list');
 		console.log(pageNum);
 	}
 })
 
 function appendList(result){
 	let str = '';
	
	for(let i = 0; i<result.length; i++){
		str +='<article class="flea-market-article flat-card">'
		str +='<a class="flea-market-article-link list-href" href="' + result[i].id + '">'
		str +='<div class="card-photo" style="background : url(../shattach/thumbnail/' + result[i].id + '); background-size: cover;"></div>';				
		str +='<div class="article-info">';
		str +='<div class="article-title-content">';
		str +='<span class="article-title">' + result[i].title + '</span></div>'; 
		str +='<p class="article-region-name">' + result[i].address + '</p>';
		str +='<p class="article-price ">' + AddComma(result[i].cost) + '원</p>';
		
		if(result[i].sell == 0){
			str+='<div class="ms-2"><span class="badge" style="background-color: #ff8a3d; font-size: 12px; margin-left: -4px;">판매중</span></div>';
		}
		if(result[i].sell == 1){
			str+='<div class="ms-2"><span style="background-color: #22c355; font-size: 12px; margin-left: -4px;" class="badge"> 예약중 </span></div>';
		}
		if(result[i].sell == 2){
			str+='<div class="ms-2"><span class="badge bg-secondary" style="font-size: 12px; margin-left: -4px;">거래 완료</span></div>';
		}
		str +='<section class="article-sub-info">'
		str +='<span class="article-watch">' 
		str +='<img class="watch-icon" alt="Watch count" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg" />'+result[i].likeCount+'</span>';
		str +='</section></div></a></article>';
	}
	$("#result-area").html(str);	
 }
 
 function AddComma(num) {
    var regexp = /\B(?=(\d{3})+(?!\d))/g;
    return num.toString().replace(regexp, ',');
}

 