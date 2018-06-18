<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DOM</title>
</head>
	<script type="text/javascript">
		//class의 이름으로 접근법
		//변경하고자 하는 값으로 접근 하게되면
		//실시간의 node의 상태를 변경하게 되므로
		//순차접근식(for문 0에서부터 시작시) 인덱스가 꼬여 제대로 반영되지를 못한다.
		//while문을 써서 요소의 수를 파악하여 반복문을 실행하거나
		//for문에서 역순으로 실행하여 값을 변경 시킨다.
		var elems = document.getElementsByClassName('red');
		var i = 0;
		while (elems.length > i) { // elems에 요소가 남아 있지 않을 때까지 무한반복
			elems[i].className = 'blue';
			// i++;
		}
		
		// querySelectorAll는 Nodelist(non-live)를 반환한다. IE8+
		// nodelist로 접근하면 순차적인 반복문 사용이 가능하다
		var elems = document.querySelectorAll('.red');
		for (var i = 0; i < elems.length; i++) {
		  elems[i].className = 'blue';
		}
		
		// HTMLCollection을 반환한다.
		var elems = document.getElementsByTagName('li');
		for (var i = 0; i < elems.length; i++) {
		  elems[i].className = 'blue';
		}
		
		// Nodelist를 반환한다.
		var elems = document.querySelectorAll('li.red');

		for (var i = 0; i < elems.length; i++) {
		  elems[i].className = 'blue';
		}
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"DOM 요소 접근법2"</h2>
</body>
</html>