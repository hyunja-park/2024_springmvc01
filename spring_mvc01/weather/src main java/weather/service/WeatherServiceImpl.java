package com.ict.weather.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.edu04.dao.AjaxMembersDAO;
import com.ict.edu04.vo.MembersVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.util.UriComponentsBuilder;
import org.springframework.web.client.RestTemplate;
import org.springframework.beans.factory.annotation.Value;

@Service
public class WeatherServiceImpl implements WeatherService{

	private final String apiKeyEnc = "MEu5qTa09k15JyPiNrxnqOzzoCih%2BiRu879QR4jSBC1TwB9WRRpKAfwmK7Nt%2BjLBXkiTLppP8FBzzMlXaKWOWg%3D%3D"; // 여기에 API 키를 입력하세요
	
	private final RestTemplate restTemplate = new RestTemplate(); // RestTemplate 인스턴스 생성
        
	@Override
	public String getWeatherData(String stnId, String tmFc) {
		String response = null;
		StringBuffer sb = new StringBuffer();
		StringBuffer sbout = new StringBuffer();
		
		String apiUrl = "http://apis.data.go.kr/1360000/MidFcstInfoService/getMidFcst";  //중기
		
		try {
			// 중기 보내는 형식		     
		
//			UriComponentsBuilder uriBuilder = UriComponentsBuilder.fromHttpUrl(apiUrl)
//							                .queryParam("serviceKey", apiKey )
//							                .queryParam("pageNo", "1")
//							                .queryParam("numOfRows", "20")
//							                .queryParam("dataType", "JSON")		
//								            .queryParam("stnId", stnId)
//								            .queryParam("tmFc", tmFc);
			
//			System.out.println("uriBuilder : " + uriBuilder.toUriString());
//			System.out.println("uriBuilder : " + uriBuilder.toString()); 
			
			// API 호출
//		    String endUrl = uriBuilder.toUriString() + "&serviceKey=" + apiKey;
//		    System.out.println("endUrl : " + endUrl);
//		    response = restTemplate.execute(endUrl, null, null, null, String.class);
//		    response = restTemplate.getForObject(result, String.class);
			
			sb.append(apiUrl);
			sb.append("?serviceKey=" + apiKeyEnc);
			sb.append("&pageNo=1");
			sb.append("&numOfRows=100");
			sb.append("&dataType=JSON");
			sb.append("&stnId=" + stnId);
			sb.append("&tmFc=" + tmFc);							
			
			String result = sb.toString();
			
			System.out.println("stnId : " + stnId);
			System.out.println("tmFc : " + tmFc);
			
			System.out.println("result : " + result);
		        			
			URL obj = new URL(result); // 호출할 url
            
			HttpURLConnection con = (HttpURLConnection)obj.openConnection();

            con.setRequestMethod("GET");
            
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));

            String line;
            
            while((line = in.readLine()) != null) { // response를 차례대로 출력
            	sbout.append(line);
            }
		    
		    System.out.print("WeatherService : " + sbout.toString());
		        
		} catch (Exception e) {
            // 예외 발생 시 더미 JSON 문자열 반환
            e.printStackTrace();
            return sb.toString();
        }		        
		
		return sbout.toString();
	}
	

	@Override
	public String getWeatherData2(String baseDate, String baseTime, String nx, String ny) {
		String response = null;
		StringBuffer sb = new StringBuffer();
		StringBuffer sbout = new StringBuffer();
		
		String apiUrl = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtFcst";  //초단기예보 조회
				
		try {
			// 초단기 예보 형식	     
			
//			UriComponentsBuilder uriBuilder = UriComponentsBuilder.fromHttpUrl(apiUrl)
//							                .queryParam("serviceKey", apiKey )
//							                .queryParam("pageNo", "1")
//							                .queryParam("numOfRows", "10")
//							                .queryParam("dataType", "JSON")							                
//							                .queryParam("base_date", baseDate)
//							                .queryParam("base_time", baseTime)
//							                .queryParam("nx", nx)
//							                .queryParam("ny", ny);
			
//			System.out.println("uriBuilder : " + uriBuilder.toUriString());
//			System.out.println("uriBuilder : " + uriBuilder.toString()); 
			
			// API 호출
//		    String endUrl = uriBuilder.toUriString() + "&serviceKey=" + apiKey;
//		    System.out.println("endUrl : " + endUrl);
//		    response = restTemplate.execute(endUrl, null, null, null, String.class);
//		    response = restTemplate.getForObject(result, String.class);
			
			sb.append(apiUrl);
			sb.append("?serviceKey=" + apiKeyEnc);
			sb.append("&pageNo=1");
			sb.append("&numOfRows=100");
			sb.append("&dataType=JSON");
			sb.append("&base_date=" + baseDate);
			sb.append("&base_time=" + baseTime);
			sb.append("&nx=" + nx);
			sb.append("&ny=" + ny);
										
			String result = sb.toString();
			
		    System.out.println("baseDate : " + baseDate);
			System.out.println("baseTime : " + baseTime);
			System.out.println("baseDate : " + baseDate);
			System.out.println("baseTime : " + baseTime);
			System.out.println("nx : " + nx);
			System.out.println("ny : " + ny);
			System.out.println("result : " + result);

			URL obj = new URL(result); // 호출할 url
            
			HttpURLConnection con = (HttpURLConnection)obj.openConnection();

            con.setRequestMethod("GET");
            
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));

            String line;
            
            while((line = in.readLine()) != null) { // response를 차례대로 출력
            	sbout.append(line);
            }

		    
		    System.out.print("WeatherService : " + sbout.toString());
		        
		} catch (Exception e) {
            // 예외 발생 시 더미 JSON 문자열 반환
            e.printStackTrace();
            return sb.toString();
        }		        
		
		return sbout.toString();
	}

}
