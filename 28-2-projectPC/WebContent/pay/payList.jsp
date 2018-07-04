<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="pc.DTO.PayDTO" %>
<%@ page import="pc.payDAO.PayDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	PayDAO payDao = new PayDAO();
	ArrayList<PayDTO> arPayList = payDao.payList();
	
	
%>
	<div>
		<table>
			<tr>
				<th>������ ���</th><th>�ð�</th>
			</tr>
<%
	for(int i=0 ; i<arPayList.size() ; i++){
		PayDTO payDto = arPayList.get(i);
		int time = payDto.getPaymentTime();
		%>
			<tr>
				<td><%= payDto.getPaymentName() %></td>
				<td>
					<%
						if(time<60){
							out.print((time%60)+"��");
						}else if(time%60!=0){
							out.print((time/60)+"�ð� "+(time%60)+"��");
						}else{
							out.print((time/60)+"�ð� ");
						}
					%>
				</td>
			</tr>
		<%
	}
%>
		</table>
	</div>



</body>
</html>