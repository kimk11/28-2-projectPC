<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="pc.DTO.UserDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

 <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/seatLogin.css">

</head>
<body>
<%
	String userId = (String)session.getAttribute("sessionId");
	String userName = (String)session.getAttribute("sessionName");

	int seatCheck=0;
	if(request.getParameter("seatCheck")!=null){
		seatCheck=Integer.parseInt(request.getParameter("seatCheck"));
	}
	if(seatCheck==0){
		//������ �������, �� �α����� ������ ���
		//�α��� �� ȭ��
		//������ �������, �� �α����� ���� ���
		//�α��� �� ȸ�� ���� ȭ��
		int seatNo = Integer.parseInt(request.getParameter("seatNo"));
		
%>
	<div>
		<section class="container">
		    <article class="half">
		        <h1>�¼� �α���</h1>
		        <div class="tabs">
			            <span class="tab signin active"><a href="#signin">Login</a></span>
		        </div>
		        <div class="content">
		            <div class="signin-cont cont">
		                <form action="<%= request.getContextPath() %>/seat/seatLoginAction.jsp" method="post">
		                	<input type="hidden" name="seatNo" value="<%= seatNo %>">
		                    <input type="text" name="userId" id="email" class="inpt" required="required" placeholder="���̵�">
		               
		                    <input type="password" name="userPw" id="password" class="inpt" required="required" placeholder="��й�ȣ">
		          		
		                    <input type="checkbox" id="remember" class="checkbox" checked>
		                    <label for="remember">Remember me</label>
		                    <div class="submit-wrap">
				                <input type="submit" value="�α���" class="submit">
				                <a href="#" class="more">Forgot your password?</a>
		                    </div>
				        </form>
		        	</div>
		        </div>
		    </article>
		    <div class="half bg"></div>
		</section>
	</div>
<%	
	}else{
%>
<!-- 	include�� �α��� �� ȭ��  -->

	<jsp:include page="../browser/loginBorwser.jsp">
		<jsp:param name="userId" value="<%=userId%>"/>
	</jsp:include>
<%	
	}
%>

<!-- js �ڵ� start-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
	<script type="text/javascript">
	$('.container .bg').mousemove(function(e){
	    var amountMovedX = (e.pageX * -1 / 30);
	    var amountMovedY = (e.pageY * -1 / 9);
	    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
	});
	</script>
<!-- js �ڵ� end-->
</body>
</html>