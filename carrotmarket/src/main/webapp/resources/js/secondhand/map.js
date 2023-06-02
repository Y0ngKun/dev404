/**
 * 
 */

 $(document).ready(function(){
	
		//수정시 위치 정보가 있으면 표시해주기
		if( $("#maparea").find("span[id='istrue']").length >= 1){ 
		 		let lng = $("#lng").val();
		 		let lat = $("#lat").val();
		 		makeMapDiv();
		 		writeMap(lng, lat);
		}
		
		//위치 찾기에서 엔터 누를시 submit 막으면서 위치 찾기로
		$("#location_search").keydown(function(e){
			if(e.keyCode == 13){
				e.preventDefault();
				$("#maparea").empty();
				let location_search = $("#location_search").val();
				
				if(location_search.length == 0){
					alert("장소를 입력해 주세요");
					return false;
				}
				makeMapDiv();
				startMap(location_search);
			}
		});
	
	 	//버튼 클릭시 장소 찾기
	 	$("#button-addon2").on("click",function(){
	 		$("#maparea").empty();
			let location_search = $("#location_search").val();
			
			if(location_search.length == 0){
				alert("장소를 입력해 주세요");
				return false;
			}
			makeMapDiv();
			// 키워드로 장소를 검색합니다
			startMap(location_search);
			
			//ps.keywordSearch(location_search);
		});
		
		//초기화 누르면 주소를 없앤다
		$("#maparea").on("click","#location_reset",function(){
			$("#maparea").empty();
			$("#hope_location").val("");
			$("form").find("input[name='lat']").val("");
	        $("form").find("input[name='lng']").val("");
		});
 
 	
 	//아래부터 카카오맵 api
 	function startMap(location_search){
	 	var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	 	
	 	var geocoder = new kakao.maps.services.Geocoder();
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		        level: 13 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places(); 
		
		//검색 메서드
		ps.keywordSearch(location_search, placesSearchCB);
		
		function placesSearchCB (data, status, pagination) {
	    	if (status === kakao.maps.services.Status.OK) {
	
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new kakao.maps.LatLngBounds();
		
		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
		        }       
	
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	    	}
	    
		    function displayMarker(place) {
		    
		   		// 마커를 생성하고 지도에 표시합니다
			    var marker = new kakao.maps.Marker({
				        map: map,
				        position: new kakao.maps.LatLng(place.y, place.x) 
				    });
		
		    	// 마커에 클릭이벤트를 등록합니다
			    kakao.maps.event.addListener(marker, 'click', function() {
				        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
				        let place = marker.getPosition();
				        
				        $("form").find("input[name='lat']").val(place.getLat());
				        $("form").find("input[name='lng']").val(place.getLng());
				        
				        searchDetailAddrFromCoords(place,function(result, status){
				        	if(status === kakao.maps.services.Status.OK){
				        		$("#hope_location").val(result[0].address.address_name);
				        	}
				        });
			 	});
			 	
			 	 // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
			 	kakao.maps.event.addListener(marker, 'mouseover', function() {
			 	
			 		if(infowindow.open()){
			 			infowindow.close();
			 		}
			 		infowindow.setContent('<div style="padding:5px;font-size:13px;">' + place.place_name + '</div>');
				    infowindow.open(map, marker);
				});
			 	
			 	 //마커에 마우스아웃 이벤트를 등록합니다
				kakao.maps.event.addListener(marker, 'mouseout', function() {
				    //마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
				    infowindow.close();
				});
			}
			
				function searchAddrFromCoords(coords, callback) {
			    // 좌표로 행정동 주소 정보를 요청합니다
			    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
			}
			
			function searchDetailAddrFromCoords(coords, callback) {
			    // 좌표로 법정동 상세 주소 정보를 요청합니다
			    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
			}
		}
	}
	
	function makeMapDiv(){
 	let str = "";
	str += '<div id="map" style="width:100%;height:350px;"></div>';
	str += '<div class="input-group mb-3">';
	str += '<input name="hope_location" id="hope_location" type="text" class="form-control" readonly="readonly">';
	str += '<button class="btn" type="button" id="location_reset">초기화</button></div>';
	$("#maparea").append(str);	
 }
	
 });
 
 function writeMap(lng, lat){
 	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(lat, lng); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
 }
 
 
 
 