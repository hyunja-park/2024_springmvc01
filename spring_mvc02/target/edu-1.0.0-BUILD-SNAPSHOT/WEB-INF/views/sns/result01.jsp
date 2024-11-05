<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 로그인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<h2>카카오 로그인 성공</h2>
	<div id="result"></div>
	
	
	<a href="https://kauth.kakao.com/oauth/logout?client_id=fcb95810d0b0d2ccf6dc143279ce8983&logout_redirect_uri=http://localhost:8080/kakaologout">로그아웃</a>
    
<!-- <script type="text/javascript">	 
	 $(function() {
		$("#result").empty();
		$.ajax({
			url : "/kakaoUserInfo",
			method : "post",
			dataType : "json",
			success : function (data) {		
				let str = "<li>닉네임 : ${nickname}</li>";
					str = "<li>이미지 : <img src= ${profileImage}></li>";
				$('#result').append(str)
			},
			error : function () {
				alert("정보를 불러오는 데 실패했습니다.");
			}
		});
	 });
	 
	</script> -->
	
	 <script type="text/javascript">
     $(function() {
         $("#result").empty();
         $.ajax({
             url : "/kakaoUserInfo",
             method : "post",
             dataType : "json",
             success : function(data) {
             let name = data.properties.nickname;
             let img = data.properties.profile_image;
             let email = data.kakao_account.email             
             let str  = "<li>닉네임 : "+ name +" </li>";
             	 str += "<li>email : "+ email +" </li>";
                 str += "<img src=" + img +">";
             $('#result').append(str);
             }, 
             error : function() {
                 alert("정보를 불러오는 데 실패했습니다.");
             }
         });
      });
    </script>
</body>
</html>