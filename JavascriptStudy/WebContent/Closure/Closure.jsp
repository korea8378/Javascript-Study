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
	<p>클로저를 사용한 Counting</p>
	<!-- 클로저란 중첩되는 함수내에서 내부함수는 유지되면서 외부함수가 종료된 상태여도 외부함수의 외부함수변수를
	참조 할수 있는 상태를 클로저라고 한다.실행컨테스트에서의 스코프체인과 Activation object과 유지되고 있기 때문이다. -->
	<button type="button" onclick="myFunction()">Count!</button>

	<p id="demo">0</p>

	<script>
		var add = (function() {
			var counter = 0;
			// 아래의 함수는 반환되어 myFuction함수 내에서 계속 존재하게 된다.
			// 아래 내부함수는 외부함수의 counter변수를 외부함수가 종료된 시점에서도 참조할수 있게된다.
			// 이러한 상황을 클로저라고 한다.
			return function() {
				return ++counter;
			};
		}());

		function myFunction() {
			document.getElementById('demo').innerHTML = add();
		}
	</script>

</body>
</html>