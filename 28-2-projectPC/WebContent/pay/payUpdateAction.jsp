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
	request.setCharacterEncoding("euckr");
 %>
 	<jsp:useBean id="payDto" class="pc.DTO.PayDTO"/>
 	<jsp:setProperty property="*" name="payDto"/>
 <%
 	PayDAO payDao = new PayDAO();
 	int check = payDao.payUpdate(payDto);
 	
 	if(0!=check){
 		%>
 		<script type="text/javascript">
 			alert('수정이 완료되었습니다');
 			location.href='#';
 		</script>
 		<%
 	}else{
 		%>
 		<script type="text/javascript">
 			alert('수정이 실패했습니다.');
 			location.href='#';
 		</script>
 		<%
 	}
 %>
</body>
</html>