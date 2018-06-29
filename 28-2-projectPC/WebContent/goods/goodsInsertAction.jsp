<!-- 2018.06.29 송유빈  -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import ="pc.goodsDAO.GoodsDAO" %>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<jsp:useBean id="g" class="pc.DTO.GoodsDTO"></jsp:useBean> 
<!-- import 역활 패키지 member클래스 및 멤버 클래스 통해 선언 생성 호출 -->
<jsp:setProperty property="*" name="g"/> <!-- * 입력 개수만큼 호출  -->
<!-- 프로퍼티명 = 전역변수명  -->
<%
	GoodsDAO goods = new GoodsDAO();
	goods.insertGoods(g);
	

	
%>