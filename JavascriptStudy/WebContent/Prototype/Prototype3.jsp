<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>prototype</title>
</head>
	<script type="text/javascript">
		//생성자함수.prototype에 프로퍼티를 추가 함으로써
		//생성자함수를 이용하여 만든 객체들이 사용할수 있다.
		//prototype chain으로 가능하다
		//객체 프로퍼티가 없을 경우 부모(prototype)으로 찾아가서 체크하여 사용한다.Object까지 체크
		function Person(name) {
			this.name = name;
		}

		var foo = new Person('Lee');
		
		Person.prototype.sayHello = function() {
			console.log('Hi! my name is ' + this.name);
		};
		
		Person.prototype.age = 20;
		var bar = new Person('Lee2');
		
		console.log(foo.age);
		console.log(bar.age);
		bar.age=10;
		console.log(foo.age);
		console.log(bar.age);

		foo.sayHello();
		
		//object가 아닌 기본자료형(Primitive type)에서도 객체확장이 가능하다.
		//기본자료형으로 프로퍼티나 메소드를 호출할 때 기본자료형과 연관된 객체로 일시적으로 변환되어 프로토타입 객체를 공유하게 된다.
		//기본자료형은 객체가 아니므로 프로퍼티나 메소드를 직접 추가할 수 없다.
		var str = 'test';

		String.prototype.myMethod = function() {
		  return 'myMethod';
		}

		console.log(str.myMethod());
		console.dir(String.prototype);

		console.log(str.__proto__ === String.prototype);                 // true
		console.log(String.prototype.__proto__  === Object.prototype);   // true
		console.log(String.prototype.constructor === String);            // true
		console.log(String.__proto__ === Function.prototype);            // true
		console.log(Function.prototype.__proto__  === Object.prototype); // true
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"prototype 객체확장"</h2>
</body>
</html>