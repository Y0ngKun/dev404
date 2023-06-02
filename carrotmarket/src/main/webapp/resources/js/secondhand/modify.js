/**
 * 
 */
 
 $(document).ready(function(){
 	let id = $("#id").val();
 	
 	//페이지 로딩하면 게시글 이미지 불러오기
 	$.ajax({
 		url : '../shattach/' + id,
 		success : function(result){
 			showImage(result);
 		}
 	});
 	
 	//불러온 이미지 뿌리기
 	function showImage(result){
 		
 		$.each(result,function(key,value){
 			let filecallpath = encodeURIComponent(value.filePath + value.fileName);
 			
 			let str = ' <li style="padding: 5px; display:inline-block; width : calc(32%); height : 150px">';
 				str += '<div style="width : 100%; cursor:pointer" class="delete_img" data-articleno="'+value.articleNo+'" data-filename="'+ value.fileName +'" data-filepath="'+ value.filePath+'">X</div>';
 				str += '<img style="display : block; width:100%; height: 90%;" src="../shattach/get?fileName=' + filecallpath + '"/>';
 				$("#img_area").append(str);
 		});
 	}
 	
 	//게시글 이미지 삭제시 뿌린 이미지 지우고 지우는 정보 추가
 	$("#img_area").on("click","div[class='delete_img']",function(e){ 		
		let fileName = $(this).data("filename");
		let filePath = $(this).data("filepath");
		let articleNo = $(this).data("articleno");
		
 		let str = '<div data-articleno="'+articleNo+'" data-filename="'+ fileName +'" data-filepath="'+ filePath+'"></div>';
 		$(this).closest("li").remove();
 		$("#delete-area").append(str);
 	});
 	
 	//추가로 올린 이미지 지우기
 	$("#img_area").on("click","div[class='delete_img_modify']",function(e){
 		let fno = $(this).closest("ul").index() -2;
	 	console.log(fno);
	 	
		const dataTransfer = new DataTransfer();
		 
		let files = $("#modify_form").find("input[name='files']")[0].files;
		let fileArray = Array.from(files);
		 
		fileArray.splice(fno, 1);
		 
		fileArray.forEach(file => { 
		 	dataTransfer.items.add(file); 
		});
		 
	 	$("#modify_form").find("input[name='files']")[0].files = dataTransfer.files;
	 	$(this).closest("ul").remove();
 	});
 	
 	//글 수정시 먼저 지우기 정보에 있는거 실행
 	$("#modify_submit").on("click",function(e){
 		e.preventDefault();
 		let deleteArea = $("#delete-area div").get();
 		
 		if(deleteArea.length == 0){
 			$("#modify_form").submit();
 		}
 		
 		$.each(deleteArea,function(key,value){
 			let fileName = $(this).data("filename");
 			let filePath = $(this).data("filepath");
 			let articleNo = $(this).data("articleno");
 			
 			$.ajax({
 				url : '../shattach/deleteFile',
 				type : 'post',
 				data : {
 					fileName : fileName,
 					filePath : filePath,
 					articleNo : articleNo
 				},
 			});
 		});
 		$("#modify_form").submit();
 	});
	
	//추가로 게시글 이미지 등록할때
	$("#modify_form").on("change","input[name='files']",function(e){
 		console.log("change");
 		
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
 				let str = '<ul style="margin:0; padding:0;display:inline-block; width : calc(32%); height : 150px"><li style="padding: 5px;margin:0; height:100%">';
 				str+='<div style="width : 100%; cursor:pointer" class="delete_img_modify" data-fno="'+ i +'">X</div>';
 				str+= '<img style="display : block; width:100%; height: 90%;" src="' + e.target.result + '"/>';
 				
 				$("#img_area").append(str);
 			}
 			reader.readAsDataURL(files[i]);
 		}
 		
 	});
 });
 
 function checkFile(regex,name){
 	if( regex.test(name) ){
 		return true;
 	}
 	return false;
 }