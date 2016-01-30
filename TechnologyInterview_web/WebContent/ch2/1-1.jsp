<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function createFunctions(){
	var result = new Array();
	
	/* function을 호출 하는 순간의 외부 함수의 i 값은 5 이므로 
		동일한 5의 값을 출력 하게 된다.
	*/
 
 	for(var i=0; i < 5; i++){
		result[i] = function(){
			return i;
		};
	} 
	
	/* 외부함수 생성 후 i값을 매개변수로 하여 실행하므로 내부함수에서 외부함수의 매개변수를 리턴하므로
		0~4까지 출력이 된다.
	*/
	/* 
	for(var i=0; i < 5; i++){
		result[i] = function(num){
			return function(){
				return num;
			}
		}(i);
	}
	 */
	
	return result;
}
var result = createFunctions();

for( var index in result){
	alert(result[index]());
}
</script>
</head>
<body>

</body>
</html>