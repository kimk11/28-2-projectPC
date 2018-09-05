
<%@page import="java.sql.Time"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="pc.DTO.UserDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pc.payDAO.PayDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>결제화면</title>
<style>
html, body { 
	width: 90%;
	height: 50%; 
 }
body {
    margin: 0;
    background: radial-gradient(#666, #222);
}
	#logwrap {
		background-color: gray;
		width :297px;
		height: 170px;
		position: absolute;
		left: 770px;
		z-index: 1;
		opacity: 20;
		border-top: 5px solid orange;
	
	}
	#btnLog, #btnLogout {
		width : 100px;
		position:relative;
		left :50px;
		top :6px;
		z-index: 5;
	}
	  #btnJoin{
		  width : 100px;
		  position:relative;
	 	  left :50px;
		  top :6px;
  }
	#info {
		margin-bottom: 30px;
		position: relative;
		top : 10px;
		left :50px;
		z-index: 6;
	}
	
	#name, #time{
		color : #ffffff;
		font-size: large;
		font-weight:bold;
	}
	#name {
		
	}
	.btn {
	  color: #ffffff;
	  cursor: pointer;
	  // display: block;
	  font-size:16px;
	  font-weight: 400;
	  line-height: 45px;
	  margin: 0 0 2em;
	  max-width: 160px; 
	  position: relative;
	  text-decoration: none;
	  text-transform: uppercase;
	  width: 100%; 
  }
	.btn-5 {
	  border: 0 solid;
	  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
	  outline: 1px solid;
	  outline-color: rgba(255, 255, 255, .5);
	  outline-offset: 0px;
	  text-shadow: none;
	  transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
	} 
	
	.btn-5:hover {
	  border: 1px solid;
	  box-shadow: inset 0 0 20px rgba(255, 255, 255, .5), 0 0 20px rgba(255, 255, 255, .2);
	  outline-color: rgba(255, 255, 255, 0);
	  outline-offset: 15px;
	  text-shadow: 1px 1px 2px #427388; 
}


/* pc버튼 */
.button {
    position: relative;
   	top : 100px;
    left :150px;
    width:110px; height:110px;
    margin:-70px 0 0 -70px;
    cursor: pointer;
}
.compass {
    position: absolute;
    width:100%; height:100%;
    background: #444;
    border-radius: 0 50% 50% 50%;
    border: 10px solid white;
    box-shadow: 0 0 8px rgba(0,0,0,.2);
    border-right-color: coral;
    border-bottom-color: coral;
    transition: border-radius .2s;
    box-sizing: border-box;
}
.button:hover .compass {
    border-radius: 50%;
}
.msg {
    position: absolute;
    width:100%; height:100%;
    line-height: 110px;
    text-align: center;
    color: #fff;
    font-family: 'Roboto', sans-serif;
    font-size: 30px;
    font-weight: bold;

}


/*상품권, 자리 버튼 */

.semibutton1,.semibutton2 {
  position: absolute;
  left :1000px;
  height: 3em;
  width: 9.3em;
  background: #555;
  background: linear-gradient(top, #555, #333);
  border: none;
  border-top: 5px solid orange;
  border-radius: 0 0 0.3em 0.3em;
  color: #fff;
  font-family: Helvetica, Arial, Sans-serif;
  font-size: 1em;
  transform-origin: 50% 5em;
}
.semibutton1 {
	position: absolute;
	top: 405px;
	left: 770px;
}
.semibutton2 {
	position: absolute;
	top: 405px;
	left: 918.5px;
}
.semibutton1:hover {
   background:$white;
   color:$teal;
   }
   
 
  /* home, 이전 버튼 */
 .wrap {
  position : absolute;
  left : 765px;
  width :350px ;
  height : 300px ;
  
 }
 
  .bbutton {
  display: inline-block;
  text-align:center;
  padding: 25px 77px;
  color: white;
  transition: 300ms ease-in-out;
  font-size: 22px;
  margin: 50px 2.6%;
  text-decoration: none;

}
  .bbutton:hover {
    transform: translateY(-3px);
    box-shadow: 0px 2px 15px #DB9700;
  }
  
.orange {
  background-color: #FF8224;
  border-bottom: 3px solid #FF5E00;
 position: absolute;
}
.yellow {
  background-color: #ffbb33;
  border-bottom: 3px solid #ff8800;
  position: absolute;
  top : 120px;
 
  }

 
</style>
</head>
<body>
	<%

	String check = "non";
	if(request.getParameter("check")!=null){
		check = request.getParameter("check");
	}
	
	System.out.println();
	System.out.println(request.getParameter("check") +"<<<<<<check request paylist");
	System.out.println(check +"<<<<<<check paylist");
	System.out.println();
	
	%>

	<div class="button">
	    <div class="compass"></div>
	    <div class="msg">PC</div>
	</div>

<%-- 	<%@ include file="./payLogin.jsp" %> --%>
	<%@ include file="./payList.jsp" %>
	
	<%
	/* PayDAO payDao = new PayDAO(); */
	UserDTO userDto = new UserDTO();
	
	%>
	
	<div>
	<%
	if(!check.equals("1")) {
	%>
	<button type="button" id="btnLog" class ="btn btn-5">Login</button>
	<button type="button" id="btnJoin" class ="btn btn-5">Join</button>
	<%
	}else {
	%>
	<div id="logwrap">
	</div>
	<a href="./payLogout.jsp"><button type="button" id="btnLogout" class ="btn btn-5">Logout</button></a><br>
	<!-- 현재 남은 시간 -->
	<div id ="info">
	<div id= "name"><%=userName %> 님</div>
	<div id= "time">
		<label>현재 남은 시간 : </label>
		<span>
		<%
			if(addTime<60){
				
				out.print((addTime%60)+"분");
			}else if(addTime%60!=0){
				out.print((addTime/60)+"시간 "+(addTime%60)+"분");
			}else{
				out.print((addTime/60)+"시간 ");
			}
		%>
		</span>
	</div>
	</div><br><br>
	<a href ="http://www.cultureland.co.kr/"><button class = "semibutton1">상품권구매</button></a>
	<a href ="../PCseatChoice.jsp"><button class = "semibutton2">좌석선택</button></a>

	<%
	}
	%>

		 <div class="wrap">
			 <a href="../managerNuser.jsp" class="bbutton orange"><img src="../image/home.png">　HOME　</a><br>
			 <a href="../payNseat.jsp" class="bbutton yellow"><img src="../image/back.png" >　이전으로</a>
		 </div>
		 
		 
		 </div>
	<script>
	var btnLog = document.getElementById("btnLog");
	var btnJoin = document.getElementById("btnJoin");
	btnLog.addEventListener("click", function() {
		location.href ="./payLogin.jsp";
	});
	btnJoin.addEventListener("click", function() {
		location.href ="./payUserInsertForm.jsp";
	});
	
	</script>

</body>
</html>