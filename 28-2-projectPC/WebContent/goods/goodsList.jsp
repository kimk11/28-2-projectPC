<!-- 2018.07.04 송유빈 -->
<!-- goodsList.jsp -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.goodsDAO.GoodsDAO" %>
<%@ page import="pc.DTO.GoodsDTO" %>
<%@page import="java.util.ArrayList"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<jsp:useBean id="g" class="pc.DTO.GoodsDTO"></jsp:useBean> 
<!-- import 역활 패키지 member클래스 및 멤버 클래스 통해 선언 생성 호출 -->
<jsp:setProperty property="*" name="g"/> <!-- * 입력 개수만큼 호출  -->
<!-- 프로퍼티명 = 전역변수명  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상품 조회 리스트</title>
<style>
	table, tr, td, th{
		border : solid 1px #cccccc;
		border-collapse: collapse;
	}
</style>
</head>
<body>
<%

	/* 페이징 작업 */
	int currentPage = 1; //현재페이지
	int pagePerRow = 5; //한 페이지에 나올 row 수
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
	<!-- 상품 리스트 테이블 -->
	<h2>상품 조회 리스트</h2>
	<table>
		<tr>
			<th>상품코드</th>
			<th>상품명</th>
			<th>가격</th>
			<th>종류</th>
			<th>등록날짜</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
<%	
	/* 테이블 반복문 */
	for(int i=0; i<arGoodsList.size(); i++){
		 GoodsDTO goodsDto = arGoodsList.get(i);
%>
		<tr>
			<td><%=goodsDto.getGoodsCode()%></td>
			<td><%=goodsDto.getGoodsName() %></td>
			<td><%=goodsDto.getGoodsPrice() %></td>
			<td><%=goodsDto.getGoodsCate() %></td>
			<td><%=goodsDto.getGoodsDate() %></td>
			<td><a href="goodsUpdateForm.jsp?code=<%=goodsDto.getGoodsCode()%>">수정</a></td>
			<td><a href="goodsDeleteAction.jsp?code=<%=goodsDto.getGoodsCode()%>">삭제</a></td>
		</tr>
<%
}
%>
	</table>
	
	<%
		if (currentPage > 1) {
	%>
	<a href="./goodsList.jsp?currentPage=<%=currentPage - 1%>">이전</a>
	<%
		}

	int lastPage = (totalRow-1) / pagePerRow;
	if ((totalRow-1) % pagePerRow != 0) {
		lastPage++;
	}
		if (currentPage < lastPage) {
	%>
	<a href="./goodsList.jsp?currentPage=<%=currentPage + 1%>">다음</a>
	<%
		}

	%>
	
	
</body>
</html>