<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object</title>
</head>
	<script type="text/javascript">
		//리터널방식 객체생성
		//object() 생성자 함수로 객체 생성
		//persion.__prototype__ => object.prototype
		//object.__proto__ => function.prototype
		//object.prototype.constructor => object
		//fuction.__proto__ => object.prototype
		var person = {
			name : 'Lee',
			gender : 'male',
			sayHello : function() {
				console.log('Hi! my name is ' + this.name);
			}
		};

		console.dir(person);

		console.log(person.__proto__ === Object.prototype); // true
		console.log(Object.prototype.constructor === Object); // true
		console.log(Object.__proto__ === Function.prototype); // true
		console.log(Function.prototype.__proto__ === Object.prototype); // true
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"prototype 리터널 방식"</h2>
</body>
</html>