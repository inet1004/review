<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!--  <link rel="stylesheet" type="text/css" href="../css/form.css"> -->
<style type="text/css">
	label {display: inline-block; width: 100px;}
	body { font-size: 10px;}
	input, select, textarea, label { font-size: 2em; }
	input:hover {background-color: yellowgreen; }
	input[name='pw'] { background-color: red; }
</style>

<script>
	//store
	// localStorage.setItem("lastname","smith");
	
	function inputCheck(){
		//document.getElementById("id")
		// document.forms["frm"]
		// document.frm
		if(frm.id.value == ""){
			alert("id입력");
			frm.id.focus();
			return;
		}
		if(frm.pw.value == ""){
			alert("pw입력");
			frm.pw.focus();
			return;
		}
		if(frm.job.selectedIndex < 1) {
			alert("job선택");
			frm.job.focus();
			return;
		}
		if(document.querySelectAll("[name='hobby']:checked").length == 0) {
			alert("하나 이상 선택하세요");
			return;
		}
		var hobbyChkLen = document.querySelectAll("[name='hobby']:checked").length;
		if(hobbyChkLen == 0) {
			alert("하나 이상 선택하세요");
			return;
		}
	}
</script>

</head>
<body>
	
	<div class="container" align="center">
		<h2>회원 가입</h2>
		<p>	여기는 <code>회원 가입</code> 하는 곳입니다. <br/>
		<form action="memberInsert.do" class="was-validated" id="frm"
			name="frm" method="post" enctype="multipart/form-data" >
		<fieldset>
		<legend>Fieldset legend 표현</legend>
			
			<div><br/></div>

			<div class="form-group">
				<label for="id">* id</label> 
				<input type="text" tabindex="1" class="form-control" id="id" name="id" placeholder="아이디 " required>
				<button type="button" id="btn" onClick="inputCheck()">중복체크</button>
			</div>
			
			<div><br/></div>
			
			<div class="form-group">
				<label for="pw">* pw</label> 
				<input type="password" class="form-control" id="pw" name="pw"  onClick="inputCheck()" placeholder="패스워드 " required>
			</div>
			
			<div><br/></div>
			
			<div class="form-group">
				<label for="name">* 회원명</label> 
				<!-- <input type="text" class="form-control" id="name" name="name" placeholder="이름" value="이름임" disabled="disabled">  -->
				<input type="text" class="form-control" id="name" name="name" value="이름임" readonly>
			</div>
			
			<div><br/></div>
			
			<div class="form-group">
				<label for="gender">롤 : </label> &nbsp;&nbsp;<input type="radio"
					class="btn btn-danger" id="gender" name="gender" value="male"
					Checked>admin &nbsp;&nbsp;<input type="radio"
					class="btn btn-danger" id="gender" name="gender" value="female">user
			</div>
			
			<div><br/></div>
			
			<div id="" name="jobSelect" class="">
			직업선택 multiple : 
				<select name="job" id="jobb" size="2" multiple>
					<option value="">직업선택</option>
					<option value="개발자">개발자</option>
					<option value="회사원">회사원</option>
					<option value="기타">기타</option>
				</select>
			</div>
			
			<div><br/></div>
			
			<div id="" name="jobList" class="">
			직업선택 datalist : <input type="text" name="subject" list="depList"><br>
			    <datalist id="depList">
			        <option value="컴퓨터공학과"></option>
			        <option value="영어영문과"></option>
			        <option value="경영학과"></option>
			        <option value="사회체육과"></option>
			    </datalist>
			</div>
			
			<div><br/></div>
			
			<div id="" name="reason" class="">
				나이 type="number": 	<input type="number" maxlength="5" />
			</div>
			
			<div><br/></div>
			
			
			<div><br/></div>
			
			<div id="" name="reason" class="">
				가입동기: <br />
				<textarea id="" name="" rows="5" cols="40"></textarea>
			</div>
			
			<div><br/></div>
			
			<div class="form-group">
				<label for="hobby"> 취 미 :</label> 
				<input type="checkbox" class="btn-group-toggle"  name="hobby"	value="운동">&nbsp;운동 &nbsp;&nbsp;
				<input type="checkbox" class="btn-group-toggle"  name="hobby"  value="영화">&nbsp;영화&nbsp;&nbsp;
				<input type="checkbox" class="btn-group-toggle"	 name="hobby"  value="음악">&nbsp;음악 &nbsp;&nbsp;
				<input type="checkbox" class="btn-group-toggle"  name="hobby"	value="기타">&nbsp;기타
			</div>
			
			<div><br/></div>
			
			<div class="form-group">
				<label for="addr"> 주 소: </label>
				<textarea class="form-control" id="addr" name="addr" placeholder="주소 입력 " required></textarea>
				<input type="button" value="검색" onClick="" class="btn btn-info">
			</div>
			
			<div><br/></div>
			
			<div class="form-group">
				<label for="hobby"> 사진 첨부 : </label> &nbsp;&nbsp;
				<input type="file" class="btn-group-toggle" id="filename" name="filename">&nbsp;
			</div>
			
			<div><br/></div>
			<div><br/></div>
			
			<div class="center">
			<button type="submit" class="btn btn-primary">등록하기</button>&nbsp; <!-- button type default=submit임 -->
			<button type="submit" formaction="/aaa.php" class="btn btn-primary">formaction</button>&nbsp; 
			<button type="submit" formaction="/aaa.php" formmethod="get" class="btn btn-primary">formmethod="get"</button>&nbsp;
			
			<input type="reset" value="취소" class="btn btn-warning">&nbsp;
			<input type="button" value="홈 가기" onClick="location.href='./index.jsp'" class="btn btn-info">
			</div>
			<div><br/></div>
			
		</fieldset>
		
		<div><br/></div>
		[ localStorage.setItem("lastname","smith"); ] <br/>
		f12-> Aplication > storage > localstorage > http://localhost > 우측창 키:밸류 확인됨 <br/>
		삭제하기 전까지 계속 유지됨, 세션: 서버저장, 쿠키:브라우저 저장<br/>
		
		[float보다]->inline tag를 많이씀
		공통사항은 class 이용 (tag 사용금지)
		
		</form>
		
		<div>
			<h3>목록</h3>
		</div>
		
	</div>
	
	<div>
		<br />
	</div>

</body>
</html>