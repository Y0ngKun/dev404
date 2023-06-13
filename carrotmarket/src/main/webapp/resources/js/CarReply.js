/**
 * h - 23.6.8
 */
 
 console.log("CarReply Module START!");
 
 let replyService = (function() {
 	
 	function add(reply, callback, error) {
 		console.log("add CarReply!");
 		
 		$.ajax({
 			type : 'post',
 			url : '../replies/new',
 			data : JSON.stringify(reply),
 			contentType : "application/json; charset=UTF-8",
 			success : function(result, status, xhr) {
 			
 			if(callback) {
 				callback(result);
 			}
 		},
 		error : function(xhr, status, er) {
 			if(error) {
 				error(er);
 			}
 		}
 	});
 }

 function getList(param, callback, error) {
 	let cno = param.cno;
 	let page = param.page || 1;
 	
 	$.getJSON("../replies/pages/" + cno + "/" + page,
 		function(data) {
 			if(callback) {
 				callback(data);
 			}
 		})
 		.fail(function(xhr, status, err) {
 			if(error) {
 				error();
 			}
 		});
 	}
 	 	
 function remove(rno, callback, error) {
	 $.ajax({
	 	type : 'delete',
	 	url : '../replies/' + rno,
	 	success : function(deleteResult, status, xhr) {
	 		if(callback) {
	 			callback(deleteResult);
	 		}
	 	},
	 	error : function(xhr, status, er) {
	 		if(error) {
	 			error(er);
	 		}
	 	}
	 });
  }
 
 function update(reply, callback, error) {
 	console.log("rno : " + reply.rno);
 	
 	$.ajax({
 		type : 'put',
 		url : '../replies/' + reply.rno,
 		data : JSON.stringify(reply),
 		contentType : "application/json; charset=utf-8",
 		success : function(result, status, xhr) {
 			if(callback) {
 				callback(result);
 			}
 		},
 		error : function(xhr, status, er) {
 			if(error) {
 				error(er);
 			}
 		}
 	});
 }
 
 function get(rno, callback, error) {
 
	$.get("../replies/" + rno, function(result) {
		
		if(callback) {
			callback(result);
 		}
 	})
 	.fail(function(xhr, status, err) {
 		if(error) {
 			error();
 		}
 	});
 }
 
 function displayTime(timeValue) {
 
 	var today = new Date();
 	
 	var gap = today.getTime() - timeValue;
 	
 	var dateObj = new Date(timeValue);
 	var str = "";
 	
 	if(gap < (1000 * 60 * 60 * 24)) {
 		var hh = dateObj.getHours();
 		var mi = dateObj.getMinutes();
 		var ss = dateObj.getHours();
 		
 		return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
 			':', (ss > 9 ? '' : '0') + ss ].join('');
 		
 		} else {
 			var yy = dateObj.getFullYer();
 			var mm = dateObj.getMonth() + 1;
 			var dd = dateObj.getDate();
 			
 			return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
 					(dd > 9 ? '' : '0') + dd ].join('');
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
 	})(); //즉시실행 함수