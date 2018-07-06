<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/button.css" />
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/loginBrowser.css" />

</head>
<body>
	<div id="wrapper">
	
		<div id="topright">
<!-- 		회원정보 -->
			<div id="topInfo">
				<jsp:include page="../browser/loginUserInfo.jsp"></jsp:include>
			</div>
		</div>
		
		<div id="orderbtn">
<!-- 		주문 버튼 -->
			<div class="bluelight">
				<a href="<%= request.getContextPath() %>/browser/loginBrowserOrder.jsp">주문하기</a>
			</div>
		</div>
	</div>
</body>
</html>