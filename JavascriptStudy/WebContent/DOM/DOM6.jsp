<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DOM</title>
</head>

<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"DOM HTML조작 TEXTCONENT"</h2>
	<ul>
		<li id='one' class='red'>Seoul</li>
		<li id='two' class='red'>London</li>
		<li id='three' class='red'>Newyork</li>
		<li id='four'>Tokyo</li>
	</ul>
	<script type="text/javascript">
		var ul = document.querySelector('ul');
		// var ul = document.getElementsByTagName('ul')[0];

		// 요소의 텍스트 취득
		console.log(ul.textContent);
		// IE를 제외한 대부분의 브라우저들은 요소 사이의 공백 또는 줄바꿈 문자를 텍스트 노드로 취급한다
		/*
		        Seoul
		        London
		        Newyork
		        Tokyo
		 */

		var one = document.getElementById('one');

		// 요소의 텍스트 취득
		console.log(one.textContent); // Seoul

		// 요소의 텍스트 변경
		one.textContent += ', Korea';

		console.log(one.textContent); // Seoul, Korea

		// 요소의 마크업이 포함된 콘텐츠 변경. 텍스트로만 인식이 된다 마크업언어로는 인식 안됨
		one.textContent = '<h1>Heading</h1>';

		// 마크업이 문자열로 표시된다.
		console.log(one.textContent); // <h1>Heading</h1>
	</script>
</body>
</html>