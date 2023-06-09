let switchingRoom = false;
//중첩연결 방지용
let socket = null;

//상대방이 보낸 메세지
function targetMessage(msg, regDate,targetnickname, id){
	let str = '';
	str+= '<li class="you">';
	str+= '<div class="entete">';
	str+= '<span class="status green" style="background:url(../stores/images/'+id+'); background-size: cover;"></span>';
	
	str+= '<h2>'+ targetnickname+'</h2>';
	str+= '<h3>'+regDate+'</h3></div>';
	str+= '<div class="message">';
	str+= msg;
	str+='</div></li>';
	   
	return str;
}

//내가 보낸 메세지 폼
function myMessage(msg,regDate,mynickname){
	let str =''; 
	str+= '<li class="me">';
	str+= '<div class="entete">';
	str+= '<h3>'+ regDate +'</h3>';
	str+= '<h2>'+mynickname+'</h2>';
	str+= '<span class="status blue"></span></div>';
	str+= '<div class="message">'
	str+= msg;
	str+= '</div></li>';
   
   return str;
}

//메세지 전송시 현재시각 구하기
function getTime(){
	let now = new Date();
	
	let year = now.getFullYear();
	let month = ('0' + (now.getMonth() + 1)).slice(-2);
	let day = ('0' + now.getDate()).slice(-2);
	let hour = ('0' + now.getHours()).slice(-2);
	let minutes = ('0' + now.getMinutes()).slice(-2);
	let seconds  = ('0' + now.getSeconds()).slice(-2);
	
	let dateString = year + '-' + month  + '-' + day + ' ' + hour + ':' + minutes  + ':' + seconds;
	return dateString;
}
//숫자 자릿수 표시
function AddComma(num) {
    let regexp = /\B(?=(\d{3})+(?!\d))/g;
    return num.toString().replace(regexp, ',');
}

