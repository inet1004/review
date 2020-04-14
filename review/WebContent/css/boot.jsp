<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<style type="text/css">
form{
background-color:#D9E5FF;
width: 70%;
height: 1200px;
border: 1px solid #B2CCFF;
padding: 20px;
text-align: left;
} 

div.center{
text-align: center;
}
</style>

<title>Insert title here</title>
</head>
<body>

<div class="container" >
  <!-- Content here -->
  <!--  help start -->
  	<div class="alert alert-primary" role="alert">
  		A simple primary alert—check it out!
  		<button type="button" class="btn btn-primary">Profile 
  		<span class="badge badge-light">9</span>
  		<span class="sr-only">unread messages</span>
		</button>
	</div>
  
  	<div class="row align-items-center">
  		<div class="col-xl-6 col-md-12 col-sm-12 table-responsive border bg-light">
  			
			<!--  목록 시작 -->
			<table class="table  table-hover">
			<thead class="thead-dark">
				<tr>
					<th>번호</td>
					<th>이름</td>
					<th>설명</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>4</td>
					<td>5</td>
					<td class="text-truncate" style="max-width:150px">전화번호전화번호전화번호전화번호전화번호전화번호전화번호전화번호전화번호전화번호전화번호전화번호전화번호</td>
				</tr>
				<tr>
					<td>7</td>
					<td>8</td>
					<td>9</td>
				</tr>
				<tr>
					<td>10</td>
					<td>11</td>
					<td>12</td>
				</tr>
			</tbody>
			</table>
			<!--  목록 끝 -->
			
			<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item"><a class="page-link" href="#">Next</a></li>
			  </ul>
			</nav>

  		</div>
  		<!--  help end -->
  		
  		
		<!--  버튼 시작 -->
  		<div class="col-xl-6 col-md-12 col-sm-12 py-3 px-lg-12 border bg-light">
			<div align="center"> 
				<button class="btn btn-success">등록</button>
				<span class="btn btn-info">수정</span>
				<a href="#" class="btn btn-warning">삭제</a>
			</div>
		</div>
		<!--  버튼 끝 -->
		
		
		<!--  등록폼 시작 -->
		<div align="center">
		<form method="post">
			
			<div><br/></div>

			<div class="row form-group">
				<label for="id" class="col-4">id</label> 
				<div class="col">
					<input class="form-control" id="id" name="id" >
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<label for="pw" class="col-4">pw</label>
				<div class="col">
					<input type="password" class="form-control" id="pw" name="pw">
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<label for="name">회원명</label> 
				<div class="col">
					<input class="form-control" id="name" name="name">
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<label for="gender">롤 : </label>
				<div class="col">
					<input type="radio"	class="btn btn-danger" id="gender" name="gender" value="male" Checked>admin
					<input type="radio"	class="btn btn-danger" id="gender" name="gender" value="female">user
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<div id="" name="jobSelect" class="col">직업선택 multiple : 
					<select name="job" size="2" multiple>
						<option value="">직업선택</option>
						<option value="개발자">개발자</option>
						<option value="회사원">회사원</option>
						<option value="기타">기타</option>
					</select>
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<div id="" name="jobList" class="col">직업선택 datalist : 
				<input type="text" name="subject" list="depList"><br/>
				    <datalist id="depList">
				        <option value="컴퓨터공학과"></option>
				        <option value="영어영문과"></option>
				        <option value="경영학과"></option>
				        <option value="사회체육과"></option>
				    </datalist>
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<div id="" name="reason" class="col">
					나이 type="number": 	<input type="number" maxlength="5" />
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<div id="" name="reason" class="col">
					가입동기: <br />
					<textarea id="" name="" rows="5" cols="40"></textarea>
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<label for="hobby"> 취 미 :</label> 
				<div class="col">
					<input type="checkbox" class="btn-group-toggle" id="hobby" name="hobby"	value="운동">&nbsp;운동 &nbsp;&nbsp;
					<input type="checkbox" class="btn-group-toggle" id="hobby" name="hobby" value="영화">&nbsp;영화&nbsp;&nbsp;
					<input type="checkbox" class="btn-group-toggle"	id="hobby" name="hobby" value="음악">&nbsp;음악 &nbsp;&nbsp;
					<input type="checkbox" class="btn-group-toggle" id="hobby" name="hobby"	value="기타">&nbsp;기타
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<label for="addr"> 주 소: </label>
				<div class="col">
					<textarea class="form-control" id="addr" name="addr" placeholder="주소 입력 " required></textarea>
					<input type="button" value="검색" onClick="" class="btn btn-info">
				</div>
			</div>
			
			<div><br/></div>
			
			<div class="row form-group">
				<label for="hobby"> 사진 첨부 : </label> &nbsp;&nbsp;
				<div class="col">
					<input type="file" class="btn-group-toggle" id="filename" name="filename">&nbsp;
				</div>
			</div>
			
			<div><br/></div>
			<div><br/></div>
			
			<div class="row form-group">
				<div class="col-auto margin-auto">
				<div class="col-auto">
					<button type="submit" class="btn btn-primary">등록하기</button>&nbsp; <!-- button type default=submit임 -->
					<input type="reset" value="취소" class="btn btn-warning">&nbsp;
					<input type="button" value="홈 가기" onClick="location.href='./index.jsp'" class="btn btn-info">
				
			<div><br/></div>
			
					<button type="submit" formaction="/aaa.php" class="btn btn-primary">formaction</button>&nbsp; 
					<button type="submit" formaction="/aaa.php" formmethod="get" class="btn btn-primary">formmethod="get"</button>&nbsp;
					
				</div>
			</div>
			<div><br/></div>
					
		<div><br/></div>
		[ localStorage.setItem("lastname","smith"); ] <br/>
		f12-> Aplication > storage > localstorage > http://localhost > 우측창 키:밸류 확인됨 <br/>
		삭제하기 전까지 계속 유지됨, 세션: 서버저장, 쿠키:브라우저 저장<br/>
		
		[float보다]->inline tag를 많이씀
		공통사항은 class 이용 (tag 사용금지)
		
		</form>
		</div>
  	</div>
		<!-- 등록폼 끝 -->
  	
  	
  	
 <!-- 	
  	<div class="row mx-lg-n5  align-items-center"  style="height:300px" >
  		<div class="col-xl-6 col-md-12 col-sm-12 py-3 px-lg-5 border bg-light">D</div>
  		<div class="col-xl-6 col-md-6 col-sm-12 py-3 px-lg-5 border bg-light">E</div>
  	</div>
  	
  	<div class="row mx-lg-n5  align-items-end"  style="height:300px" >
  		<div class="col-xl-6 col-md-12 col-sm-12 py-3 px-lg-5 border bg-light">D</div>
  		<div class="col-xl-6 col-md-6 col-sm-12 py-3 px-lg-5 border bg-light">E</div>
  	</div>
 -->  	
</div>

</body>
</html>