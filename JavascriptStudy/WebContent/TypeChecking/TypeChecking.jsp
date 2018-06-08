<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>object</title>
</head>
	<script type="text/javascript">

		//javascript는 변수에 값이 초기화(대입)하는 순간 자료형이 정해진다.
		//함수의 매개변수로 사용시 변수명으로만 대입한다.
		//그렇기 때문에 매개변수를 사용하기전에 기능에 맞는 type인지 checking로직이 필요하다
		function sum(a, b) {
			// a와 b가 number 타입인지 체크
			if (getType(a) !== 'Number' || getType(b) !== 'Number') {
				throw new TypeError('파라미터 a 또는 b에 number 타입이 아닌 값이 할당되었습니다.');
			}
			return a + b;
		}

		console.log(sum(10, 20)); // 30
		console.log(sum('10', 20)); // TypeError

		function getType(target) {
			

		//typeof만 사용할 경우 정확한 type 체크가 어렵다
			typeof ''; // string
			typeof 1; // number
			typeof NaN; // number
			typeof true; // boolean
			typeof []; // object
			typeof {}; // object
			typeof new Date(); // object

			//object의 call 함수로 정확한 type이 확인 가능하다. [object String],[object Number],[object Function]  
			return Object.prototype.toString.call(target).slice(8, -1);
		}

		function isString(target) {
			return getType(target) === 'String';
		}

		function isNumber(target) {
			return getType(target) === 'Number';
		}

		function isBoolean(target) {
			return getType(target) === 'Boolean';
		}

		function isNull(target) {
			return getType(target) === 'Null';
		}

		function isUndefined(target) {
			return getType(target) === 'Undefined';
		}

		function isObject(target) {
			return getType(target) === 'Object';
		}

		function isArray(target) {
			return getType(target) === 'Array';
		}

		function isDate(target) {
			return getType(target) === 'Date';
		}

		function isRegExp(target) {
			return getType(target) === 'RegExp';
		}

		function isFunction(target) {
			return getType(target) === 'Function';
		}
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"Type Checking"</h2>
</body>
</html>