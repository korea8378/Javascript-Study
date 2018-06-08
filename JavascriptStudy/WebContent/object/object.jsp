<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object</title>
</head>
	<script type="text/javascript">
		var emptyObject = {};
		console.log(typeof emptyObject); // object(객체)

		var person = {				//리터널 방식의 객체생성
			name : 'Lee',			//멤버 변수
			gender : 'male',
			sayHello : function() {	//멤버 함수
				console.log('Hi! My name is ' + this.name);
			}
		};

		console.log(typeof person); // object(typeof 객체확인 메소드)
		console.log(person); // { name: 'Lee', gender: 'male', sayHello: [Function: sayHello] }

		person.sayHello(); // Hi! My name is Lee
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"리터널 방식"</h2>
</body>
</html>