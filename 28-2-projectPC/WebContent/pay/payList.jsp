<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="pc.DTO.PayDTO" %>
<%@ page import="pc.payDAO.PayDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	.paybox {
	position:relative;
	background-image :url("file:///C:/Users/Administrator/git/28-2-projectPC/28-2-projectPC/WebContent/image/btn.png");
	margin-left: 20px;
	margin-top: 20px;
</style>
</head>
<body>
<%	
	String userId = (String)session.getAttribute("sessionId");
	String userName = (String)session.getAttribute("sessionName");
	System.out.println(userId+"<--userId");
	System.out.println(userName+"<--userName");
	PayDAO payDao = new PayDAO();
	ArrayList<PayDTO> arPayList = payDao.payList();
	int addTime = payDao.userHaveTime(userId);
%>
	<div>
		<table>
			<tr>
				<th>정액제 요금</th><th>시간</th>
			</tr>
<%
	for(int i=0 ; i<arPayList.size() ; i++){
		PayDTO payDto = arPayList.get(i);
		int time = payDto.getPaymentTime();
		System.out.println(time+"<<<<time");
		%>
			<tr>
			<div class="paybox">
				<td><%= payDto.getPaymentName() %></td>
				<td>
					<%
						if(time<60){
							out.print((time%60)+"분");
						}else if(time%60!=0){
							out.print((time/60)+"시간 "+(time%60)+"분");
						}else{
							out.print((time/60)+"시간 ");
						}
					%>

				</td>
			</div>
				<%
 				if(userId == null) {
					
 				}else{
 				%>
				<td>
					<form action="<%=request.getContextPath()%>/pay/payTimeGet.jsp" method="post" id="f">
						<input type="hidden" name="time" value="<%= payDto.getPaymentTime() %>">
						<input type="hidden" name="id" value="id001">
						<button type="submit" id="btn">시간 추가</button>
					</form>
				</td>
				
				<%
 				}
				%>
			</tr>
		<%
	}
%>
		</table>
	</div>



</body>
</html>