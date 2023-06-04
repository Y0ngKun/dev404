/**
 * kook 2023/05/03
 */
 
 console.log("Reply Module........");
 
 //변수 replyService는 즉시 실행함수 객체 변수 임
 //즉시 실행 함수는 ()안에 function을 정의하며 실행 연산자 ()를 끝에 첨부하면되고 시작시 1회만 실행 된다
 let replyService = (function(){
 	//중첩된 내부 함수 
 	//js는 호출시 곡 파라메터 갯수를 적용 안해도 됨(필요 없는 파라메터는 안보내도 무관)
 	//callback는 ajax성공시 실행할 함수, error는 실패시 실행할 내용	
 	function add(reply, callback,error) { 
 		console.log("add reply...............");
 		
 		//.ajax()메서드는 서버와 비동기방식으로 통신
 		//파라메터로 {}로 JS객체형식으로 속성들을 작성 		
 		$.ajax({
			type : 'post', //전송방식
			url : '../replies/new', //요청경로
			data : JSON.stringify(reply), //서버로 보내는 데이터값
			//reply는 JS의 객체형인데 이를 JSON문자열로 변환
			contentType : "application/json; charset=UTF-8",  //서버로 보내는 데이터 타입
			//dataType은 서버로 부터 받는 데이터 형식(생략헤도 무방) dataType : "json"
			success : function(result, status, xhr) { 
			//전송 성공시 실행할 함수,result는 서버로 부터 받는 값,status는 상태 xhr는 xmlhttprequest객체
				if (callback) { 
				//callback을 인자로 받았으면 true
				//자바스크립트는 true/false가 아니고 null,0,undefined등은 false,아니면 true로 취급
					callback(result);
				}
			},
			error : function(xhr, status, er) { //실패시 실행 함수
				if (error) {
					error(er);
				}
			}
		});
 	}
 	
 	function getList(param, callback, error) {
		
		let bno = param.bno;
		let page = param.page || 1; //1은 디폴트값으로 값이 없을시 1로 설정
		
		$.getJSON("../replies/pages/" + bno + "/" + page, //요청경로
				function(data) { //성공으로 받은 데이터(JSON문자열)
					if (callback) {
					   callback(data); 				   
					   						
					}
				})
		.fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	
	
	function remove(rno, callback, error) {
		$.ajax({
			type : 'delete',
			url : '../replies/' + rno,
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	
	
	/*
	 function remove(rno, replyer, callback, error) {
		  
		alert(replyer); 
		console.log("--------------------------------------");  
		console.log(JSON.stringify({rno:rno, replyer:replyer}));  
		    
	    $.ajax({
	      type : 'delete',
	      url : '../replies/' + rno,
	      
	      data:  JSON.stringify({rno:rno, replyer:replyer}),	      
	      
	      contentType : "application/json; charset=utf-8",
	      
	      success : function(deleteResult, status, xhr) {
	        if (callback) {	        
	          callback(deleteResult);
	        }
	      },
	      error : function(xhr, status, er) {
	        if (error) {
	          error(er);
	        }
	      }
	    });
	  }
	  */
	  
	function update(reply, callback, error) {

		console.log("RNO: " + reply.rno);

		$.ajax({
			type : 'put', //update는 PUT 또는 PATCH
			url : '../replies/' + reply.rno,
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	
	function get(rno, callback, error) {
        
		$.get("../replies/" + rno, function(result) {

			if (callback) {
				callback(result);
			}

		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	
	function displayTime(timeValue) {
		//서버에서 오는 Date객체 값은 posix타임임(밀리세컨드)
		
		var today = new Date();
		
		//자바스크립트의  Date객체를 posix타임으로 변환하는 메서드 getTime()
		var gap = today.getTime() - timeValue;  //차이는 밀리세컨드

		var dateObj = new Date(timeValue); //posix타입을 이용하여 지정된 Date객체로 변환
		var str = "";

		if (gap < (1000 * 60 * 60 * 24)) {
			//gap이 하루 이하이면 시간까지 표시
			var hh = dateObj.getHours(); 
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			//두자리로 시간 표시
			return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
					':', (ss > 9 ? '' : '0') + ss ].join(''); 
					//배열 요소를 문자열로 변환(문자열에 공백 없이 처리)
					//join()은 문자열에 ,로 구분 처리  09:33:27

		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1; // getMonth() is zero-based(0~11)
			var dd = dateObj.getDate();

			return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
					(dd > 9 ? '' : '0') + dd ].join('');
					// 2023/03/05
		}
	}
	
	
	
 	return {
 		add : add,
 		getList : getList,
 		remove : remove,
 		update : update,
 		get : get,
 		displayTime : displayTime
 	};
 })();
 
 