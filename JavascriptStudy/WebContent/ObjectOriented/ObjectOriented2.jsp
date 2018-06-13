<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ObjectOriented</title>
</head>
<script>
	/**
	 * 모든 생성자 함수의 프로토타입은 Function.prototype이다. 따라서 모든 생성자 함수는 Function.prototype.method()에 접근할 수 있다.
	 * @method Function.prototype.method
	 * @param ({string}) (name) - (메소드 이름)
	 * @param ({function}) (func) - (추가할 메소드 본체)
	 */
	Function.prototype.method = function(name, func) {
		// 생성자함수의 프로토타입에 동일한 이름의 메소드가 없으면 생성자함수의 프로토타입에 메소드를 추가
		// this: 생성자함수
		if (!this.prototype[name]) {
			this.prototype[name] = func;
		}
	};

	/**
	 * 생성자 함수
	 */
	function Person(name) {
		this.name = name;
	}

	/**
	 * 생성자함수 Person의 프로토타입에 메소드 setName을 추가
	 */
	Person.method('setName', function(name) {
		this.name = name;
	});

	/**
	 * 생성자함수 Person의 프로토타입에 메소드 getName을 추가
	 */
	Person.method('getName', function() {
		return this.name;
	});

	var me = new Person('Lee');
	var you = new Person('Kim');
	var him = new Person('choi');

	console.log(Person.prototype);
	// Person { setName: [Function], getName: [Function] }

	console.log(me.getName()); // Person { name: 'Lee' }
	console.log(you); // Person { name: 'Kim' }
	console.log(him); // Person { name: 'choi' }
</script>
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"객체지향프로그래밍 프로토타입 메소드 추가 메소드 구현"</h2>
</body>
</html>