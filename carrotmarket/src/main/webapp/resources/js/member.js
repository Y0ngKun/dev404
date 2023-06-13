/**
 * 
 */
 

 	
 $(document).ready(function(){
 

 
 	
 
 	$("#join_button").on("click",function(e){
 		e.preventDefault();
 		location.href = 'join';
 	});
 	
 	$("#join_submit").css("cursor","pointer");
 	$("#join_reset").css("cursor","pointer");
 	
 	
 	
 	
 	
 	
 	//아이디 중복 체크 후 아이디 수정하면 중복체크 확인 날리기
 	$("#join_form").find("input[name='userid']").on("keyup",function(){
 		$("#id_check_result").empty();
 		$("#id_check_success").val("0");
 	});
 	
 	//아이디 중복 체크
 	$("#id_check").on("click",function(){
 		let userid = $("#join_form").find("input[name='userid']").val();
 		
 		if(userid.length == 0){
	 		$("#id_check_result").css("color","red").text("아이디를 입력해주세요");
	 		$("#id_check_success").val("0");
	 		return false;
 		}
 		if(userid.length < 4){
 			$("#id_check_result").css("color","red").text("아이디가 너무 짧습니다.");
	 		$("#id_check_success").val("0");
	 		return false;
 		}
 		
 		$.ajax({
 			url : 'join/'+userid,
 			type : 'get',
 			success : function(data){
 				console.log(data);
 				$("#id_check_result").css("color","green").text("사용 가능한 아이디 입니다.");
 				$("#id_check_success").val("1");
 			},
 			error : function(){
	 			$("#id_check_result").css("color","red").text("사용 불가한 아이디 입니다.");
	 			$("#id_check_success").val("0");
 			}
 		});
 		console.log(userid);
 	});
 	
 	
 	//비밀번호 같은지 체크
 	$("#join_form").on("keyup","input[name='userpwd']",function(){
 		userpwd_check();
 	});
 	
 	//비밀번호 같은지 체크
 	$("#join_form").on("keyup","input[name='userpwd_check']",function(){
 		userpwd_check();
 	});
 	
 	
 	
 	
 	let formObj = $("form[role='form']"); //게시글 작성 등록
 		let regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$"); //확장자가 지정된 것은 업로드 제한
 		let maxSize = 25242880; //25MB 파일 최대 크기
 		let uploadUL = $(".uploadResult #card");
 		let uploadULL = $("#profiles");
 	
 	//회원가입이 버튼 누를 시 조건 확인
 	$("#join_submit").on("click",function(e){
 		
 		e.preventDefault();
 		
 		
 		//이름 작성 유무
 		if( $("#join_form").find("input[name='username']").val().length == 0 ){
 			alert("이름을 입력해 주세요");
 			
 			let input = $("#join_form").find("input[name='username']");
 			
 			focus_scroll(input);
			
			return false;
 		}
 		//닉네임 입력 유무
 		if( $("#join_form").find("input[name='usernickname']").val().length == 0 ){
 			alert("닉네임을 입력해 주세요");
 			let input = $("#join_form").find("input[name='usernickname']");
 			
 			focus_scroll(input);
 			
 			return false;
 		}
 		
 		//아이디 중복 체크 유무
 		if( $("#id_check_success").val() == 0){
 			alert("아이디 중복확인이 필요합니다.");
 			let input = $("#id_check");
 			
 			focus_scroll(input);
 			
 			return false;
 		}
 		
 		
 		//비밀번호 일치 유무
 		if( $("#userpwd_check_success").val() == 0){
 			let input = $("#join_form").find("input[name='userpwd']"); 
 			alert("비밀번호가 일치하지 않습니다.");
		
			focus_scroll(input);
			
			return false;
 		}
 		
 		//주소 입력 유무
 		if( $("#join_form").find("input[name='useraddress']").val().length == 0 ){
 			alert("주소를 입력해 주세요");
 			let input = $("#join_form").find("input[name='useraddress']");
 			
 			focus_scroll(input);
 			
 			return false;
 		}
 		
 		
 		
 			
 		    
 		    let str = "";	    
 		   
 		    $(".uploadResult .card p").each(function(i, obj){
 		    
 		      
 		      let jobj = $(obj);
 		      console.log(jobj);
 		      console.log("-------------------------");
 		      console.log(jobj.data("filename"));		      	
 		      str += "<input type='text' name='fileName' value='"+jobj.data("filename")+"'>";	     
 		      str += "<input type='text' name='uuid' value='"+jobj.data("uuid")+"'>";
 		      str += "<input type='text' name='uploadPath' value='"+jobj.data("path")+"'>";
 		   		
 		    });	 	    
 		    
 		    formObj.prepend(str).submit();
 		    
});
 	

	$("input[type='file']").on("change",function(e){
	
		let formData = new FormData(); //가상의 form엘리먼트 생성
		let inputFile = $("input[name='uploadFile']");
		let files = inputFile[0].files[0]; 
		//첫번째 inputFile DOM의 files들 type이 file인경우 선택한 파일들(value값)
		
		console.log(files);
		formData.append("uploadFile", files); 
		
		$.ajax({
			url: '../member/uploadAjaxAction',
			processData: false,
			contentType: false,
			data: formData,
			type: 'POST',					
		    dataType : 'json', //생략해도 무방		    
			success : function(result) {
				showUploadResult(result);
				$("#upload").val(""); //파일 입력창 초기화
			},
			error : function() {
				alert("ajax upload failed");
			}
		});
	});	
	
	function showUploadResult(uploadResultArr) {
		
		if(!uploadResultArr || uploadResultArr.length == 0) {
			return;
		}		
				
		$(uploadResultArr).each(function(i, obj) {
			let str ="";
			
			if(obj.image) {
				let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);				
				str += "<div class='card col-md-3' style='display:none'>";
				str += "<div class='card-body'>";
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str +=  "data-path='"+obj.uploadPath +"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'>";						
				str += "<img class='mx-auto d-block' src='../member/display?fileName="+fileCallPath+"'>";						

				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-danger badge-pill' data-file='"+fileCallPath+"' data-type='image'> &times; </span></h4>";				
				str += "</div></div>";
					uploadULL.css({
  					'background-image': 'url("../member/display?fileName=' + fileCallPath + '")',
					'background-repeat': 'no-repeat',
					'background-position': 'center',
					'background-size': '100px 100px'
});				
			}
			else {
				
				let fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
				let fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");				
				str += "<div class='card col-md-3'>";
				str += "<div class='card-body'>";	
				str += "<p class='mx-auto' style='width:90%;' title='"+ obj.fileName + "'" ;
				str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' >";
				str += "<img class='mx-auto d-block' src='../images/attach.png' >";				
				str += "</p>";
				str += "<h4><span class='d-block w-50 mx-auto badge badge-danger badge-pill' data-file='"+fileCallPath+"' data-type='file'> &times; </span></h4>";
				str += "</div></div>";		
			}
			uploadUL.append(str);
		});		
	}
	
	function checkExtension(fileName, fileSize) {
		
		if(fileSize >= maxSize) {
			alert("파일 사이즈 초과");
		    return false;
		}
		if(regex.test(fileName)) {
			 alert("해당 종류의 파일은 업로드할 수 없습니다.");
		     return false;
		}
		return true;
	} 	
 });
 
 
 //메소드 시작
 
 //비밀번호 같은지 체크
 function userpwd_check(){
 	let userpwd = $("#join_form").find("input[name='userpwd']").val();
	let userpwd_check = $("#join_form").find("input[name='userpwd_check']").val();
	let userpwd_check_success = $("#userpwd_check_success");
 	let pwd_check = $("#pwd_check");
 	
	if(userpwd.length < 4){
		pwd_check.css("color","red").text("비밀번호가 짧습니다.");
		userpwd_check_success.val("0");
	}else if(userpwd != userpwd_check){
		pwd_check.css("color","red").text("비밀번호가 다릅니다.");
		userpwd_check_success.val("0");
	}else if(userpwd == userpwd_check){
		pwd_check.css("color","green").text("비밀번호가 같습니다.");
		userpwd_check_success.val("1");
	}
 }
 
 //포커스 및 스크롤 처리
 function focus_scroll(input){
 	
 	input.focus();
 	let temp = input.offset();
 	$("html, body").animate({scrollTop : temp.top-200},100);
 }