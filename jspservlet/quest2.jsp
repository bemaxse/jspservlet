<%@ page contentType="text/html;charset=Windows-31J" %>
<html>
<head>
<title>�A���P�[�g����</title>
</head>
<body>
<h1>�A���P�[�g����</h1>
<%
String answer=request.getParameter("interest");
if(Integer.parseInt(answer) == 1){
	out.println("�悩�������I");
} else {
	out.println("�����A�Ȃ�ł��H�H�H");
}
%>
</body>
</html>
