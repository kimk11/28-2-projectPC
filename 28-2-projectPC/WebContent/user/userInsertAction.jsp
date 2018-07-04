<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "pc.userDAO.UserDAO"%>

<!DOCTYPE html>

<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="userDto" class="pc.DTO.UserDTO"/>
<jsp:setProperty name="userDto" property="*"/>

<%
UserDAO userdao = new UserDAO();
userdao.userInsert(userDto);
%>