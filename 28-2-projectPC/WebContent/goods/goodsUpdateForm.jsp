<!-- 2018.07.04 송유빈 -->
<!-- payUpdateForm.jsp -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="pc.goodsDAO.GoodsDAO" %>
<%@ page import ="pc.DTO.GoodsDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상품 수정</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
int code = Integer.parseInt(request.getParameter("code"));
System.out.println(code);
GoodsDAO goodsDao = new GoodsDAO();
GoodsDTO goodsDto = goodsDao.SelectforUpdate(code);

%>
		<h1>상품 정보 수정</h1>
		<form action="<%= request.getContextPath() %>/user/userUpdateAction.jsp" method = "post">
			<table border = "1">
				<tr>
					<td>상품코드</td>
					<td><input type = "text" name = goodsCode value = "<%=code%>" readonly></td>
				</tr>
				<tr>
					<td>상품명</td>
					<td><input type = "text" name = goodsName value = "<%= goodsDto.getGoodsName() %>"></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type = "text" name = goodsPrice value = "<%= goodsDto.getGoodsPrice()%>"></td>
				</tr>
				<tr>
					<td>종류</td>
					<td><input type = "text" name = goodsCate value = "<%= goodsDto.getGoodsCate()%>" ></td>
				</tr>
				<tr>
					<td>등록날짜</td>
					<td><input type = "text" name = goodsDate value = "<%=goodsDto.getGoodsDate() %>"></td>
				</tr>
			</table>
			<div>
				<input type = "submit" value = "상품 정보 수정">
			</div>
		</form>
</body>
</html>