<!-- 2018.07.04 ������ -->
<!-- goodsUpdateAction.jsp -->

<%@page import="pc.goodsDAO.GoodsDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<jsp:useBean id="g" class="pc.DTO.GoodsDTO"></jsp:useBean> 
<!-- import ��Ȱ ��Ű�� memberŬ���� �� ��� Ŭ���� ���� ���� ���� ȣ�� -->
<jsp:setProperty property="*" name="g"/> <!-- * �Է� ������ŭ ȣ��  -->
<!-- ������Ƽ�� = ����������  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ǰ ���� ó�� ȭ��</title>
</head>
<body>
<%
	GoodsDAO goodsDao = new GoodsDAO();
	goodsDao.updateGoods(g);

	response.sendRedirect(request.getContextPath()+"/managerAllSearch.jsp");
%>
</body>
</html>