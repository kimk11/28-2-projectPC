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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

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

		<button type="button" id="homeBtn" class="btn">홈</button>
		<button type="button" id="backBtn" class="btn">이전</button>
	</div>
	
 	<script type="text/javascript"> 
	 	var homeBtn = document.getElementById('homeBtn');
		var backBtn = document.getElementById('backBtn');	
		
		homeBtn.addEventListener('click', function() {
			location.href='<%=request.getContextPath()%>/index.jsp';
		});
		backBtn.addEventListener('click', function() {
			history.go(-1);
		});
 	</script>
	
</body>
</html>