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
	String userId = (String)session.getAttribute("sessionId");
	String userName = (String)session.getAttribute("sessionName");
	PayDAO payDao = new PayDAO();
	ArrayList<PayDTO> arPayList = payDao.payList();

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
		%>
			<tr>
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
				<%
// 				if(userId == null && userName == null) {
					
// 				}else{
 				%>
				<td>
					<form action="<%=request.getContextPath()%>/pay/payTimeGet.jsp" method="post" id="f">
						<input type="hidden" name="time" value="<%= time %>">
						<input type="hidden" name="id" value="id001">
						<button type="button" id="btn">시간 추가</button>
					</form>
				</td>
				
				<%
// 				}
				%>
			</tr>
		<%
	}
%>
		</table>
	</div>
<script>
	var userTime = document.getElementById("userTime");
	var btn = document.getElementById("btn");
	btn.addEventListener("click", function() {
		document.forms.f.submit();
	});
	

</script>


</body>
</html>