<%@ page contentType="text/html;charset=Windows-31J" %>
<html>
<head>
<title>‹ã‹ã•\‚ğì‚Á‚Ä‚İ‚æ‚¤</title>
</head>
<body>
<h1>‹ã‹ã•\</h1>
<table border="1">
<tr>
	<th></th><th>1</th><th>2</th><th>3</th><th>4</th>
	<th>5</th><th>6</th><th>7</th><th>8</th><th>9</th>
</tr>
<%
int i=1,j=1;
do{
	out.println("<tr>");
	out.println("<th>" + i + "</th>");
	j=1;
	do{
		if(i*j>40){break;}
		out.println("<td align='right' width='20'>" + (i*j) + "</td>");
		j++;
	}while(j<10);
	out.println("</tr>");
	i++;
}while(i<10);
%>
</table>
</body>
</html>
