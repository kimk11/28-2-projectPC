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
	<h2>��ǰ ����</h2>
	<form action="./goodsUpdateAction.jsp" method="post">
		<label>��ǰ�ڵ� :</label>
		<input type="text" value="<%=code%>" name="goodsCode"> <br>
		<label>�� ǰ �� :</label>
		<input type="text" value="<%= goodsDto.getGoodsName() %>" name="goodsName"><br>
		<label>�������� :</label>
		<input type="text" value="<%= goodsDto.getGoodsPrice()%>" name="goodsPrice"><br>	
		<label>�������� :</label>
		<select name="goodsCate">
			<option value="����">����</option>
			<option value="����">����</option>
			<option value="����">����</option>
			<option value="��ǰ">��ǰ</option>
		</select><br>
		<label>��ϳ�¥ :</label>
		<span><%=goodsDto.getGoodsDate() %></span><br>
		<button type ="submit">���</button>
	</form>
</body>
</html>