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
	<h2>"DOM nodelist로 접근시 주의 사항"</h2>
	<ul><li
  	id='one' class='red'>Seoul</li><li
  	id='two' class='red'>London</li><li
 	id='three' class='red'>Newyork</li><li
 	id='four'>Tokyo</li></ul>
	<script type="text/javascript">
		//htmlcollection으로 접근을 하면 실시간으로 반영되기때문에 반복문으로 변경시 적용되지 않을때가 있다
		//그래서 nodelist로 접근을하여 수정하면 적용되지면 nodelist로 접근시에도 주의사항이 있다.
		//예로 ul태그로 접근하여 nodelist로 받으면
		//자식노드들을 가져 올경우 문제가 발생한다.
		//ul태그 안에 li태그 값만 들고 오고싶은데 nodelist로 접근하게 되면 줄바꿈(개행) 즉 엔터도 하나의 텍스트node로 
		//인식 하기때문에 li태그 node 와 텍스트node를 가져 와버린다.
		//그렇기때문에 태그 작성시 엔터(줄개행)이 텍스트 노드로 인식되지 않게 태크들은 이어붙혀서 사용한다
		var elem = document.querySelector('ul');
		console.log(elem); // ul

		if (elem.hasChildNodes()) {
			console.log(elem.childNodes);
			// HTML의 공백을 제거하지 않은 경우
			// NodeList(9) [text, li#one.red, text, li#two.red, text, li#three.red, text, li#four, text]
			// HTML의 공백을 제거한 경우
			// NodeList(4) [li#one.red, li#two.red, li#three.red, li#four]

			elem.childNodes[1].className = 'blue';
		}

		//형제노드 접근법
		var elem = document.querySelector('ul');

		console.log(elem.childNodes);
		// HTML의 공백을 제거한 경우
		// NodeList(4) [li#one.red, li#two.red, li#three.red, li#four]

		// first Child
		elem.firstChild.className = 'blue';
		// 2nd Child
		elem.firstChild.nextSibling.className = 'blue';
		// 3rd Child
		elem.lastChild.previousSibling.className = 'blue';
		// last Child
		elem.lastChild.className = 'blue';
	</script>
</body>
</html>