<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>function</title>
</head>
	<script type="text/javascript">
		//함수 선언식 
		//함수 선언식은 자바스크립트에서 자동으로 함수표현식으로 변환해준다
		//함수 표현식으로 변환시 
		//var square = function square(number) 
		function square(number) {
			return number * number;
		}
		
		//함수 표현식
		var square = function(number) {
			  return number * number;
		};
		
		
		//function 생성자 함수
		var square = new Function('number', 'return number * number');
		console.log(square(10)); // 100
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"함수사용법"</h2>
</body>
</html>