<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Closure</title>
</head>

<body>
	<h2>"관리자 도구로 확인하시오"</h2>
	<br>
	<p>Settimeout을 이용한 Closure</p>
	<p>새로고침으로 다시 실행해 보세요</p>
	<script>
		var fade = function(node) { //외부함수
			// 자유변수
			var level = 1; 
			var step = function() { //내부함수
				var hex = level.toString(16); // 외부함수 변수인 level을 참조 하고있다.

				// hex: '1' ~ 'f'
				node.style.backgroundColor = '#ff' + hex; // 페이지의 바탕화면 색 조정

				if (level < 15) { // if문을 통한 검사를 한다.
					level += 1;
					setTimeout(step, 100); // seTimeout함수를 이용하여 외부함수가 종료된 뒤 내부함수를 호출하여 외부함수 변수에
										   // 접근을 가능하도록 하고있다(클로저)
				}
			};
			// setTimeout 호출 이후 fade 함수는 종료한다. 하지만 100ms 후 함수 step이 호출된다.
			// 즉 외부 함수 fade보다 내부 함수 step이 더 오래 유지된다.
			setTimeout(step, 100); // 
		};

		fade(document.body); // fade함수 호출
	</script>
</body>
</html>