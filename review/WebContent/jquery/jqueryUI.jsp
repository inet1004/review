<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script>
  	$(function(){
  		$("#acor").accordion({
  		  active: 2,   //디폴트 액티브
  		  animate: 200,  //동작속도
  		  collapsible: true,  //열리고 접힘
  		  activate: function( event, ui ) {
  			  // console.log(ui.oldHeader.html());
  			  // console.log(ui.newHeader.html())
  		  }
  		});
  		
  		// $("#acor").accordion("refresh");
  		
  		// datepicker
  		$("#datepicker").datepicker({
  			dateFormat: "yy-mm-dd",
  			maxDate: "+7d",
  			dayNamesMin: [ "일", "월", "Mar", "Mer", "Jeu", "Ven", "Sam" ],
  			onSelect: function(dateText, dateObj){
  				console.log(dateObj);
  				console.log(dateText);   //selectedMonth: 3 ---> getEle... 읽어 가능
  			}
  		});
  		
  		// dialog
  		$("#modal").dialog({  //모달창
  			autoOpen:false,
  			modal: true,  //부모창 작동 금지 시키기
  			buttons: {
  		        "수정": function() {
  		         	alert( "수정" );
  		        },
  		        "저장": function() {
  		        	alert( "저장" );
    		    },
  		        "닫기": function() {
  		        	$("#modal").dialog("close");
    		    }
  		   	}
  		});
  		
  		//버튼 클릭 이벤트
  		$("#btnOpenModal").bind("click", function(){
  			$("#modal").dialog("open");
  		});
  		
  	});  //end of ready event
  
  </script>
  
</head>
<body>
	<div id="modal" title="타이틀">광고 문구</div>
	
	<div id="acor">
		<h3>첮째</h3>
		<div>첮째	</div>
		<h3>둘째</h3>
		<div>둘째	</div>
		<h3>세째</h3>
		<div>세째	
			<button type="button" id="btnOpenModal">상세보기</button>
			<p>Date: <input type="text" id="datepicker"></p>  <!-- 달력 -->
		</div>
	
	</div>

</body>
</html>