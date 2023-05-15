/**
 * 
 */
 
 $(document).ready(function(){
 	//새로운 비밀번호 일치하는지 확인
 	$("#find_pwd_form").on("keyup","input[name='userpwd']",function(){
 		userpwd_check();
 	});
 	
 	$("#find_pwd_form").on("keyup","input[name='userpwd_check']",function(){
 		userpwd_check();	
 	});
 	
 	$("#find_pwd_form").on("click","input[type='submit']",function(e){
 		e.preventDefault();
 		
 		if( $("#userpwd_check_success").val() == 0 ) {
			alret("비밀번호가 일치하지 않습니다.");
			return false; 		
 		}
 		
 		$("#find_pwd_form").submit();
 	})
 });
 
 function userpwd_check(){
 	let userpwd = $("#find_pwd_form").find("input[name='userpwd']").val();
	let userpwd_check = $("#find_pwd_form").find("input[name='userpwd_check']").val();
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