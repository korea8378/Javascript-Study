<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object</title>
</head>
	<script type="text/javascript">

		//	[[Prototype]] 프로퍼티
		//	모든 객체가 가지고 있는 프로퍼티이다.
		//	객체의 입장에서 자신의 부모 역할을 하는 프로토타입 객체를 가리키며 함수 객체의 경우 Function.prototype를 가리킨다.
		
		//	prototype 프로퍼티
		//	함수 객체만 가지고 있는 프로퍼티이다.
		//	함수 객체가 생성자로 사용될 때 이 함수를 통해 생성된 객체의 부모 역할을 하는 객체를 가리킨다.
		//	함수가 생성될 때 만들어 지며 constructor 프로퍼티를 가지는 객체를 가리킨다. 이 constructor 프로퍼티는 함수 객체 자신을 가리킨다.
		

		function square(number) {
			return number * number;
		}

		// console.dir(square);
		console.dir(square.__proto__); //부모(프로토타입)을 가리킴
		console.dir(square.prototype); //생성자함수로 만들어 진 객체의 부모(프로토타입)을 가리킴

		console.log(square.__proto__ === Function.prototype); // true square 생성자함수객체의 부모(프로토타입)
		console.log(square.__proto__ === square.prototype); // false square.prototype은 square 생성자함수 객체로 만들어진 객체의 부모(프로토타입)	
		console.log(square.prototype.constructor === square); // true square.prototype의 생성자함수 객체 자신을 가리킴 
		console.log(square.__proto__.constructor === square.prototype.constructor); // false square.__proto__는 function이기 때문에 false
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"함수 prototype 프로퍼티"</h2>
</body>
</html>