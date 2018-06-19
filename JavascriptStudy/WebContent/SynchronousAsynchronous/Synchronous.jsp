<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Synchronous</title>
</head>
	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"Synchronous Synchronous"</h2>
	<script type="text/javascript">
		//자바스크립트는 기본적으로 동기식처리를 한다.
		//예를 들어 순차적으로 작업을 수행중 서버에 데이터를 요청하여 가져오는 작업이 수행되면
		//데이터가 올때까지 다른작업을 수행하지않고 블로킹이 된다.	
		function func1() {
			console.log('func1');
			func2();
		}

		function func2() {
			console.log('func2');
			func3();
		}

		function func3() {
			console.log('func3');
		}

		func1();
	</script>
</body>
</html>