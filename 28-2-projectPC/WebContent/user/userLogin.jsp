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
	request.setCharacterEncoding("euc-kr");
	String userId = (String)session.getAttribute("sessionId");
	String userName = (String)session.getAttribute("sessionName");
	String userLevel = (String)session.getAttribute("sessionLevel");

if((userLevel == null) ||(!userLevel.equals("관리자"))){	
	%>
		<div>
		<section class="container">
		    <article class="half">
		        <h1>projectPC</h1>
		        <div class="tabs">
			            <span class="tab signin active"><a href="#signin">Login</a></span>
		        </div>
		        <div class="content">
		            <div class="signin-cont cont">
		                <form action="<%= request.getContextPath() %>/user/userLoginAction.jsp" method="post">
		                    <input type="text" name="userId" id="email" class="inpt" required="required" placeholder="아이디">
		                    <input type="password" name="userPw" id="password" class="inpt" required="required" placeholder="비밀번호">
		                    <input type="checkbox" id="remember" class="checkbox" checked>
		                    <label for="remember">Remember me</label>
		                    <div class="submit-wrap">
				                <input type="submit" value="로그인" class="submit">
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
// 	}else{
 		%>
		<script type="text/javascript">
 		alert('접근 권한이 없습니다. 다시 로그인 해주세요');
 		location.href='<%=request.getContextPath()%>/user/userLogin.jsp'; 
 	</script>
 	<%
 	}
%>

<%	
	}else{
		%>
	<jsp:include page="../managerAllSearch.jsp">
		<jsp:param name="userId" value="<%=userId%>"/>
	</jsp:include>
<%
}
%>

<!-- js 코드 start-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
	<script type="text/javascript">
	$('.container .bg').mousemove(function(e){
	    var amountMovedX = (e.pageX * -1 / 30);
	    var amountMovedY = (e.pageY * -1 / 9);
	    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
	});
	</script>
<!-- js 코드 end-->
</body>
</html>