$(document).ready(function() {
/*
    function fetchWeather() {
        // baseDate와 baseTime을 현재 시간 기준으로 설정
        const date = new Date();
        const baseDate = date.toISOString().slice(0, 10).replace(/-/g, "");
        const baseTime = now.getMinutes();  // 예보 기준 시간

        // X, Y 좌표 설정 (서울 기준 예시: 55, 127)
        const stnId = "133";
        const ntmFc = baseDate + baseTime;

        // Ajax 요청으로 서버의 /weather API 호출
        $.ajax({
            url: `/weather?&stnId=${stnId}&ntmFc=${ntmFc}`,
            method: 'GET',
            dataType: 'json',
            success: function(response) {
                // API 응답에서 필요한 데이터 추출 및 HTML에	 표시
                const weatherData = response.response.body.items.item;
                let temperature = "-";
                let condition = "-";
                
                weatherData.forEach(item => {
                    if (item.category === "TMP") {
                        temperature = item.fcstValue + "°C";  // 온도
                    }
                    if (item.category === "SKY") {
                        condition = item.fcstValue === "1" ? "맑음" : item.fcstValue === "3" ? "구름 많음" : "흐림";  // 날씨 상태
                    }
                });
                
                // 화면에 데이터 업데이트
                $("#temperature").text(`온도: ${temperature}`);
                $("#condition").text(`날씨 상태: ${condition}`);
            },
            error: function() {
                //console.error("날씨 데이터를 불러오는 중 오류가 발생했습니다.");
                console.error("에러 상태:", status);
                console.error("에러 메시지:", error);
                console.error("응답 본문:", xhr.responseText);
            }
        });
    }
*/	
	function fetchWeather2() {
        // baseDate와 baseTime을 현재 시간 기준으로 설정
        const now = new Date();
        const baseDate = now.toISOString().slice(0, 10).replace(/-/g, "");
        const strTime = now.setMinutes(now.getMinutes() - 30);  // 현재 보다 30분 이전
        const baseTime = strTime.toString().slice(0, 4);
        
        // X, Y 좌표 설정 (서울 기준 예시: 55, 127)
        const nx = "55";
        const ny = "127";
        
        // Ajax 요청으로 서버의 /weather API 호출
        $.ajax({
            url: `/weather2?baseDate=${baseDate}&baseTime=${baseTime}&nx=${nx}&ny=${ny}`,
            method: 'GET',
            dataType: 'json',
            success: function(data) {
            	        		    
                // API 응답에서 필요한 데이터 추출 및 HTML에	 표시
                const weatherData = data.response.body.items.item;
                
                let temperature = "-";
                let condition = "-";
                let icon      = "01";
                let rtn       = null;
                               
                $.each(weatherData, function(index, item) {                                  	
                    if (item.category === "T1H") {
                        temperature = item.fcstValue + "°";  // 온도
                    }                    
                    if (item.category === "SKY") {                        
                        switch (item.fcstValue) {
                    		case "1":
                    			icon = "01";
                    			condition = "맑음";
                    			break;
                    		case "3":
                    			icon = "03";
                    			condition = "구름 많음";
                    			break;
                    		case "4":
                    			icon = "04";
                    			condition = "흐림";
                    			break;
						}    
                    }
                    if (item.category === "PTY") { 
	                    //(초단기) 없음(0), 비(1), 비/눈(2), 눈(3), 빗방울(5), 빗방울눈날림(6), 눈날림(7) 
	                    switch (item.fcstValue) {    	
							case "0":
								break;
							case "1":
								icon = "05";
								condition = "비";
								break;
							case "2":
								icon = "06";
								condition = "비/눈";
								break;
							case "3":
								icon = "07";
								condition = "눈";
								break;	
							case "5":
								icon = "08";
								condition = "빗방울";
								break;	
							case "5":
								icon = "09";
								condition = "빗방울";
								break;	
							case "6":
								icon = "10";
								condition = "빗방울눈날림";
								break;	
							case "7":
								icon = "11";
								condition = "눈날림";
								break;			        			
						}
					}   
                });
                
                // 화면에 데이터 업데이트
                $("#temperature").text(`${temperature}`);
                $("#condition").text(`${condition}`);
                $("#img_icon").text(`${icon}`);
            },
            error: function() {
                console.error("날씨 데이터를 불러오는 중 오류가 발생했습니다.");
            }
        });
    }
    
    
    //fetchWeather(); // 중기에보 조회 , 중기예보는 sky(하늘) 상태정보가 안나와서 초단기예보로 조회
    fetchWeather2(); // 초단기예보 조회
});
