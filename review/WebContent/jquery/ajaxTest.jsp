<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#btnSearch").bind("click", searchEmp);
		
	});
	function searchEmp(){
		$.ajax({  
			  url: "../server/findName.jsp",
			  data: {id:$("#empNo").val()},
			  dataType: "json",
			  async: false,
			  method: get //post
			})
		 .done(function(datas){  // datas 는 서버측 결과값(위의 json 타입으로 바꾼것임)
			 $("#result").html(datas.first_name + " " + datas.last_name);
		 })
		 .fail(function(xhr,status){
			 $("#result").html(status);
			 console.log(xhr);
		 })
		 .always(function(){
			 console.dir("처리완로");
		 });
	}
	
</script>

<title>Insert title here</title>
</head>
<body>
	<input id="empNo"><button type ="button" id="btnSearch">검색</button>
	<div id="result"><div>
</body>
</html>