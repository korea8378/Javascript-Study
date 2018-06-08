<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object</title>
</head>
	<script type="text/javascript">
		// 생성자 함수
		// 리터널방식, object방식에 비해 효율적이다. 생성자함수를 미리 저의해놓아 동일안 프로퍼티를 가지는 객체를 간단히생성가능함
		function Person(name, gender) {
			this.name = name;
			this.gender = gender;
			this.sayHello = function() {
				console.log('Hi! My name is ' + this.name);
			};
		}

		// 인스턴스의 생성
		var person1 = new Person('Lee', 'male');
		var person2 = new Person('Kim', 'female');

		console.log('person1: ', typeof person1);
		console.log('person2: ', typeof person2);
		console.log('person1: ', person1);
		console.log('person2: ', person2);

		person1.sayHello();
		person2.sayHello();
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2>
	<h2>"생성자 방식"</h2>
</body>
</html>