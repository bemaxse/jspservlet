<%@ page contentType="text/html;charset=Windows-31J" %>
<html>
<head>
<title>���\������Ă݂悤</title>
</head>
<body>
<h1>���\</h1>
<table border="1">
<tr>
	<th></th><th>1</th><th>2</th><th>3</th><th>4</th>
	<th>5</th><th>6</th><th>7</th><th>8</th><th>9</th>
</tr>
<%
for(int i=1;i<10;i++){
	out.println("<tr>");
	out.println("<th>" + i + "</th>");
	// �����̃��[�v�̊J�n
	for(int j=1;j<10;j++){
		if(i*j>40){break;}
		out.println("<td align='right' width='20'>" + (i*j) + "</td>");
	}
	// �����̃��[�v�̏I��
	out.println("</tr>");
}
%>
</table>
</body>
</html>
