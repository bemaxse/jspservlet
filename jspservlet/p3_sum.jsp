<%@ page contentType="text/html;charset=Windows-31J" %>
<html>
<head>
<title>1�`100�̊Ԃ̊�����v����</title>
</head>
<body>
<h1>1�`100�̊Ԃ̊�����v����</h1>
<%
int result=0;
for(int i=1;i<=100;i++){
	if(i % 2 == 0){continue;}
	result += i;
}
out.println("���v�l�F" + result);
%>
</body>
</html>