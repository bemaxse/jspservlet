<%@ page contentType="text/html;charset=Windows-31J" %>
<%!
String[] names = {"松岡", "薄井", "本多", "川村", "日尾"};
%>
<html>
<head>
<title>みんなにこんにちは！</title>
</head>
<body>
<h1>みんなにこんにちは！</h1>
<%
int i;
int count = names.length;
for(i=0;i<count;i++){
	out.println("<p>こんにちは、" + names[i] + "さん！</p>");
}
%>
</body>
</html>