$(document).ready(function() {
	let id = $("#container").data("id");

	$.ajax({
		url : 'list/' + id,
		success : function(result) {
			let str = '';
			$.each(result, function(key, value) {
				let targetNickName;
				let myNickName;
				
				if(id == value.chatUser){
					myNickName = value.chatUserNickName;
					targetNickName = value.targetUserNickName;	
				}else{
					myNickName = value.targetUserNickName;
					targetNickName = value.chatUserNickName;
				}
			
				str += '<li><div class="chatListItem"><div class="chatListNickName">';
				str += targetNickName;
				str+= '</div><h2>';
				str+= '<a href="';
				str += value.roomId;
				str += '" data-title ="' + value.title;
				str += '" data-cost="' + value.cost;
				str += '" data-sell="' + value.sell;
				str += '" data-articleno="' + value.articleNo;
				str += '" data-mynickname="' + value.chatUserNickName;
				str += '" data-targetnickname="' + value.targetUserNickName;
				str += '">' + value.title;
				str += '</a></h2></div></li>';
			});

			$("#chatList").append(str);

			//만약 게시글을 통해 채팅창에 들어왔을경우 자동으로 해당 채팅방 클릭하기
			if ($("#create").length != 0 || $("#create").val() == ' ') {
				let find = $("[data-articleno='" + $("#create").val() + "']");
				find.trigger("click");
			}
		}
	});

	$("#chatList").on("click", "a", function(e) {
		e.preventDefault();
		let roomId = $(this).attr("href");
		let title = $(this).data("title");
 		let cost = $(this).data("cost");
 		let articleno = $(this).data("articleno");
 		let mynickname = $(this).data("mynickname");
 		let targetnickname = $(this).data("targetnickname");
 		let sell = $(this).data("sell");
 		
		$("#chat").empty();
 		
 		//로딩중 띄우기
 		$("#chat").append('<div class="spinner-area"><div class="spinner-border text-warning" role="status"><span class="visually-hidden">Loading...</span></div></div>');
		
		chatroominfo(title, cost, articleno, mynickname, targetnickname, roomId, sell);
		
		switchChatRoom(roomId, id, mynickname, targetnickname);
	});
	//엔터누르면 보내기
	$("#chatting").on("keyup",function(e){
		if(e.keyCode == 13){
			send();
		}
	});
	//클릭시에도 보내기
	$("#sendBtn").on("click",function(){
		send();
	});
	//내가보낸 메세지 마우스 오른쪽 클릭 이벤트
	$(document).on("contextmenu",".me .message",function(e){
		e.preventDefault();
		$(".contextmenu").hide();
		let message = $(this).prev("div").find("h3").text();
		$(".contextmenu a").attr("href",message).text('삭제하기').data('type','delete');

		$(".contextmenu").css("left",e.pageX).css("top",e.pageY - 150).show();
	});
	
	//채팅방 오른쪽 클릭할때
	$(document).on("contextmenu","#chatList li",function(e){
		e.preventDefault();
		
		$(".contextmenu").hide();
		let temp = $(".contextmenu a").attr('href', $(this).find("a").attr('href'));
		$(".contextmenu a").text('채팅방 나가기').data('type','chatOut');
		$(".contextmenu").css("left",e.pageX).css("top",e.pageY - 150).show();
	})
	
	//다른곳 클릭하면 마우스 오른쪽클릭 이벤트 종료
	$(document).on("click",function(){
		$(".contextmenu a").attr("href","#");
		$(".contextmenu").hide();
	});
	
	//채팅방 나가기 버튼 누를시
	$(document).on("click","#chatRoomOut",function(e){
	
		console.log("click");
		
		let roomId = $(this).parents("header").find("input[id='roomId']").val();
		console.log(roomId);
		if(confirm('채팅방을 나가시겠습니까?')){
			chatroomOut(roomId);
			$(this).parents("header").empty();
		}else{
			return false;
		}
	});
	
	//삭제하기 버튼 누를시
	$(".contextmenu").on("click","a",function(e){
		e.preventDefault();
		let type = $(this).data('type');
		
		if(type == 'delete'){
			let deleteReg = $(this).attr("href");
			send("delete",deleteReg);
		}else if(type == 'chatOut'){
			let roomId = $(this).attr('href');
			if(confirm('채팅방을 나가시겠습니까?')){
				
				chatroomOut(roomId);
			}else{
				return false;
			}
		}
	});	
	
	
	//아래부터 function 시작 
	//채팅방 나가기
	function chatroomOut(roomId){
		$.ajax({
			url : roomId,
			type : 'delete',
			success : function(){
				let find = $("#chatList a[href='"+roomId+"']");
				find.parents('li').remove();
				console.log(find);
			}
		})
	}
	
	//채팅방 클릭시 상세정보 들고오기
	function chatroominfo(title, cost, articleno, mynickname, targetnickname,roomId, sell){
		$("#chatInfo").empty();
		
		let str = '';
		str+= '<div id="chatroom"><img style="height:80px; width: 120px" src="../shattach/thumbnail/';
		str+= articleno;
		str+= '" style="width : 140px;border-radius: 10px;"/>';
	    str+= '<div class="chatroomInfo"><div>'
	    
	    if(sell == 0){
	    	str+= "<span style='color : #ff6f0f'> 판매중 </span>";
	    }else if(sell == 1){
	    	str+= "<span style='color : green'>예약중 </span>";
	    }else if(sell == 2){
	    	str+= "거래 완료 "
	    }
	    str+= '<h2>';
	    str+= title;
	    str+= '</h2><h3>';
	    str+= AddComma(cost);
	    str+= '원</h3></div>'; //<div><button id="rebtn">예약하기</button></div>';
	    str+= '<div><button id="chatRoomOut">채팅방 나가기</button></div>';
	    str+= '</div></div><input type="hidden" id="mynickname" value="'
	    str+= mynickname;
	    str+='"/>'
	    str+= '<input type="hidden" id="targetnickname" value="'
	    str+= targetnickname;
	    str+='"/>'
		str+= '<input type="hidden" id="roomId" value="'
	    str+= roomId;
	    str+='"/>'
	       
	    $("#chatInfo").append(str);
	}
	
	function send(deleteMessage, deleteReg) {
		let type = deleteMessage || 'message';
		let msg = $("#chatting").val();
		let sender = id;
		let jsondata;
		
		if(deleteMessage){
			jsondata = {
				type : type,
				roomId : $("#roomId").val(),
				regDate : deleteReg
			};
		}else{
			jsondata = {
				type : type,
				roomId : $("#roomId").val(),
				message : msg,
				sender : sender,
				regDate : getTime()
			};
		}
		socket.send(JSON.stringify(jsondata));
		$("#chatting").val("");
	}
	
	//채팅시 맨 밑 포커스
	function auto_scroll(){
		$('#chat').scrollTop($('#chat')[0].scrollHeight);
	}
	
	//웹 소켓 연결 변경하기
	function switchChatRoom(roomId, id, mynickname, targetnickname) {
	if (switchingRoom) {
		alert('잠시후에 다시 질행해 주세요');
		return;
	}

	switchingRoom = true;

	// 이전 WebSocket 연결 종료
	if (socket !== null) {
		socket.close();
	}

	// 새로운 WebSocket 연결 생성
	socket = new WebSocket("ws://" + location.host + "/ex02/chating/" + roomId);

	socket.onopen = function(event) {
		let str = '';
 		$.ajax({
 			url : 'message/'+roomId,
 			success : function(result){
 				$.each(result,function(key,value){
 					if(value.sender == id){
 						str+= myMessage(value.message, value.regDate, mynickname);
 					}else{
 						str+= targetMessage(value.message,value.regDate,targetnickname, value.sender);
 					}
 				});
 				$("#chat").empty();
				$("#chat").append(str);
				auto_scroll();
 			}
 		});
		switchingRoom = false;
	};

	socket.onclose = function(event) {
		switchingRoom = false;
	};
	
	// WebSocket 메시지 수신 처리
	socket.onmessage = function(event) {
		let messageData = event.data;
		if(messageData != null && messageData.trim() != ""){
			let jsonParse = JSON.parse(messageData);
			
			if(jsonParse.type == "delete"){
				let deleteDate = jsonParse.regDate;
				let find = $("h3:contains('"+deleteDate+"')").closest("div").next("div").text("삭제된 메세지 입니다.");
			}else{
				let message = jsonParse.message;
				let regDate = jsonParse.regDate;
				let str = '';
			
				if(jsonParse.sender == id){
					str = myMessage(message,regDate,mynickname);
				}else{
					str = targetMessage(message,regDate,targetnickname);
				}
				$("#chat").append(str);
				auto_scroll();
				}
			}
		};
	}
});