<!-- 2018.06.29 ������ -->
<!-- goodsInsertForm.jsp -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Goods Insert Form</title>
</head>
<body>
	<h2>��ǰ ���</h2>
	<form action="./goodsInsertAction.jsp" method ="post">
		<div>
			<input type="hidden" name="goodsCode"><br>
			<label> ��ǰ�� : </label>
			<input type="text" name="goodsName"><br>
			<label> ������ : </label>
			<input type="text" name="goodsPrice"><br>
			<label> ������ : </label>
			<select name="goodsCate">
				<option value="����">����</option>
				<option value="����">����</option>
				<option value="����">����</option>
				<option value="��ǰ">��ǰ</option>
			</select>
			
		</div>
		<div>
			<input type="submit" value="���">
		</div>
	</form>
</body>
</html>