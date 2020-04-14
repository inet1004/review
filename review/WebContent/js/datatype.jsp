<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>datatype.jsp</title>
<script>
	//문자열 자르기
	var url="http://localhost/js/don/search.jsp";
	// var pos = str.search("/");
	// console.log(pos);
	// var pos = url.lastIndexOf("/");
	// console.log(pos);
	var pageName=url.substring(url.lastIndexOf("/")+1);
	console.log(pageName);
	var newUrl = url.replace(pageName, "W3Schools.jsp");
	console.log(newUrl);
	
	id="20200305-1234567";
	pos1=id.lastIndexOf("-");
	var sex=id.substr(pos1+1,1);
	console.log(sex);
	console.log(sex=='1'?'남':'여');
	
	var s="hello you";
	console.log("변경전:" + s);
	s = s.replace('hello','you');
	console.log("변경후:" + s);

</script>
</head>
<body>
	<h3>자바스크립트 데이타 타입연습</h3>
</body>
</html>