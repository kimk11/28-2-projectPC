<!-- 2018.07.04 ������ -->
<!-- goodsList.jsp -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.goodsDAO.GoodsDAO" %>
<%@ page import="pc.DTO.GoodsDTO" %>
<%@page import="java.util.ArrayList"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<jsp:useBean id="g" class="pc.DTO.GoodsDTO"></jsp:useBean> 
<!-- import ��Ȱ ��Ű�� memberŬ���� �� ��� Ŭ���� ���� ���� ���� ȣ�� -->
<jsp:setProperty property="*" name="g"/> <!-- * �Է� ������ŭ ȣ��  -->
<!-- ������Ƽ�� = ����������  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ǰ ��ȸ ����Ʈ</title>
<style>
	table, tr, td, th{
		border : solid 1px #cccccc;
		border-collapse: collapse;
	}
</style>
</head>
<body>
<%

	/* ����¡ �۾� */
	int currentPage = 1; //����������
	int pagePerRow = 5; //�� �������� ���� row ��
	if (request.getParameter("currentPage") != null) {
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
	}
	
	
	int startRow = (currentPage - 1) * pagePerRow;
	int endRow = startRow + (pagePerRow - 1);
	
	GoodsDAO goodsDao = new GoodsDAO();
	ArrayList<GoodsDTO> arGoodsList = goodsDao.selectGoods(startRow, pagePerRow);
	int totalRow = goodsDao.goodsCount();
	if (endRow	> arGoodsList.size()-1) {
		endRow = arGoodsList.size()-1;
	}
%>
	<!-- ��ǰ ����Ʈ ���̺� -->
	<h2>��ǰ ��ȸ ����Ʈ</h2>
	<table>
		<tr>
			<th>��ǰ�ڵ�</th>
			<th>��ǰ��</th>
			<th>����</th>
			<th>����</th>
			<th>��ϳ�¥</th>
			<th>����</th>
			<th>����</th>
		</tr>
<%	
	/* ���̺� �ݺ��� */
	for(int i=0; i<arGoodsList.size(); i++){
		 GoodsDTO goodsDto = arGoodsList.get(i);
%>
		<tr>
			<td><%=goodsDto.getGoodsCode()%></td>
			<td><%=goodsDto.getGoodsName() %></td>
			<td><%=goodsDto.getGoodsPrice() %></td>
			<td><%=goodsDto.getGoodsCate() %></td>
			<td><%=goodsDto.getGoodsDate() %></td>
			<td><a href="goodsUpdateForm.jsp?code=<%=goodsDto.getGoodsCode()%>">����</a></td>
			<td><a href="goodsDeleteAction.jsp?code=<%=goodsDto.getGoodsCode()%>">����</a></td>
		</tr>
<%
}
%>
	</table>
	
	<%
		if (currentPage > 1) {
	%>
	<a href="./goodsList.jsp?currentPage=<%=currentPage - 1%>">����</a>
	<%
		}

	int lastPage = (totalRow-1) / pagePerRow;
	if ((totalRow-1) % pagePerRow != 0) {
		lastPage++;
	}
		if (currentPage < lastPage) {
	%>
	<a href="./goodsList.jsp?currentPage=<%=currentPage + 1%>">����</a>
	<%
		}

	%>
	
	
</body>
</html>