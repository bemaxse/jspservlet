<%@ page contentType="text/html;charset=Windows-31J" %>
<%!
String[] names = {"����", "����", "�{��", "�쑺", "����"};
%>
<html>
<head>
<title>�݂�Ȃɂ���ɂ��́I</title>
</head>
<body>
<h1>�݂�Ȃɂ���ɂ��́I</h1>
<%
int i;
int count = names.length;
for(i=0;i<count;i++){
	out.println("<p>����ɂ��́A" + names[i] + "����I</p>");
}
%>
</body>
</html>
