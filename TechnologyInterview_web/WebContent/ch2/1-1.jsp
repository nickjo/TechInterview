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
	
	/* function�� ȣ�� �ϴ� ������ �ܺ� �Լ��� i ���� 5 �̹Ƿ� 
		������ 5�� ���� ��� �ϰ� �ȴ�.
	*/
 
 	for(var i=0; i < 5; i++){
		result[i] = function(){
			return i;
		};
	} 
	
	/* �ܺ��Լ� ���� �� i���� �Ű������� �Ͽ� �����ϹǷ� �����Լ����� �ܺ��Լ��� �Ű������� �����ϹǷ�
		0~4���� ����� �ȴ�.
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