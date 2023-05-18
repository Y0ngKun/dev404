/**
 * 
 */
 
 $(document).ready(function(){
 	let articleNo = $("#content").data("id");
 	
 	console.log(articleNo);
 	$.ajax({
 		url : 'image/' + articleNo,
 		success : function(result){
 			showImage(result);
 			console.log(result);
 		}
 	})
 });
 
 function showImage(result){
 	for(let i = 0; i<result.length; i++){
 		let imageArea = $(".imageArea");
 		let str = '';
 		str+='<img src="image/'+result[i].filePath + '/'+ result[i].fileName + '"/>';
 		console.log(str);
 		imageArea.append(str);
 	}
 }