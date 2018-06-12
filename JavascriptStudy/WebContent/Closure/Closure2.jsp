<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Closure</title>
</head>

<body>
	<h2>"관리자 도구로 확인하시오"</h2>
	<br>
	<h2>"Closure를 사용하지 않는 카운트"</h2>
	

	<p>전역 변수를 사용한 Counting</p>
	<!--전역변수를 사용하게 되면 개발도중 다른의도나 다른개발자가
	counter변수를 실수로 조작이 가능하기 때문에 에러가 발생 할 수 있다 -->
	<button type="button" onclick="myFunction()">Count!</button>

	<p id="demo">0</p>

	<script>
		var counter = 0;

		function add() {
			return ++counter;
		}

		function myFunction() {
			document.getElementById('demo').innerHTML = add();
		}
	</script>

</body>
</html>