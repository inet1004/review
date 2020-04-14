<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	div { border:10px; margin: 10px; padding:10px; width: 200px; height: 200px;
	  	background-color: yellow; text-align: center; }
	#divb { background-color: yellowgreen;
			position: fixed;
			bottom: 0px;
			right: 0px; }
	#divc { background-color: gray;
			position: fixed;
			top: 100px;
			margin-left: 200px; }

#home {
  left: 0px;
  width: 46px;
  background: url('img_navsprites.gif') 0 0;
}

#prev {
  left: 63px;
  width: 43px;
  background: url('img_navsprites.gif') -47px 0;
}

#next {
  left: 129px;
  width: 43px;
  background: url('img_navsprites.gif') -91px 0;
}

</style>
<title>position.jsp</title>
</head>
<body>
	<div>a</div>
	<div id="divb">b</div>
	<div id="divc">c</div>
	<div>d</div>

	  	<%-- display: inline-block; --%>
	  	<%-- position: relative, fixed --%>
	  	
</body>
</html>