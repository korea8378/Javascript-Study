<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>This</title>
</head>
	<script type="text/javascript">
		//생성자 함수에서의 this
		//생성자 함수와 일반함수의 차이는 new를 쓰냐 안쓰냐 차이이다.
		//그렇기 때문에 생성자함수를 정의시 반드시 첫글자를 대문자로 쓰기로 하자
		//일반함수의 경우 this는 전역스코프객체(window)를 가르키지만
		//생성자함수에서의 this는 new를 통해 만들어진 빈객체를 가르킨다.
		//빈객체를 생성하여 this로 프로퍼티를 동적으로 추가 해준다.
		function Person(name) {

			this.name = name;
		}

		var me = new Person('Lee');
		console.log(me.name);

		// 일반 함수의 this는 전역객체를 가리킨다.
		var you = Person('Lee');

		console.log(you); // undefined
		console.log(window.name); // Lee
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"This constructor"</h2>
</body>
</html>