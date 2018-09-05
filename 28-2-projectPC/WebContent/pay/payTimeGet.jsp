<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="pc.DTO.PayDTO"%>
<%@page import="pc.payDAO.PayDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>시간 추가 처리 화면 payTimeGet.jsp</title>
</head>
<body>
<%
request.setCharacterEncoding("euckr");
%>
<jsp:useBean id="payDto" class="pc.DTO.PayDTO"/>
<jsp:setProperty property="*" name="payDto"/>
<%
String userId = (String)session.getAttribute("sessionId");
String userName = (String)session.getAttribute("sessionName");

int time = Integer.parseInt(request.getParameter("time"));

PayDAO payDao = new PayDAO();


int addTime = payDao.userHaveTime(userId);

time += addTime;

payDao.payAddTime(time, userId);

response.sendRedirect(request.getContextPath()+"/pay/payment.jsp?check=1");
%>


</body>
</html>