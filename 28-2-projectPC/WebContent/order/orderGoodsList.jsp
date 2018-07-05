<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.goodsDAO.GoodsDAO"%>
<%@ page import="pc.DTO.GoodsDTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("euc-kr");%>
<!DOCTYPE html>
<jsp:useBean id="g" class="pc.DTO.GoodsDTO"></jsp:useBean> 
<!-- import ��Ȱ ��Ű�� memberŬ���� �� ��� Ŭ���� ���� ���� ���� ȣ�� -->
<jsp:setProperty property="*" name="g"/> <!-- * �Է� ������ŭ ȣ��  -->
<!-- ������Ƽ�� = ����������  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ǰ ��ȸ ����Ʈ</title>
<title>Insert title here</title>
<style>
table, tr, td, th {
	border: solid 1px #cccccc;
	border-collapse: collapse;
	margin:0 auto; 
}
</style>
</head>
<body>
	<div>
		<%
			/* ����¡ �۾� */
			int currentPage = 1; //����������
			int pagePerRow = 5; //�� �������� ���� row ��
			if (request.getParameter("currentPage") != null) {
				currentPage = Integer.parseInt(request.getParameter("currentPage"));
			}
	
			String sk = request.getParameter("sk");
			if(sk == null){
				sk = "";
			}
			String sv = request.getParameter("sv");
			if(sv == null){
				sv = "";
			}
			String all = request.getParameter("all"); //��ü����Ʈ
			String goods1 = request.getParameter("goods1"); //����
			String goods2 = request.getParameter("goods2"); //����
			String goods3 = request.getParameter("goods3"); //����
			String goods4 = request.getParameter("goods4"); //��ǰ
	
			int startRow = (currentPage - 1) * pagePerRow;
			int endRow = startRow + (pagePerRow - 1);
	
			GoodsDAO goodsDao = new GoodsDAO();
			ArrayList<GoodsDTO> arGoodsList = goodsDao.selectGoods(startRow, pagePerRow, sk, sv);
			int totalRow = goodsDao.goods1Count(sk, sv);
			if (endRow > arGoodsList.size() - 1) {
				endRow = arGoodsList.size() - 1;
			}
		%>
		<!-- ��ǰ ����Ʈ ���̺� -->
		<br><br>
		<h2>�ֹ� ���</h2>
		<br>
		<%@ include file="../order/orderSearch.jsp" %>
		<br>
		
		<br>
		<table>
			<tr>
				<th>��ǰ�ڵ�</th>
				<th>��ǰ��</th>
				<th>����</th>
				<th>����</th>
				<th>��ϳ�¥</th>
				<th>�ֹ�</th>
			</tr>
			
			<%
				/* ���̺� �ݺ��� */
				for (int i = 0; i < arGoodsList.size(); i++) {
					GoodsDTO goodsDto = arGoodsList.get(i);
			%>
			<tr>
				<td><%=goodsDto.getGoodsCode()%></td>
				<td><%=goodsDto.getGoodsName()%></td>
				<td><%=goodsDto.getGoodsPrice()%></td>
				<td><%=goodsDto.getGoodsCate()%></td>
				<td><%=goodsDto.getGoodsDate()%></td>
				<td><a>�ֹ�</a></td>
			</tr>
			<%
				}
			%>
		</table>
		<%
			if (currentPage > 1) {
		%>
		<a
			href="<%= request.getContextPath() %>/browser/loginBrowserOrder.jsp?currentPage=<%=currentPage - 1%>&sk=<%=sk%>&sv=<%=sv%>">����</a>
		<%
			}
	
			int lastPage = (totalRow - 1) / pagePerRow;
			if ((totalRow - 1) % pagePerRow != 0) {
				lastPage++;
			}
			if (currentPage < lastPage) {
		%>
	
		<a
			href="<%= request.getContextPath() %>/browser/loginBrowserOrder.jsp?currentPage=<%=currentPage + 1%>&sk=<%=sk%>&sv=<%=sv%>">����</a>
		<%
			}
		%>
	</div>
</body>
</html>
