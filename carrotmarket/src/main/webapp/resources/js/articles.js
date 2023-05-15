/**
 * 
 */
 
 $(document).ready(function(){
 	
 	//글 작성 누를시 유효성 검사하기
 	$("#register_submit").on("click",function(e){
 		e.preventDefault();
 		
 		if( $("#register_form").find("input[name='title']").val().length == 0 ) {
 			alert('제목을 입력해 주세요');
 			return false;
 		}
 		
 		if( $("#register_form").find("textarea").val().length == 0 ) {
 			alert('내용을을 입력해 주세요');
 			return false;
 		}
 		
 		
 		//여기서부터는 value 처리
 		
 		if( $("#register_form").find("input[name='cost']").val().length == 0 ){
 			$("#register_form").find("input[name='cost']").val('0');
 		}
 		
 		$("#register_form").submit();
 	});
 	
 	//이미지 파일을 올릴 시 미리보기
 	$("#register_form").on("change","input[name='files']",function(e){
 		let img_area = $("#img_area");
 		
 		img_area.empty();

 		let files = e.target.files;
 		
 		let regex = new RegExp("(.*?)\.(jpg|png|jpeg|bmp)$");
 		
 		if(files.length >10 ){
 			alert("최대 10개까지만 등록할 수 있습니다.");
 			$("input[name='files']").val("");
 			return false;
 		}
 		
 		for(let i = 0; i<files.length; i++){
 			if( ! checkFile(regex, files[i].name) ){
 				alert('이미지만 등록 가능합니다.');
 				$("input[name='files']").val("");
 				return false;
 			}
 			let reader = new FileReader();
 			
 			reader.onload = function(e){
 				let str = '<li style="padding: 5px; display:inline-block; width : calc(100%/3); height : 150px">';
 				str+='<div style="width : 100%; cursor:pointer" class="delete_img" data-fno="'+ i +'">X</div>';
 				str+= '<img style="display : block; width:100%; height: 90%;" src="' + e.target.result + '"/>';
 				str+='<div style="font-size : 1.2rem;height: 10%;overflow:hidden; text-overflow:ellipsis; white-space:nowrap">' + files[i].name + '</div></li>';
 				
 				img_area.append(str);
 			}
 			reader.readAsDataURL(files[i]);
 		}
 	});
 	
 	
 });
 
 //이미지 파일만 있는지 확인 메서드
 function checkFile(regex,name){
 	if( regex.test(name) ){
 		return true;
 	}
 	return false;
 }
 
 //선택한 이미지 지우기
 $(document).on("click","div[class='delete_img']",function(e){
	
	 let fno = $(this).closest("li").index();
	 
	 const dataTransfer = new DataTransfer();
	 
	 let files = $("#register_form").find("input[name='files']")[0].files;
	 let fileArray = Array.from(files);
	 
	 fileArray.splice(fno, 1);
	 
	 fileArray.forEach(file => { 
	 	dataTransfer.items.add(file); 
	});
	 
	 $("#register_form").find("input[name='files']")[0].files = dataTransfer.files;
	 $(this).closest("li").remove();
 });