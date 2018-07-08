<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.seatDAO.SeatDAO" %>
<%@ page import="pc.userDAO.UserDAO" %>
<%@ page import="pc.DTO.UserDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/seatList.css" />

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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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
								<div class="seatNo"><%= seatNo %></div>
								<div class="black">x</div>
						<%
							}else{
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String info= userDto.getUserId()+"<br><br>"+userDto.getUserName()+"<br><br>"+userDao.userGetTime(userDto);
						%>
								<div class="seatNo2"><%= seatNo %></div>
								<div class="seatInfo"><%= info %></div>
								<form action = "<%= request.getContextPath() %>/seat/seatUpdateAction.jsp" method = "post">
									<input type = "hidden" name = "userId" value = "<%=userDto.getUserId()%>">
									<button type="submit" class="btn">종료</button>
								</form>
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