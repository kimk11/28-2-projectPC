<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "pc.userDAO.UserDAO"%>

<!DOCTYPE html>

<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="userDto" class="pc.DTO.UserDTO"/>
<jsp:setProperty name="userDto" property="*"/>

<%
UserDAO userdao = new UserDAO();

int check = userdao.userIdCheck(userDto);
if(check==0){
	userdao.userInsert(userDto);
	response.sendRedirect(request.getContextPath() + "/user/userList.jsp");
}else{
%>
	<script type="text/javascript">
		alert('아이디가 중복됩니다.');
		history.go(-1);
	</script>
<%
}





%>
