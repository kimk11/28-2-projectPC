<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.payDAO.PayDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>payInsertAction</title>
</head>
<body>
<% request.setCharacterEncoding("euckr"); %>
<jsp:useBean id="payDto" class="pc.DTO.PayDTO"/>
<jsp:setProperty property="*" name="payDto"/>
<%
	PayDAO payDao = new PayDAO();
	int check = payDao.payNoCheck();
	int insertCheck = 0;
	
	if(check == 0){
		insertCheck = payDao.payInsertNoOne(payDto);
		if(!(insertCheck==0)){
			%>
			<script type="text/javascript">
				alert('정액권이 새로 추가 되었습니다.');
				location.href='#';
			</script>
			<%
		}else{
			%>
			<script type="text/javascript">
				alert('정액권 추가가 실패했습니다.');
				location.href='/pay/payInsertForm.jsp';
			</script>
			<%
		}
	}else{
		insertCheck = payDao.payInsertOneOver(payDto, check);
		if(!(insertCheck==0)){
			%>
			<script type="text/javascript">
				alert('정액권이 새로 추가 되었습니다.');
				location.href='#';
			</script>
			<%
		}else{
			%>
			<script type="text/javascript">
				alert('정액권 추가가 실패했습니다.');
				location.href='/pay/payInsertForm.jsp';
			</script>
			<%
		}
	}
%>
</body>
</html>