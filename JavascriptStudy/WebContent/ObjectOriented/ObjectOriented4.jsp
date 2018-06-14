<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ObjectOriented</title>
</head>
<script>
	//javascript의 상속은 프로토타입을 이용하여 사용한다.
	//객체와 객체를 상속 시키는 개념이다.
	//두번째 방법인 프로토타입 패턴 상속은 의사클래스패턴 상속과 달리 new를 통하여 부모자식 상속하지 않는다.
	//Object.create메소드를 이용하여 상속을 시킨다.
	//부모 생성자 함수
	var Parent = (function() {
		// Constructor
		function Parent(name) {
			this.name = name;
		}

		// method
		Parent.prototype.sayHi = function() {
			console.log('Hi! ' + this.name);
		};

		// return constructor
		return Parent;
	}());

	// create 함수의 인수는 프로토타입이다.
	var child = Object.create(Parent.prototype);
	child.name = 'child';

	child.sayHi(); // Hi! child

	console.log(child instanceof Parent); // true
	
	
	
	//객체 리터럴방식에서도 사용이 가능하다.

	var parent = {
			name : 'parent',
			sayHi : function() {
				console.log('Hi! ' + this.name);
			}
		};

		// create 함수의 인자는 객체이다.
		var child = Object.create(parent);
		child.name = 'child';

		// var child = Object.create(parent, {name: {value: 'child'}});

		parent.sayHi(); // Hi! parent
		child.sayHi(); // Hi! child

		console.log(parent.isPrototypeOf(child)); // true

</script>
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"객체지향프로그래밍 상속 프로토타입패턴"</h2>
</body>
</html>