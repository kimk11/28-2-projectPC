<!-- 2018.06.29 ������  -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="pc.goodsDAO.GoodsDAO" %>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<jsp:useBean id="g" class="pc.DTO.GoodsDTO"></jsp:useBean> 
<!-- import ��Ȱ ��Ű�� memberŬ���� �� ��� Ŭ���� ���� ���� ���� ȣ�� -->
<jsp:setProperty property="*" name="g"/> <!-- * �Է� ������ŭ ȣ��  -->
<!-- ������Ƽ�� = ����������  -->
<%
	GoodsDAO goods = new GoodsDAO();
	goods.insertGoods(g);
	

	
%>