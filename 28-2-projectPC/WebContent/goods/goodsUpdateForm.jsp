<!-- 2018.07.04 ������ -->
<!-- payUpdateForm.jsp -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="pc.goodsDAO.GoodsDAO" %>
<%@ page import ="pc.DTO.GoodsDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ǰ ����</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
int code = Integer.parseInt(request.getParameter("code"));
System.out.println(code);
GoodsDAO goodsDao = new GoodsDAO();
GoodsDTO goodsDto = goodsDao.SelectforUpdate(code);

%>
		<h1>��ǰ ���� ����</h1>
		<form action="<%= request.getContextPath() %>/user/userUpdateAction.jsp" method = "post">
			<table border = "1">
				<tr>
					<td>��ǰ�ڵ�</td>
					<td><input type = "text" name = goodsCode value = "<%=code%>" readonly></td>
				</tr>
				<tr>
					<td>��ǰ��</td>
					<td><input type = "text" name = goodsName value = "<%= goodsDto.getGoodsName() %>"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type = "text" name = goodsPrice value = "<%= goodsDto.getGoodsPrice()%>"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type = "text" name = goodsCate value = "<%= goodsDto.getGoodsCate()%>" ></td>
				</tr>
				<tr>
					<td>��ϳ�¥</td>
					<td><input type = "text" name = goodsDate value = "<%=goodsDto.getGoodsDate() %>"></td>
				</tr>
			</table>
			<div>
				<input type = "submit" value = "��ǰ ���� ����">
			</div>
		</form>
</body>
</html>