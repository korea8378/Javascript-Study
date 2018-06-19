<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Asynchronous</title>
</head>
	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"Synchronous Asynchronous"</h2>
	<script type="text/javascript">
	//자바스크립트에서 비동기식 처리를 하기위해서는 
	//이벤트함수, AJAX, setTimeout메소드를 사용한다. 
		function func1() {
			console.log('func1');
			func2();
		}

		function func2() {
			setTimeout(function() {
				console.log('func2');
			}, 0);

			func3();
		}

		function func3() {
			console.log('func3');
		}

		func1();
	</script>
</body>
</html>