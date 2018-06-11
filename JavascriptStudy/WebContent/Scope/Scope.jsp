<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope</title>
</head>
	<script type="text/javascript">
		//javascript는 기본적으로 function level scope이다
		//block scope로는 const, let이 있다
		//var를 bloc안에서 선언하여도 외부에서 접근이 가능
		var x = 0;
		{
			var x = 1;
			console.log(x); // 1
		}
		console.log(x); // 1

		let y = 0;
		{
			let y = 1;
			console.log(y); // 1
		}
		console.log(y); // 0
		
		//함수 안에서 사용한 변수들은 지역변수로 적용된다.
		var a = 10;     // 전역변수

		(function () {
		  var b = 20;   // 지역변수
		})();

		console.log(a); // 10
		console.log(b); // "b" is not defined
		
		
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"function, block scope"</h2>
</body>
</html>