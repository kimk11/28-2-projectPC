<!-- 2018.07.04 송유빈 -->
<!-- goodsSearchList.jsp -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.goodsDAO.GoodsDAO"%>
<%@ page import="pc.DTO.GoodsDTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("euc-kr");%>
<!DOCTYPE html>
<jsp:useBean id="g" class="pc.DTO.GoodsDTO"></jsp:useBean> 
<!-- import 역활 패키지 member클래스 및 멤버 클래스 통해 선언 생성 호출 -->
<jsp:setProperty property="*" name="g"/> <!-- * 입력 개수만큼 호출  -->
<!-- 프로퍼티명 = 전역변수명  -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>goodsSearchList</title>
<style>
table {
	margin: 0 auto;
}
</style>
</head>
<%-- 	<%@ include file="../AllSearch/AllSearch.jsp" %><br><br> --%>
	<%@ include file = "../goods/goodsSearchForm.jsp"%><br><br>

<body>
	<%
		/* 페이징 작업 */
		int currentPage = 1; //현재페이지
		int pagePerRow = 5; //한 페이지에 나올 row 수
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
		String all = request.getParameter("all"); //전체리스트
		String goods1 = request.getParameter("goods1"); //과자
		String goods2 = request.getParameter("goods2"); //음료
		String goods3 = request.getParameter("goods3"); //간식
		String goods4 = request.getParameter("goods4"); //식품

		int startRow = (currentPage - 1) * pagePerRow;
		int endRow = startRow + (pagePerRow - 1);

		GoodsDAO goodsDao = new GoodsDAO();
		ArrayList<GoodsDTO> arGoodsList = goodsDao.selectGoods(startRow, pagePerRow, sk, sv);
		int totalRow = goodsDao.goods1Count(sk, sv);
		if (endRow > arGoodsList.size() - 1) {
			endRow = arGoodsList.size() - 1;
		}
	%>
	<!-- 상품 리스트 테이블 -->

	<table border = "1">
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
			for (int i = 0; i < arGoodsList.size(); i++) {
				GoodsDTO goodsDto = arGoodsList.get(i);
		%>
		<tr>
			<td><%=goodsDto.getGoodsCode()%></td>
			<td><%=goodsDto.getGoodsName()%></td>
			<td><%=goodsDto.getGoodsPrice()%></td>
			<td><%=goodsDto.getGoodsCate()%></td>
			<td><%=goodsDto.getGoodsDate()%></td>
			<td><a href = "<%= request.getContextPath() %>/goods/goodsUpdateForm.jsp?code=<%=goodsDto.getGoodsCode()%>">수정</a></td>
			<td><a href = "<%= request.getContextPath() %>/goods/goodsDeleteAction.jsp?code=<%=goodsDto.getGoodsCode()%>">삭제</a></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		if (currentPage > 1) {
	%>
	<a
		href="./managerAllSearch.jsp?currentPage=<%=currentPage - 1%>&sk=<%=sk%>&sv=<%=sv%>&search=상품검색">이전</a>
	<%
		}

		int lastPage = (totalRow - 1) / pagePerRow;
		if ((totalRow - 1) % pagePerRow != 0) {
			lastPage++;
		}
		if (currentPage < lastPage) {
	%>

	<a
		href="./managerAllSearch.jsp?currentPage=<%=currentPage + 1%>&sk=<%=sk%>&sv=<%=sv%>&search=상품검색">다음</a>
	<%
		}
	%>

</body>
</html>
