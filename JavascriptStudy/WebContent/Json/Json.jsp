<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSON</title>
</head>
<script>
var o = {
		  name: 'Lee',
		  gender: 'male',
		  age: 20
		};

		// 객체 => JSON 형식의 문자열
		var strObject = JSON.stringify(o);
		console.log(typeof strObject, strObject);
		// string {"name":"Lee","gender":"male","age":20}

		// 객체 => JSON 형식의 문자열 + prettify
		var strPrettyObject = JSON.stringify(o, null, 2);
		console.log(typeof strPrettyObject, strPrettyObject);
		/*
		string {
		  "name": "Lee",
		  "gender": "male",
		  "age": 20
		}
		*/

		// replacer
		// 값의 타입이 Number이면 필터링되어 반환되지 않는다.
		function filter(key, value) {
		  return typeof value === 'number' ? undefined : value;
		}

		// 객체 => JSON 형식의 문자열 + replacer + prettify
		var strFilteredObject = JSON.stringify(o, filter, 2);
		console.log(typeof strFilteredObject, strFilteredObject);
		/*
		string {
		  "name": "Lee",
		  "gender": "male"
		}
		*/

		var arr = [1, 5, 'false'];

		// 배열 객체 => 문자열
		var strArray = JSON.stringify(arr);
		console.log(typeof strArray, strArray); // string [1,5,"false"]

		// replacer
		// 모든 값을 대문자로 변환된 문자열을 반환한다
		function replaceToUpper(key, value) {
		  return value.toString().toUpperCase();
		}

		// 배열 객체 => 문자열 + replacer
		var strFilteredArray = JSON.stringify(arr, replaceToUpper);
		console.log(typeof strFilteredArray, strFilteredArray); // string "1,5,FALSE"
</script>
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"AJAX JSON"</h2>
</body>
</html>