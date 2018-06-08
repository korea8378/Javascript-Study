<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object</title>
</head>
	<script type="text/javascript">
	
	// 즉시 실행함수 딱한번만 실행 자바스크립트 특성상 변수 중복이 가능하기때문에 변수중복을 방지 가능
	// 기명 즉시실행함수(named immediately-invoked function expression)
	(function myFunction() {
	  var a = 3;
	  var b = 5;
	  return a * b;
	}());

	// 익명 즉시실행함수(immediately-invoked function expression)
	(function () {
	  var a = 3;
	  var b = 5;
	  return a * b;
	}());
	
	//내부함수
	//내부에서는 외부함수의 변수를 참조가능 
	//외부함수와 외부함수 밖에서는 내부함수 내부를 참조 불가능
	function parent(param) {
		  var parentVar = param;
		  function child() {
		    var childVar = 'lee';
		    console.log(parentVar + ' ' + childVar); // Hello lee
		  }
		  child();
		  console.log(parentVar + ' ' + childVar);
		  // Uncaught ReferenceError: childVar is not defined
		}
		parent('Hello');
	</script>	
<body>

	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"함수 즉시, 내부, 콜백"</h2>
	
	<!-- 콜백함수 이벤트처리하기 위해사용(비동기통식) 이벤트 발생시 처리하기 위한 함수(함수를 리턴)  -->
	<button id="myButton">Click me</button>
	<script>
		var button = document.getElementById('myButton');
		button.addEventListener('click', function() {
			console.log('button clicked!');
		});
	</script>


</body>
</html>