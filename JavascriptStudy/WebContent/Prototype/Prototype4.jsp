<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>prototype</title>
</head>
	<script type="text/javascript">

	function Person(name) {
		  this.name = name;
		}

		var foo = new Person('Lee');

		Person.prototype.sayHello = function(){
		  console.log('Hi! my name is ' + this.name);
		};

		foo.sayHello();
	
		function Person(name) {
			this.name = name;
		}

		var foo = new Person('Lee');

		// 프로토타입 객체의 변경
		// 이미 객체를 생성하고 난뒤 프로퍼티를 변경하여 기존에 생성된 객체에는 미적용
		Person.prototype = {
			gender : 'male'
		};

		var bar = new Person('Kim');

		console.log(foo.gender); // undefined
		console.log(bar.gender); // 'male'
		console.log(foo.constructor); // Person(name)
		console.log(bar.constructor); // Object()

		function Person2(name) {
			this.name = name;
		}

		Person2.prototype.gender = 'male'; // 

		var foo2 = new Person2('Lee');
		var bar2 = new Person2('Kim');

		console.log(foo2.gender); // 'male'
		console.log(bar2.gender); // 'male'

		// foo 객체에 gender 프로퍼티가 없으면 프로퍼티 동적 추가
		// foo 객체에 gender 프로퍼티가 있으면 해당 프로퍼티에 값 할당
		foo2.gender = 'female'; // 

		console.log(foo2.gender); // 'female'
		console.log(bar2.gender); // 'male'
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"prototype 객체변경"</h2>
</body>
</html>