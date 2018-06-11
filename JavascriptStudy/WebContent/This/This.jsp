<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>This</title>
</head>
	<script type="text/javascript">
		//javascript에서의 this는 상황마다 가르키는 객체가 다르다
		//함수에서는 전역스코프객체(window)를 가르킨다.
		//메소드 안에 내부 함수에서도 함수객체가 아닌 전역스코프객체를 가르킨다.
		var value = 1;//전역스코프 객체(window)

		var obj = {
			value : 100,
			foo : function() {
				var that = this; // Workaround : this === obj
				//객체 내부에서 변수를 이용하여 자신 객체를 담는다.
				console.log("foo's this: ", this); // obj
				console.log("foo's this.value: ", this.value); // 100
				function bar() {
					//내부 함수이기 때문에 전역스코프객체(window)를 가르킴
					console.log("bar's this: ", this); // window
					console.log("bar's this.value: ", this.value); // 1
					//this를 이용하여 내부함수에서도 객체자신을 가르킨다.
					console.log("bar's that: ", that); // obj
					console.log("bar's that.value: ", that.value); // 100
				}
				bar();
			}
		};

		obj.foo();
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"This function"</h2>
</body>
</html>