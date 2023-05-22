/**
 * 
 */
 
 $(document).ready(function(){
 	//버튼 클릭시 장소 찾기
 	$("#button-addon2").on("click",function(){
		let location_search = $("#location_search").val();
		
		if(location_search.length == 0){
			alert("장소를 입력해 주세요");
			return false;
		}
		
		// 키워드로 장소를 검색합니다
		ps.keywordSearch(location_search, placesSearchCB);
	});
	
	//초기화 누르면 주소를 없앤다
	$("#location_reset").on("click",function(){
		console.log("click");
		$("#hope_location").val("");
		$("#register_form").find("input[name='lat']").val("");
        $("#register_form").find("input[name='lng']").val("");
	});
	
	
 
 
 
 	//아래부터 카카오맵 api
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
			        
			        $("#register_form").find("input[name='lat']").val(place.getLat());
			        $("#register_form").find("input[name='lng']").val(place.getLng());
			        
			        searchDetailAddrFromCoords(place,function(result, status){
			        	if(status === kakao.maps.services.Status.OK){
			        		$("#hope_location").val(result[0].address.address_name);
			        	}
			        });
			        
			        console.log(place);
			        
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
	
 });
 
 