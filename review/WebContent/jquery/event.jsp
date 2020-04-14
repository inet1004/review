<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<script>

//페이지로드 이벤트
$(function(){
	//ul mouseover 이벤트
	$("ul").on("mouseover", "li", function(){        //$("li").bind("mouseover",function(){  와 동일함
		$(this).css("backgroundColor","gray");
	})
	//버튼 클릭 이벤트
	$("button").bind("click",function(){
		$("ul").append($("<li>").html("spring"));
		// $("ul").append("<li>spring</li>")
	});
});
</script>

</head>
<body>
	<button type="button">추가</button>
	<ul>
		<li>자바
		<li>JAVA
	</ul>
</body>
</html>