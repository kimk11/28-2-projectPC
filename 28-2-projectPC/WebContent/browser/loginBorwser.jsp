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
<!-- 		ȸ������ -->
			<div id="topInfo">
				<jsp:include page="../browser/loginUserInfo.jsp"></jsp:include>
			</div>
		</div>
		
		<div id="orderbtn">
<!-- 		�ֹ� ��ư -->
			<div class="bluelight">
				<a href="<%= request.getContextPath() %>/browser/loginBrowserOrder.jsp">�ֹ��ϱ�</a>
			</div>
		</div>
	</div>
	<a href="<%= request.getContextPath() %>/seat/seatLogout.jsp">�α׾ƿ�</a>
	<a href="<%= request.getContextPath() %>/index.jsp">Ȩ���� ����</a>
	<a href="<%= request.getContextPath() %>/PCseatChoice.jsp">�¼� �������� ����</a>
</body>
</html>