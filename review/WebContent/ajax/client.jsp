<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>client.jsp</title>
<script>
	function dupCheck() {
		// 1.XHR 객체 생성
		  var xhttp = new XMLHttpRequest();
		// 2.콜백함수 // ON으로 시작하면 모두 이벤트임
		  xhttp.onreadystatechange = function() {  // 응답이 오면
			 console.log(this.readyState);
		    if (this.readyState == 4 ) { // 4: request finished and response is ready // && this.status == 200
		    	if(this.status==200) { // 실행OK
				  console.log("ajax요청완료");
		     	document.getElementById("result").innerHTML = this.responseText;  //dkfo <span>태그에 화면에 결과가 나옴
		    	} else {
			     	document.getElementById("result").innerHTML = this.statusText; 
		    	}
		    } else {
		     	document.getElementById("result").innerHTML = "로딩중";
		    }
		  };
		  // 3.요청 준비
		  var param="id=" + document.getElementById("id").value; // id.value; // document.getElementById("id").value 와 동일
		  // xhttp.open("GET", "../server/idCheck.jsp?" + param);
		  xhttp.open("post", "../server/idCheck.jsp?");  //비동기 여부 TRUE는 디폴트임 //idCheck.jsp 내용이 결과로 옴 //get방식 param 적음
		  // 4.요청 시작
		  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		  xhttp.send(param);  //get방식은  param을 안적음 //동기식이면 send함수 실행완료되면  명령실행 (블로킹)
		  console.log("ajax처리요청");
		}

</script>
</head>
<body>
	<form>
		id<input id="id" name="id" onchange="dupCheck()">
		<span id="result"></span><br>
		pw<input id="pw" name="pw">


	
	</form>
</body>
</html>