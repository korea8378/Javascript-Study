<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object</title>
</head>
	<script type="text/javascript">
		//javascript는 기본적으로 function level scope이다
		//block scope로는 const, let이 있다
		//var를 bloc안에서 선언하여도 외부에서 접근이 가능

		var x = 'global';

		function foo() {
			var x = 'local';
			console.log(x);

			function bar() { // 내부함수
				console.log(x); // 가장 인접한 x 변수를 참조
			}

			bar();
		}
		foo();
		console.log(x); // 전역변수 x = global참조 함수레벨스코프라서 foo안의 지역변수x는 접근불가능
		
		var y = 10;

		function foo2() {
		  y = 100;	//var가 없기때문에 전역변수에 y변수가 있는지 체크후 있으면 접근 즉 전역변수 y=10값을 100으로 수정됨
		  console.log(y);
		}
		foo2();
		console.log(y); // 100
		
		var z = 10;

		function foo3(){
		  var z = 100;
		  console.log(z);

		  function bar2(){   // 내부함수
		    z = 1000;        //foo3의 z가 1000으로 번경
		    console.log(z); // 1000
		  }

		  bar2();
		}
		foo3();
		console.log(z); // 10
		
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"내부함수 scope"</h2>
</body>
</html>