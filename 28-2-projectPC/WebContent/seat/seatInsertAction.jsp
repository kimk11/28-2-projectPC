<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.seatDAO.SeatDAO" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	SeatDAO seatDao = new SeatDAO();
	int check = seatDao.seatCheck();
	int insertCheck = seatDao.seatInsert(check);
	if(0!=insertCheck){
		%>
		<script type="text/javascript">
			alert('�¼��� �߰��Ǿ����ϴ�.');
			location.href='#';
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
			alert('�¼� �߰��� �����Ͽ����ϴ�.');
			location.href='#';
		</script>
		<%
	}
%>
</body>
</html>