<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>this</title>
</head>
	<script type="text/javascript">
		//call, apply, bind 메소드를 이용하면 
		//다른 함수를 callback를 하여도 전역스코프객체(window)가 아닌
		//호출한 객체를 가르키게 된다.
		//callback에서 많이 사용된다.
		function Person(name) {
			this.name = name;
		}

		Person.prototype.doSomething = function(callback) {
			if (typeof callback == 'function') {
				callback.call(this);
			}
		};

		function foo() {
			console.log(this.name);
		}

		var p = new Person('Lee');
		p.doSomething(foo); // 'Lee'
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"This apply, call, bind"</h2>
</body>
</html>