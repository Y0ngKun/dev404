/**
 * 
 */
 

 	
 $(document).ready(function(){
 
 //초기 페이지 로딩 시 사장님 선택 여부에 따라 프로필 사진 첨부 및 카테고리 선택 영역 초기 설정
document.addEventListener('DOMContentLoaded', function() {
	const isBusinessRadio = document.querySelector('input[name="isbusiness"]:checked');
	toggleProfileSection(isBusinessRadio.value === 'B');
});
	

	// 개인/사장님 카테고리 선택 영역 토글 함수
function toggleProfileSection(show) {
	const profileSection = document.getElementById('profile-section');
	profileSection.style.display = show ? 'block' : 'none';
}
 
 	
 
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
 		
 		$("#join_form").submit();
 	});

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