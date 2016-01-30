<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
/* 클로져는 자바스크립트에서 프라이빗한 선언을 할수 있게 해준다.
   factory_movie 함수는 return을 하는 순간 사라지게 되므로
   factory_movie 함수의 지역 변수인 title에 접근할수 있는 방법은
        메소드 안의 내부 함수들 뿐이다.
*
*/
function factory_movie(title){
	return{
		get_title: function(){
			return title;
		},
		set_title: function(_title){
			if(typeof _title === "string"){
				title = _title;
			}else{
				alert("문자열만 입력가능합니다.");
			}
		}
	}
}

ghost = factory_movie("Ghost");
matrix = factory_movie("matrix");

matrix.set_title(1234);
matrix.set_title("매트릭스");

alert(ghost.get_title());
alert(matrix.get_title());
</script>
</head>
<body>

</body>
</html>