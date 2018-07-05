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
	<h2>상품 수정</h2>
	<form action="./goodsUpdateAction.jsp" method="post">
		<label>상품코드 :</label>
		<input type="text" value="<%=code%>" name="goodsCode"> <br>
		<label>상 품 명 :</label>
		<input type="text" value="<%= goodsDto.getGoodsName() %>" name="goodsName"><br>
		<label>가　　격 :</label>
		<input type="text" value="<%= goodsDto.getGoodsPrice()%>" name="goodsPrice"><br>	
		<label>종　　류 :</label>
		<select name="goodsCate">
			<option value="과자">과자</option>
			<option value="음료">음료</option>
			<option value="간식">간식</option>
			<option value="식품">식품</option>
		</select><br>
		<label>등록날짜 :</label>
		<span><%=goodsDto.getGoodsDate() %></span><br>
		<button type ="submit">등록</button>
	</form>
</body>
</html>