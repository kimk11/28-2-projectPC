<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.seatDAO.SeatDAO" %>
<%@ page import="pc.userDAO.UserDAO" %>
<%@ page import="pc.DTO.UserDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/pcseatChoice.css" />

<style type="text/css">
.black2 {
	position: relative;
	top:45px;
	left:37px;
	color: blue;
	font-size: 40px
}
.black3 {
	position: relative;
	top:45px;
	left:37px;
	color: red;
	font-size: 40px
}
</style>
</head>
<body>
<div>
		<table>
			<tr>
				<td>
					<div class="seatbox">
						<%
							int seatNo=1;
							SeatDAO seatDao = new SeatDAO();
							int check = seatDao.seatCheck(seatNo);
							
							if(check==0){
						%>
								<span class="seatNo"><%= seatNo %></span>
								<span class="black">o</span>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit">�α���</button>
								</form>
						<%
							}else{
						%>
								<span class="seatNo"><%= seatNo %></span>
								<span class="black1">x</span>
						<%
							}
						%>
					</div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=2;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black1">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatboxblank"></div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=3;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black1">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=4;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black1">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=5;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black1">x</span>
								<%
									}
								%>
					</div>
				</td>
			</tr>
			
			<tr>
				<td>
					<div class="seatbox">
						<%
							seatNo=6;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black1">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=7;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black1">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatboxblank"></div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=8;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black1">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=9;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black1">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=10;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black2">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black3">x</span>
								<%
									}
								%>
					</div>
				</td>
			</tr>
			
			<tr>
				<td>
					<div class="seatbox">
						<%
							seatNo=11;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black2">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black3">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=12;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black2">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black3">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatboxblank"></div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=13;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black2">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black3">x</span>
								<%
									}
								%>
					</div>
				</td>	
				<td>
					<div class="seatbox">
						<%
							seatNo=14;
							check = seatDao.seatCheck(seatNo);
							
							if(check==0){
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black2">o</span>
										<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
											<input type="hidden" name="seatNo" value="<%= seatNo %>">
											<button type="submit">�α���</button>
										</form>
								<%
									}else{
								%>
										<span class="seatNo"><%= seatNo %></span>
										<span class="black3">x</span>
								<%
									}
								%>
					</div>
				</td>	
			</tr>
		</table>
	</div>

</body>
</html>