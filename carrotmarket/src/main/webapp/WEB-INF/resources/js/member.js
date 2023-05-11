/**
 * join.js
 */
 
 function idCheck(){
	if(document.frm.userid.value == ""){
		alert('아이디를 입력해주세요.');
		document.frm.userid.focus();
		return;
	}
	
	var url = 'idCheck.do?userid=' + document.frm.userid.value;
	/* 쿼리 스트링이니까 doGet 방식으로 보내는 거다.*/
	
	window.open(url,"_blank_1","toolbar=no,menubar=no,scrollbars=yes, resizable=no, width=450, height=200");
	//서버의 idCheck.do로 userid를 get 방식으로 보내 그 결과를 팝업창에 보여줌 
	
}

function joinCheck(){
	if(document.frm.name.value.length == 0){
		alert("이름을 입력해주세요");
		frm.name.focus();
		return false;
	}
	
	if(document.frm.userid.value.length == 0){
		alert("아이디를 입력해주세요");
		frm.userid.focus();
		return false;
	}
	
	if(document.frm.userid.value.length < 2){
		alert("아이디는 4글자 이상이어야 합니다.");
		frm.userid.focus();
		return false;
	}
	
	if(document.frm.pwd.value != document.frm.pwd_check.value ){
		alert("암호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}
	
	if(document.frm.reid.value.length == 0){
		alert("아이디 중복 체크를 하지 않았습니다.");
		frm.userid.focus();
		return false;
	}
	
	return true;

}


function idok() {
			opener.frm.userid.value = document.frm.userid.value;
			opener.frm.reid.value = document.frm.userid.value;
			self.close();
		}/**
 * 
 */