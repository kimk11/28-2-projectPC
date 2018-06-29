<!-- 2018.06.29 송유빈 -->
<!-- goodsInsertForm.jsp -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Goods Insert Form</title>
</head>
<body>
	<h2>상품 등록</h2>
	<form action="./goodsInsertAction.jsp" method ="post">
		<div>
			<input type="hidden" name="goodsCode"><br>
			<label> 상품명 : </label>
			<input type="text" name="goodsName"><br>
			<label> 가　격 : </label>
			<input type="text" name="goodsPrice"><br>
			<label> 종　류 : </label>
			<select name="goodsCate">
				<option value="과자">과자</option>
				<option value="음료">음료</option>
				<option value="간식">간식</option>
				<option value="식품">식품</option>
			</select>
			
		</div>
		<div>
			<input type="submit" value="등록">
		</div>
	</form>
</body>
</html>