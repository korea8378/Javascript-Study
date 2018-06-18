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
	<h2>"DOM DOM조작 node를 만들어서 추가"</h2>
	<ul>
		<li id='one' class='red'>Seoul</li>
		<li id='two' class='red'>London</li>
		<li id='three' class='red'>Newyork</li>
		<li id='four'>Tokyo</li>
	</ul>
	<script type="text/javascript">
		// 태그이름을 인자로 전달하여 요소를 생성
		var newElem = document.createElement('li');
		// var newElem = document.createElement('<li>test</li>');
		// Uncaught DOMException: Failed to execute 'createElement' on 'Document': The tag name provided ('<li>test</li>') is not a valid name.

		// 텍스트 노드를 생성
		var newText = document.createTextNode('Beijing');

		// 텍스트 노드를 newElem 자식으로 DOM 트리에 추가
		newElem.appendChild(newText);

		var container = document.querySelector('ul');

		// newElem을 container의 자식으로 DOM 트리에 추가
		container.appendChild(newElem);

		var removeElem = document.getElementById('one');

		// container의 자식인 removeElem 요소를 DOM 트리에 제거한다.
		container.removeChild(removeElem);
	</script>
</body>
</html>