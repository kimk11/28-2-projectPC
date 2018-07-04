<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style>
body {
  font: 13px/20px 'Lucida Grande', Verdana, sans-serif;
  color: #eeeeee;
  text-align:center;
  padding:50px
}

.button {
  display: inline-block;
  vertical-align: top;
  padding: 10px 25px;
  font-family: inherit;
  font-weight:bold;
  font-size: 15px;
  color: yellow;
  text-align: center;
  text-decoration: none;
  text-shadow: 0 0 2px rgba(255, 255, 255, 1);
  background-color: #ccc;
  background-clip: padding-box;
  border: 1px solid;
  border-color: #202020 #1a1a1a #111;
  border-radius: 2px;
  background-image: -webkit-linear-gradient(top, #efefef, #777);
  background-image: -moz-linear-gradient(top, #efefef, #777);
  background-image: -o-linear-gradient(top, #efefef, #777);
  background-image: linear-gradient(to bottom, #efefef, #777);
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.09), 0 1px 1px rgba(0, 0, 0, 0.3);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.09), 0px 1px 1px rgba(0, 0, 0, 0.2);
}
.button:hover {
  background-color: #aaaaaa;
  background-image: -webkit-linear-gradient(top, #ccc, #555);
  background-image: -moz-linear-gradient(top, #ccc, #555);
  background-image: -o-linear-gradient(top, #ccc, #555);
  background-image: linear-gradient(to bottom, #ccc, #555);
}
.button:active, .button.active {
  background-color: #b42f32;
  border-color: #1c1c1c #202020 #222;
  -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.09);
  box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.09);
}

.rounded {border-radius:100em!important;}



.lightGrey {
  color: white;
  text-shadow: 0 0 2px rgba(0, 0, 0, .7);
  background-color: #303030;
  border-color: #1c1c1c #202020 #222;
  background-image: -webkit-linear-gradient(top, #8e8e8e, #434343);
  background-image: -moz-linear-gradient(top, #8e8e8e, #434343);
  background-image: -o-linear-gradient(top, #8e8e8e, #434343);
  background-image: linear-gradient(to bottom, #8e8e8e, #434343);
}
.lightGrey:hover {
  background-color: #313131;
  background-image: -webkit-linear-gradient(top, #7b7b7b, #2a2a2a);
  background-image: -moz-linear-gradient(top, #7b7b7b, #2a2a2a);
  background-image: -o-linear-gradient(top, #7b7b7b, #2a2a2a);
  background-image: linear-gradient(to bottom, #7b7b7b, #2a2a2a);
}

</style>

</head>
<body>
	<button type="button" id="goodsAll" class="button lightGrey rounded">전체</button>
	<button type="button" id="goods1" class="button lightGrey rounded">과자</button>
	<button type="button" id="goods2" class="button lightGrey rounded">식품</button>
	<button type="button" id="goods3" class="button lightGrey rounded">음료</button>
	<button type="button" id="goods4" class="button lightGrey rounded">간식</button>
	
<script type="text/javascript">
	var goodsAll = document.getElementById('goodsAll');
	var goods1 = document.getElementById('goods1');
	var goods2 = document.getElementById('goods2');
	var goods3 = document.getElementById('goods3');
	var goods4 = document.getElementById('goods4');
	
	goodsAll.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=goodsAll';
	});
	
	goods1.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=goods1';
	});
	
	goods2.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=goods2';
	});
	
	goods3.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=goods3';
	});
	
	goods4.addEventListener('click', function() {
		location.href='<%=request.getContextPath()%>/order/orderSearchList.jsp?goods=goods4';
	});
</script>
</body>
</html>