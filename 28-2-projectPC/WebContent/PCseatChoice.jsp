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
table {
	margin: 0 auto;
}
</style>
</head>
<body>
<div>
		<table>
			<tr>
				<td>
					<div class="seatbox clearfix">
						<%
							int seatNo=1;
							SeatDAO seatDao = new SeatDAO();
							int check = seatDao.seatCheck(seatNo);
							
							if(check==0){
						%>
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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
								<div class="seatCheck_o">사용가능</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_o">o</div>
								<form action="<%= request.getContextPath() %>/seat/seatLogin.jsp" method="post">
									<input type="hidden" name="seatNo" value="<%= seatNo %>">
									<button type="submit" class="seatLogin">로그인</button>
								</form>
						<%
							}else{
						%>
								<div class="seatCheck_x">사용중</div>
								<div class="seatNo"><%= seatNo %></div>
								<div class="black_x">x</div>
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