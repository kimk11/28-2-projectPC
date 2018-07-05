<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>


</head>
<body>


<div id="wrapper">
	<form action="<%=request.getContextPath()%>/NewFile1.jsp" method="post" id="f">
		<input type="hidden" name="aa" value="sda">
		<button type="button" id="btn">확인</button>
		
	</form>
<script type="text/javascript">
	var btn = document.getElementById('btn');
	btn.addEventListener('click', function() {
		document.forms.f.submit();
	});
</script>

</div>
</body>
</html>