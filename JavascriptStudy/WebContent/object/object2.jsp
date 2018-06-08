<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object</title>
</head>
	<script type="text/javascript">
		var person = new Object(); //Object() 방식
		// 프로퍼티 추가
		person.name = 'Lee';
		person.gender = 'male';
		person.sayHello = function() {
			console.log('Hi! My name is ' + this.name);
		};

		console.log(typeof person); // object
		console.log(person); // { name: 'Lee', gender: 'male', sayHello: [Function] }

		person.sayHello(); // Hi! My name is Lee
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2>
	<h2>"Object() 방식"</h2>
</body>
</html>