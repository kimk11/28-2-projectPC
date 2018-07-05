<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/orderGoodsClick.css" />

</head>
<body>
	<button type="button" id="goodsAll" class="button lightGrey rounded">상품검색</button>
	<button type="button" id="goods1" class="button lightGrey rounded">회원검색</button>
	<button type="button" id="goods2" class="button lightGrey rounded">주문내역검색</button>
	
<script type="text/javascript">
	var goods1 = document.getElementById('goodsAll');
	var goods2 = document.getElementById('goods1');
	var goods3 = document.getElementById('goods2');
	
	goods1.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/seat/seatAllSearchList.jsp?goods=상품검색';
	});
	
	goods2.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/seat/seatAllSearchList.jsp?user=회원검색';
	});
	
	goods3.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/seat/seatAllSearchList.jsp?order=주문내역검색';
	});
</script>
	
</body>
</html>