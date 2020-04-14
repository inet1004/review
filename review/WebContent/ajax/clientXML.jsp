<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.redText {color: red;}
	.blueText {color: blue;}
</style>
<script>
function loadCD() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     var docXML = this.responseXML;
	     var list = docXML.getElementsByTagName("CD");
	     var str="";
	     var style="";
	     for(i=0;list.length;i++){
	    	 var title = list[i].getElementsByTagName("TITLE")[0].firstChild.nodeValue;
	    	 var artist = list[i].getElementsByTagName("ARTIST")[0].firstChild.nodeValue;
	    	 var price = list[i].getElementsByTagName("PRICE")[0].firstChild.nodeValue;
	    	 // if(parseFloat(price)>10) {
	    	 style = price > 10 ? "blueText" : "redText";
		    	 str += "<tr><td>" + title +
	    	 		"</td><td>" + artist + 
	    	 		"</td><td class='"+ style +"'>" + price + 
	    	 		"</td></tr>";
	    	 result.innerHTML = str;
	    	 console.log(title + " : " + artist);
	     }
	    }
	  };
	  xhttp.open("GET", "../server/cd.xml", true);  // 파싱할 주소
	  xhttp.send();
}
	  
// json 파싱	아래 코드 만들것  
function loadJCD() {
	$.get("http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200406",
			function(datas){  // datas 는 아무 글자나 지정가능하며 콜백함수의 결과값임

	     var list = datas.getElementsByTagName("CD");
	     var str="";
	     var style="";
	     for(i=0;list.length;i++){
	    	 var title = list[i].getElementsByTagName("TITLE")[0].firstChild.nodeValue;
	    	 var artist = list[i].getElementsByTagName("ARTIST")[0].firstChild.nodeValue;
	    	 var price = list[i].getElementsByTagName("PRICE")[0].firstChild.nodeValue;
	    	 // if(parseFloat(price)>10) {
	    	 style = price > 10 ? "blueText" : "redText";
		    	 str += "<tr><td>" + title +
	    	 		"</td><td>" + artist + 
	    	 		"</td><td class='"+ style +"'>" + price + 
	    	 		"</td></tr>";
	    	 $("#result").html(str);	 // == innerHTML
	    	 }	 
	}, "xml")
}
	  
	  
	  
	  
	  window.addEventListener("load", function(){
		  //버튼 클릭 이벤트 리스너
		  document.getElementById("btnSearch").addEventListener("click", loadCD);
		  document.getElementById("jsonSearch").addEventListener("click", loadJCD);
		  
	  	});  // 페이지 로딩이 다 되고 나면 , js는 인터퍼리터어.
	  
</script>
<title>clientXML.jsp</title>
</head>
<body>
	<h3>CD목록</h3>
	<!-- <button type="button" onclick="loadCD()">조회</button> -->
	<button type="button" id="btnSearch">조회</button>
	
	<button type="button" id="jsonSearch">조회</button>
	
	<table id="result">
		
	</table>
</body>
</html>