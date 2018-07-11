<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="pc.DTO.PayDTO" %>
<%@ page import="pc.payDAO.PayDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>payList</title>
<style>

	#ContentCenter{
		margin-left: 50px;
		margin-top : 120px;
	}
	#title1 {
		position :relative;
		left : 230px;
		font-size: 30px;
		margin: 15px;
		font-family: "맑은 고딕";
		font-weight: bold;
		margin-bottom: 30px;
		color : orange;
	}
	.timeSubBtn{
		position: relative;
		top : -10px;
		left: -310px;
		width : 0px;
	}
	.tableDiv {
	 	float: left;
	}
	.clear {
		clear: both;
	}

	
	/* 버튼 이미지, 이미지 크기, 폰트 색, box위치  */
	.paybox {
	background-image :url("../image/btn.png");
	background-size : 330px 200px;
	background-repeat :no-repeat;
	width : 340px;
	height : 170px;
	position:relative;
	background-position: center;
	color : #ffffff;
	}
	
	
	/* 시간, 가격의 폰트 크기 조절과 위치 조절  */
	.price1 {
		position:relative;
		left: 120px; 
		top:40px;	
		font-weight: bold;
		font-size: 30px;
	
	}
	.price2 {
		position:relative;
		left: 130px; 
		top:40px;
		font-size: 23px;
	}

	/* submit 버튼 크기 조절  및 투명도 조절 */
	#btn {
		padding : 55px 120px;
		opacity: 0 ;
	}
	
	
	
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
	ArrayList<PayDTO> arPayList2 = payDao.payList2();
	int addTime = payDao.userHaveTime(userId);
%>
	<div id = "ContentCenter">
		<div id="title1">정액제요금/가격</div>
	
<!-- @ 1번째 테이블 -->
		<div class = "tableDiv">
		<table>
<%
	for(int i=0 ; i<arPayList.size() ; i++){
		PayDTO payDto = arPayList.get(i);
		int time = payDto.getPaymentTime();
		System.out.println(time+"<<<<time");
		%>
			<tr>
				<td>
					<div class="paybox">
						<div class="price1"><%= payDto.getPaymentName() + "원"%></div>
						<div class="price2">
						<%
							if(time<60){
								out.print((time%60)+"분");
							}else if(time%60!=0){
								out.print((time/60)+"시간 "+(time%60)+"분");
							}else{
								out.print((time/60)+"시간 ");
							}
						%>
						</div>
					</div>
				</td>
		
				<%
 				if(userId == null) {
					
 				}else{
 				%>
				<td>
					<div class="timeSubBtn">
						<form action="<%=request.getContextPath()%>/pay/payTimeGet.jsp" method="post" id="f">
							<input type="hidden" name="time" value="<%= payDto.getPaymentTime() %>">
							<input type="hidden" name="id" value="id001">
							<button type="submit" id="btn"></button>
						</form>
					</div>	
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



<!-- @ 2번째 테이블 -->
	<div class = "tableDiv">
		<table>
<%
	for(int i=0 ; i<arPayList2.size() ; i++){
		PayDTO payDto = arPayList2.get(i);
		int time = payDto.getPaymentTime();
		System.out.println(time+"<<<<time");
		%>
			<tr>
				<td>
					<div class="paybox">
						<div class="price1"><%= payDto.getPaymentName() + "원"%></div>
						<div class="price2">
						<%
							if(time<60){
								out.print((time%60)+"분");
							}else if(time%60!=0){
								out.print((time/60)+"시간 "+(time%60)+"분");
							}else{
								out.print((time/60)+"시간 ");
							}
						%>
						</div>
					</div>
				</td>
		
				<%
 				if(userId == null) {
					
 				}else{
 				%>
				<td>
					<div class="timeSubBtn" id="sub">
						<form action="<%=request.getContextPath()%>/pay/payTimeGet.jsp" method="post" id="f">
							<input type="hidden" name="time" value="<%= payDto.getPaymentTime() %>">
							<input type="hidden" name="id" value="id001">
							<button type="submit" id="btn"></button>
						</form>
					</div>	
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
	</div>
	


</body>
</html>