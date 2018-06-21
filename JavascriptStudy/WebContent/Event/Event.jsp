<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Event</title>
</head>
	<script type="text/javascript">
		//이벤트에 등록된 함수는 이벤트 발생시 수행된다.
		//이벤트 등록시 html태그 속성을 통하여 이벤트를 등록하면 안된다.
		//HTML과 Javascript는 관심사가 다르므로 혼용을 적극적으로 피해야 한다.
		//Level2 event Listener을 사용하여 등록한다.(addEventListener()사용)
		//onclick()이나 다른 함수를 이용하여 등록하게 되면 하나의 이벤트에 하나의 함수만 바인딩되는 단점이 존재
		//addEventListener()를 사용하면 하나의 이벤트에 여러개의 함수를 바인딩 가능하다
		var MIN_USER_NAME_LENGTH = 2; // 이름 최소 길이

		var elem = document.getElementById('username');
		var msg = document.getElementById('message');

		function checkUserNameLength(n) {
			if (elem.value.length < n) {
				msg.innerHTML = '이름은 ' + n + '자 이상이어야 합니다';
			} else {
				msg.innerHTML = '';
			}
		}

		elem.addEventListener('blur', function() {
			checkUserNameLength(MIN_USER_NAME_LENGTH);
		});
	</script>	
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"Event Event등록"</h2>

	<label for='username'>User name </label>
	<input type='text' id='username'>
</body>
</html>