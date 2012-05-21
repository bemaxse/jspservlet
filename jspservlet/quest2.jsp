<%@ page contentType="text/html;charset=Windows-31J" %>
<html>
<head>
<title>アンケート結果</title>
</head>
<body>
<h1>アンケート結果</h1>
<%
String answer=request.getParameter("interest");
if(Integer.parseInt(answer) == 1){
	out.println("よかったぁ！");
} else {
	out.println("えぇ、なんでぇ？？？");
}
%>
</body>
</html>
