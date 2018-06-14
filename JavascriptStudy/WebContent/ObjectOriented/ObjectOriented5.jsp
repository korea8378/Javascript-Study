<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ObjectOriented</title>
</head>
<script>
	//javascript에서의 캡슐화는 closure를 이용하여 구현이 가능하다.
	//즉시 실행함수로 구현하여 외부에서 수정이 불가능하게 만들어준다.
	//생성자 함수안에 생성자 함수를 하나 더만들어 리턴해준다.
	//메소드만 리턴할경우 생성자함수의 프로토타입에 접근이 불가능하기때문에
	//상속의 개념이 깨진다. 그렇기때문에 변수들은 var=>private
	//this=>public으로 선언을 하고
	//내부에서 생성자 함수를 만들어 이 변수들을 접근 할수 있게 구현한후
	//retrun을 통하여 내부에서 만들어진 생성자 함수를 반환한다.
	//상속과 캡슐화 두개를 구현 가능 해진다.
	var Person = function() {
		var name;

		var F = function(arg) {
			name = arg ? arg : '';
		};

		F.prototype = {
			getName : function() {
				return name;
			},
			setName : function(arg) {
				name = arg;
			}
		};

		return F;
	}();

	var me = new Person('Lee');

	console.log(Person.prototype === me.__proto__);
	console.log(me.getName());
	me.setName('Kim')
	console.log(me.getName());
</script>
<body>
	<h2>"관리자 도구로 확인하시오"</h2><br>
	<h2>"객체지향프로그래밍 캡슐화 모듈화"</h2>
</body>
</html>