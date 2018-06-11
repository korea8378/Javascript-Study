<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>function</title>
</head>
	<script type="text/javascript">
	
		//호이스팅이란 var 선언문이나 function 선언문 등 모든 선언문이 해당 Scope의 선두로 옮겨진 것처럼 동작하는 특성을 말한다. 
		//즉, 자바스크립트는 모든 선언문(var, let, const, function, function*, class)이 선언되기 이전에 참조 가능하다.
		//함수선언식으로 정의된 함수는 자바스크립트 엔진이 스크립트가 로딩되는 시점에 바로 초기화하고 이를 VO(variable object)에 저장한다.
		//즉, 함수 선언, 초기화, 할당이 한번에 이루어진다. 그렇기 때문에 함수 선언의 위치와는 상관없이 소스 내 어느 곳에서든지 호출이 가능하다.
		
		//함수 호이스팅

		var res = square(5);// undefined으로 출력 에러는 안남

		function square(number) {
			return number * number;
		}

		//변수 호이스팅
		console.log(foo); // undefined
		
		var foo = 123;
		
		console.log(foo); // 123
		{
			var foo = 456;
		}
		console.log(foo); // 456
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"hoisting"</h2>
</body>
</html>