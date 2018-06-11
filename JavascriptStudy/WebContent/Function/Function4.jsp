<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>function</title>
</head>
	<script type="text/javascript">
		//함수 선언
		function square(number) {
			return number * number;
		}
		//함수 프로퍼티 구조 확인
		//함수 객체는 protptype,__proto__ 두개의 프로퍼티를 가진다.
		//일반 객체는 __proto__ 하나만 존재
		console.dir(square);

		function square(number) {
			return number * number;
		}

		console.log(square.__proto__ === Function.prototype); //square.__proto__ <= 부모(프로토타입)객체, Function.prototype이 부모
		console.log(Object.getPrototypeOf(square) === Function.prototype);//부모객체 학인 메소드
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"함수 __proto__ 프로퍼티"</h2>
</body>
</html>