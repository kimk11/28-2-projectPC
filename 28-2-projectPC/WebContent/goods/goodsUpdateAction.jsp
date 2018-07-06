<!-- 2018.07.04 송유빈 -->
<!-- goodsUpdateAction.jsp -->

<%@page import="pc.goodsDAO.GoodsDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<jsp:useBean id="g" class="pc.DTO.GoodsDTO"></jsp:useBean> 
<!-- import 역활 패키지 member클래스 및 멤버 클래스 통해 선언 생성 호출 -->
<jsp:setProperty property="*" name="g"/> <!-- * 입력 개수만큼 호출  -->
<!-- 프로퍼티명 = 전역변수명  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상품 수정 처리 화면</title>
</head>
<body>
<%
	GoodsDAO goodsDao = new GoodsDAO();
	goodsDao.updateGoods(g);

	response.sendRedirect(request.getContextPath()+"/managerAllSearch.jsp");
%>
</body>
</html>