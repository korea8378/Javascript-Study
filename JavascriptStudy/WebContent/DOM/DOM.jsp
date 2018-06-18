<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DOM</title>
</head>
	<script type="text/javascript">
		//DOM의 네가지의 요소로 구성되어있다.
		//문서노드 => 최상위 노드로서 문서의 노드들을 접근하기위한 시작점
		//요소노드 => html문서의 Tag들
		//어트리뷰트노드 => 요소노드의 속성을 가지고 있는 노드
		//텍스트 노드 => html 요소의 텍스에 해당 가장 최하단 노드
		// id로 하나의 요소를 선택한다.
		var elem = document.getElementById('one');
		// 클래스 어트리뷰트의 값을 변경한다.
		elem.className = 'blue';

		// 그림: DOM tree의 객체 구성 참고
		console.log(elem); // <li id="one" class="blue">Seoul</li>
		console.log(elem.__proto__); // HTMLLIElement
		console.log(elem.__proto__.__proto__); // HTMLElement
		console.log(elem.__proto__.__proto__.__proto__); // Element
		console.log(elem.__proto__.__proto__.__proto__.__proto__); // Node

		// CSS 셀렉터를 이용해 요소를 선택한다
		var elem = document.querySelector('li.red');
		// 클래스 어트리뷰트의 값을 변경한다.
		elem.className = 'blue';
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"DOM 요소 접근법"</h2>
</body>
</html>