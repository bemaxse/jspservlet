<%@ page contentType="text/html;charset=Windows-31J" %>
<html>
<head>
<title>�A���P�[�g����</title>
</head>
<body>
<h1>�A���P�[�g����</h1>
<%
switch (Integer.parseInt(request.getParameter("food"))) {
	case 3  : out.println("�l����D���ł�");break;
	case 2  : out.println("�܂��܂��ł���");break;
	case 1  : out.println("���̐��̐H�ו��Ƃ��v���Ȃ�");break;
	default : out.println("�I�H�H�H");break;
}
%>
</body>
</html>
