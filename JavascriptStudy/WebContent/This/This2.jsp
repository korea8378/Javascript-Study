<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>this</title>
</head>
	<script type="text/javascript">
		//객체 메소드 에서는 객체 자신을 가르킨다.
		
		function Person(name) {
			//Person생성자 함수로 만들어진 객체를 가르킨다.
			this.name = name; 
		}

		//객체 메소드 확장
		//name프로퍼티를 반환해주는 메소드
		Person.prototype.getName = function() {
			return this.name;
		}

		var me = new Person('Lee');
		//객체 메소드안에서의 this는 객체 자신을 가르킨다.
		//밑에서는 me객체 자신을 가르킨다.
		console.log(me.getName());

		//Person.prototype의 name 프로퍼티를 Kim으로 변경
		Person.prototype.name = 'Kim';
		console.log(Person.prototype.getName());
		console.log(me.getName());
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"This method"</h2>
</body>
</html>