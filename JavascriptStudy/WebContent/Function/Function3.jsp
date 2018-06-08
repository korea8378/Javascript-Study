<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object</title>
</head>
	<script type="text/javascript">
	
		//무명의 리터럴로 표현이 가능하다.
		//변수나 자료 구조(객체, 배열…)에 저장할 수 있다.
		//함수의 파라미터로 전달할 수 있다.
		//반환값(return value)으로 사용할 수 있다.


		// 1. 무명의 리터럴로 표현이 가능하다.
		// 2. 변수나 데이터 구조안에 담을 수 있다.
		var increase = function(num) {
			return num + 1;
		};

		var decrease = function(num) {
			return num - 1;
		};

		var obj = {
			increase : increase,
			decrease : decrease
		};

		// 2. 함수의 파라미터로 전달 할 수 있다.
		function calc(func, num) {
			return func(num);
		}

		console.log(calc(increase, 1));
		console.log(calc(decrease, 1));

		// 3. 반환값(return value)으로 사용할 수 있다.
		function calc(mode) {
			var funcs = {
				plus : function(left, right) {
					return left + right;
				},
				minus : function(left, right) {
					return left - right;
				}
			};
			return funcs[mode];
		}
		console.log(calc('plus')(2, 1));
		console.log(calc('minus')(2, 1));
		
		
		//Javascript의 함수는 흡사 변수와 같이 사용할 수 있으며 코드의 어디에서든지 정의할 수 있다.
		//함수와 다른 객체를 구분 짖는 특징은 호출할 수 있다는 것이다.
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"일급객체 = 함수"</h2>
</body>
</html>