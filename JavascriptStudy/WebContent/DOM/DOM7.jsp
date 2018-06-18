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
	<h2>"DOM HTML조작 INNERHTML"</h2>
	<ul>
		<li id='one' class='red'>Seoul</li>
		<li id='two' class='red'>London</li>
		<li id='three' class='red'>Newyork</li>
		<li id='four'>Tokyo</li>
	</ul>
	<script type="text/javascript">
		var one = document.getElementById('one');

		// 마크업이 포함된 콘텐츠 취득
		console.log(one.innerHTML); // Seoul

		// 마크업이 포함된 콘텐츠 변경 마크업언어를 추가시 마크업언어로 인식된다
		one.innerHTML += '<em class="blue">, Korea</em>';

		// 마크업이 포함된 콘텐츠 취득 
		console.log(one.innerHTML); // Seoul <em class="blue">, Korea</em>
	</script>
</body>
</html>