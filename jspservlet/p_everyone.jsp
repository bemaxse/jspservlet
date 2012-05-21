<%@ page contentType="text/html;charset=Windows-31J" %>
<%!
String[] msgs = {"おはようございます", "こんにちは", "こんばんは"};
%>
<html>
<head>
<title>「JSP」にご挨拶</title>
</head>
<body>
<h1>「JSP」にご挨拶</h1>
<%
int i;
for(i=0;i<msgs.length;i++){
	out.println("<p>" + msgs[i] + "、「JSP」！</p>");
}
%>
</body>
</html>
