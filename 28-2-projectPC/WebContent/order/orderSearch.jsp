<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/orderGoodsClick.css" />

</head>
<body>
	<button type="button" id="goodsAll" class="button lightGrey rounded">전체</button>
	<button type="button" id="goods1" class="button lightGrey rounded">과자</button>
	<button type="button" id="goods2" class="button lightGrey rounded">식품</button>
	<button type="button" id="goods3" class="button lightGrey rounded">음료</button>
	<button type="button" id="goods4" class="button lightGrey rounded">간식</button>
	
<script type="text/javascript">
	var goodsAll = document.getElementById('goodsAll');
	var goods1 = document.getElementById('goods1');
	var goods2 = document.getElementById('goods2');
	var goods3 = document.getElementById('goods3');
	var goods4 = document.getElementById('goods4');
	
	goodsAll.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=전체';
	});
	
	goods1.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=과자';
	});
	
	goods2.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=식품';
	});
	
	goods3.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=음료';
	});
	
	goods4.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=간식';
	});
</script>
	
</body>
</html>