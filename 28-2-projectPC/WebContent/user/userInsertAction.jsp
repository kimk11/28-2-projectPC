<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "pc.userDAO.UserDAO"%>

<!DOCTYPE html>

<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="userdto" class="pc.DTO.UserDTO"/>
<jsp:setProperty name="userdto" property="*"/>

<%
UserDAO userdao = new UserDAO();
userdao.userInsert(userdto);
%>