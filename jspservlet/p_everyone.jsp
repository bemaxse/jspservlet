<%@ page contentType="text/html;charset=Windows-31J" %>
<%!
String[] msgs = {"���͂悤�������܂�", "����ɂ���", "����΂��"};
%>
<html>
<head>
<title>�uJSP�v�ɂ����A</title>
</head>
<body>
<h1>�uJSP�v�ɂ����A</h1>
<%
int i;
for(i=0;i<msgs.length;i++){
	out.println("<p>" + msgs[i] + "�A�uJSP�v�I</p>");
}
%>
</body>
</html>
