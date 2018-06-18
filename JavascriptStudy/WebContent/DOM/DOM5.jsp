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
	<h2>"DOM 속성노드 접근법"</h2>
	<ul>
		<li id='one' class='red'>Seoul</li>
		<li id='two' class='red'>London</li>
		<li id='three' class='red'>Newyork</li>
		<li id='four'>Tokyo</li>
	</ul>
	<script type="text/javascript">
		var elems = document.querySelectorAll('li');

		for (var i = 0; i < elems.length; i++) {
			// class 어트리뷰트의 값을 취득하여 확인
			if (elems[i].className === 'red') {
				// class 어트리뷰트의 값을 변경한다.
				elems[i].className = 'blue';
			}
		}
		// h1 태그 요소 중 첫번째 요소를 취득
		var heading = document.querySelector('h1');

		console.dir(heading); // HTMLHeadingElement: h1
		console.log(heading.firstChild.nodeValue); // Cities

		// id 어트리뷰트의 값을 변경.
		// id 어트리뷰트가 존재하지 않으면 id 어트리뷰트를 생성하고 지정된 값을 설정
		heading.id = 'heading';
		console.log(heading.id); // heading

		var four = document.getElementById('four');

		// class 어트리뷰트가 존재하지 않으면
		if (!four.hasAttribute('class')) {
			// four에 class 어트리뷰트를 추가하고 값으로 'blue'를 설정
			// four.className = 'blue';
			four.setAttribute('class', 'blue');
		} else { // four에 class 어트리뷰트가 존재하면 기존 어트리뷰트 값에 ' blue'를 추가
			four.className += ' blue';
		}

		// class 어트리뷰트의 값을 취득
		console.log(four.getAttribute('class')); // blue

		// class 어트리뷰트를 제거
		four.removeAttribute('class');

		// class 어트리뷰트의 존재를 확인
		console.log(four.hasAttribute('class')); // false
	</script>
</body>
</html>