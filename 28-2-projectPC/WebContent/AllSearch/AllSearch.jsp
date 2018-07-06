<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>AllSearch</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/orderGoodsClick.css" />

</head>
<body>
	<button type="button" id="goodsAll" class="button lightGrey rounded">상품검색</button>
	<button type="button" id="goods1" class="button lightGrey rounded">회원검색</button>
		
<script type="text/javascript">
	var goods1 = document.getElementById('goodsAll');
	var goods2 = document.getElementById('goods1');
	var goods3 = document.getElementById('goods2');
	
	goods1.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/AllSearch/AllSearchList.jsp?search=상품검색';
	});
	
	goods2.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/AllSearch/AllSearchList.jsp?search=회원검색';
	});
</script>
	
</body>
</html>