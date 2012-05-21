<%@ page contentType="text/html;charset=Windows-31J" %>
<html>
<head>
<title>アンケート結果</title>
</head>
<body>
<h1>アンケート結果</h1>
<%
switch (Integer.parseInt(request.getParameter("food"))) {
	case 3  : out.println("僕も大好きです");break;
	case 2  : out.println("まぁまぁですね");break;
	case 1  : out.println("この世の食べ物とも思えない");break;
	default : out.println("！？？？");break;
}
%>
</body>
</html>
