<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ObjectOriented</title>
</head>
<script>
	//javascript에서는 의사클래스패턴상속과 프로토타입상속 두가지의 방법을 사용한다.
	//의사클래스패턴상속도 프로토타입 기반 상속이기 때문에 프로토타입상속을 대부분 사용한다.
	//java와 다르게 javascript는 프로토타입을 이용하여 상속하는데 java의 class
	//상속과 다르게 객체를 기반으로 하는 상속이다.
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

	// 자식 생성자 함수
	var Child = (function() {
		// Constructor
		function Child(name) {
			this.name = name;
		}

		// 자식 생성자 함수의 프로토타입 객체를 부모 생성자 함수의 인스턴스로 교체.
		Child.prototype = new Parent(); // ②

		// 메소드 오버라이드
		Child.prototype.sayHi = function() {
			console.log('안녕하세요! ' + this.name);
		};

		// sayBye 메소드는 Parent 생성자함수의 인스턴스에 위치된다
		Child.prototype.sayBye = function() {
			console.log('안녕히가세요! ' + this.name);
		};

		// return constructor
		return Child;
	}());

	var child = new Child('child'); // ①
	console.log(child); // Parent { name: 'child' }

	console.log(Child.prototype); // Parent { name: undefined, sayHi: [Function], sayBye: [Function] }

	child.sayHi(); // 안녕하세요! child
	child.sayBye(); // 안녕히가세요! child

	console.log(child instanceof Parent); // true
	console.log(child instanceof Child); // true
	
	//단점으로는 자식생성자함수로 생성된 객체는의 프로토타입은 생성자링크가 끊어진다.
	//객체리터널 방식에는 적용하기가 힘들다 object()생성자 함수를 사용하기 때문이다.
</script>
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"객체지향프로그래밍 상속 의사클래스패턴"</h2>
</body>
</html>