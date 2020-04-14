<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>이벤트 전파</title>
	<style>
		div { border: 1px solid blue; padding:10px; }
	</style>
	<script>
		$(function(){
			$("#grand").bind("click", function() {alert("grand click"); });
			$("#parent").bind("click", function() {alert("parent click"); });
			$("#child").bind("click", function(e) {alert("child click");  // e 이벤트 인자를 넣어줌
				e.stopPropagation(); // 버블링 이벤트를 상위 부모로의 전파 막기
			});
		});
	
	</script>

</head>
<body>
	<div id="grand">grand
		<div id="parent">parent
			<div id="child">child
			</div>
		</div>
	</div>
</body>
</html>