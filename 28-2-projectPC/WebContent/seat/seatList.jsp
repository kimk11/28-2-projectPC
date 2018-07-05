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
					<div class="seatbox">
						<%
							int seatNo=2;
							SeatDAO seatDao = new SeatDAO();
							int check = seatDao.seatCheck(seatNo);
							
							if(check==0){
						%>
								<span class="seatNo"><%= seatNo %></span>
								<span class="black">x</span>
						<%
							}else{
								
								UserDTO userDto = seatDao.seatSelectUserInfo(seatNo);
								UserDAO userDao = new UserDAO();
								String userTime = userDao.userGetTime(userDto);
						%>
								<span class="seatNo"><%= seatNo %></span>
								<span class="seatId"><%= userDto.getUserId() %></span>
								<span class="seatName"><%= userDto.getUserName() %></span>
								<span class="seatTome"><%= userTime %></span>
						<%
							}
						%>
					</div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatboxblank"></div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>
			</tr>
			
			<tr>
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatboxblank"></div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>
			</tr>
			
			<tr>
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatboxblank"></div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>	
				<td>
					<div class="seatbox">
					</div>
				</td>	
			</tr>
		</table>
	</div>

</body>
</html>