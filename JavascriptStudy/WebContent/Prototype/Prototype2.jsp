<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>prototype</title>
</head>
	<script type="text/javascript">
		//생성자방식
		//리터널방식과 object방식과 다르게 생성자함수 prototype이 생긴다
		//foo.__proto__ => Person.prototype
		//Person.prototype.constructor => Person
		//Person.__proto__ => function.prototype
		//function.prototype.__proto__ => object.prototype
		//person.prototype.__proto__ => object.prototype
		function Person(name, gender) {
			this.name = name;
			this.gender = gender;
			this.sayHello = function() {
				console.log('Hi! my name is ' + this.name);
			};
		}

		var foo = new Person('Lee', 'male');

		console.dir(Person);
		console.dir(foo);

		console.log(foo.__proto__ === Person.prototype); // true
		console.log(Person.prototype.__proto__ === Object.prototype); // true
		console.log(Person.prototype.constructor === Person); // true
		console.log(Person.__proto__ === Function.prototype); // true
		console.log(Function.prototype.__proto__ === Object.prototype); // true
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"prototype 생성자 방식"</h2>
</body>
</html>