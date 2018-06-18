<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BuiltInObject</title>
</head>
<script>
	//javascript에는 여러종료의 내장객체가 있다
	//Object 생성자 함수로 객체를 생성하면
	//인자값에 맞게 객체를 변환해준다
	//String 객체를 반환한다
	//var obj = new String('String');과 동치이다
	var obj = new Object('String');
	console.log(typeof obj + ': ', obj);
	console.dir(obj);

	var strObj = new String('String');
	console.log(typeof strObj + ': ', strObj);

	//Number 객체를 반환한다
	//var obj = new Number(123);과 동치이다
	var obj = new Object(123);
	console.log(typeof obj + ': ', obj);

	var numObj = new Number(123);
	console.log(typeof numObj + ': ', numObj);

	//Boolean 객체를 반환한다.
	//var obj = new Boolean(true);과 동치이다
	var obj = new Object(true);
	console.log(typeof obj + ': ', obj);

	var boolObj = new Boolean(123);
	console.log(typeof boolObj + ': ', boolObj);
</script>
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"자바스크립트가 제공하는 내장 객체"</h2>
</body>
</html>