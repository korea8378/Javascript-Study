<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Closure</title>
</head>
	<script>
		var arr = [];
		//Closure를 사용시 의도치 않게 원하는 값이 들어가지 않는 경우가 발생
		//반복문을 이용하여 값대입시 모든값이 Closure때문에 동일해진다.
		//즉시실행함수를 통해 선언하자마자 값을 대입하고 Closure를 통해
		//즉시실행함수 외부함수의 변수를 유지 시켜준다.
		for (var i = 0; i < 5; i++) {
			arr[i] = (function(id) { // 외부 변수 id가 Closure를 통해 유지가 됨
				return function() { // 내부함수가 리턴이 되어 즉시실행함수 안의 외부함수 변수는 유지가 된다. Closure
					return id;  
				}; 
			}(i)); // 즉시실행함수문에서 매개변수르 넘겨주는 형식
		}

		for (var j = 0; j < arr.length; j++) {
			console.log(arr[j]());
		}
	</script>
<body>
	<h2>"관리자 도구로 확인하시오"</h2>
	<br>
	<h2>"즉시 실행함수를 이용한 Closure"</h2>
</body>
</html>