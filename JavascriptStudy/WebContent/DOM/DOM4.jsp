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
	<h2>"DOM 텍스트노드 접근법"</h2>
	<ul>
		<li id='one' class='red'>Seoul</li>
		<li id='two' class='red'>London</li>
		<li id='three' class='red'>Newyork</li>
		<li id='four'>Tokyo</li>
	</ul>
	<script type="text/javascript">
		// 해당 텍스트 노드의 부모 요소 노드를 선택한다.
		var one = document.getElementById('one');
		console.dir(one); // HTMLLIElement: li#one.red

		// nodeName, nodeType을 통해 노드의 정보를 취득할 수 있다.
		console.log(one.nodeName); // LI
		console.log(one.nodeType); // 1: Element node

		// firstChild 프로퍼티를 사용하여 텍스트 노드를 탐색한다.
		var textNode = one.firstChild;

		// nodeName, nodeType을 통해 노드의 정보를 취득할 수 있다.
		console.log(textNode.nodeName); // #text
		console.log(textNode.nodeType); // 3: Text node

		// nodeValue 프로퍼티를 사용하여 노드의 값을 취득한다.
		console.log(textNode.nodeValue); // Seoul

		// nodeValue 프로퍼티를 이용하여 텍스트를 수정한다.
		textNode.nodeValue = 'Pusan';
	</script>
</body>
</html>