<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.payDAO.PayDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int paymentNo = Integer.parseInt(request.getParameter("paymentNo"));

	PayDAO payDao = new PayDAO();
	int check = payDao.payDelete(paymentNo);
	
	if(0!=check){
		%>
 		<script type="text/javascript">
 			alert('삭제가 완료되었습니다');
 			location.href='#';
 		</script>
 		<%
	}else{
		%>
 		<script type="text/javascript">
 			alert('삭제를 실패했습니다.');
 			location.href='#';
 		</script>
 		<%
	}
%>
</body>
</html>