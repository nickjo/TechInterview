<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
/* Ŭ������ �ڹٽ�ũ��Ʈ���� �����̺��� ������ �Ҽ� �ְ� ���ش�.
   factory_movie �Լ��� return�� �ϴ� ���� ������� �ǹǷ�
   factory_movie �Լ��� ���� ������ title�� �����Ҽ� �ִ� �����
        �޼ҵ� ���� ���� �Լ��� ���̴�.
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
				alert("���ڿ��� �Է°����մϴ�.");
			}
		}
	}
}

ghost = factory_movie("Ghost");
matrix = factory_movie("matrix");

matrix.set_title(1234);
matrix.set_title("��Ʈ����");

alert(ghost.get_title());
alert(matrix.get_title());
</script>
</head>
<body>

</body>
</html>