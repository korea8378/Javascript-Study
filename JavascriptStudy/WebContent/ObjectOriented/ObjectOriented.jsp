<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ObjectOriented</title>
</head>
<script>
	//javascript는에서는 객체의 프로퍼티를 동적으로 추가 할 수있다.
	//Person 생성자 함수에 메소드를 정의하여 사용한다면 
	//Person 생성자 함수로 생성된 객체들은 모두 같은 메소드를 각각 할당 받아 메모리 낭비가 생길수 있다.
	//javascript의 특징인 프로토타입체인을 이용한다면 메모리를 낭비 하지 않고 사용가능하게 해준다.
	//Person생성자 함수의 prototype프러퍼티가 가르키는 프로토타입은 객체에 동적으로 프로퍼티를
	//추가해준다면 Person생성자 함수로 생성된 객체들은 Person생성자 함수의 prototype프러퍼티가 가르키는
	//프로토타입객체를 프로토타입(부모)으로 가르키고 있기 때문에 프토타입체인들 통해서 동적으로 추가한
	//프로퍼티를 찾아가서 사용 할 수 있다.
	function Person(name) {
		this.name = name;
	}

	// 프로토타입 객체에 메소드 정의
	Person.prototype.setName = function(name) {
		this.name = name;
	};

	// 프로토타입 객체에 메소드 정의
	Person.prototype.getName = function() {
		return this.name;
	};

	var me = new Person('Lee');
	var you = new Person('Kim');
	var him = new Person('choi');

	console.log(Person.prototype);
	// Person { setName: [Function], getName: [Function] }
	//me, you, him 객체 안에는 getName, setName 메소드가 없지만
	//프로토타입체인을 통해서 프로토타입(부모)를 찾아가 메소드를 사용 할 수 있다.
	console.log(me); // Person { name: 'Lee' }
	console.log(you); // Person { name: 'Kim' }
	console.log(him); // Person { name: 'choi' }
</script>
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"객체지향프로그래밍"</h2>
</body>
</html>