<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>AllSearch</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/orderGoodsClick.css" />

</head>
<body>
	<button type="button" id="goods" class="button lightGrey rounded">상품검색</button>
	<button type="button" id="user" class="button lightGrey rounded">회원검색</button>
		
<script type="text/javascript">
	var goods = document.getElementById('goods');
	var user = document.getElementById('user');
	var home = document.getElementById('home');
	
	goods.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/AllSearch/AllSearchList.jsp?search=상품검색';
	});
	
	user.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/AllSearch/AllSearchList.jsp?search=회원검색';
	});
	

</script>
	
</body>
</html>