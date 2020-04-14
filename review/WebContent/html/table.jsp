<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.memberlist tr:hover { background-color: yellowgreen; }
	.memberlist tr:nth-child(odd) { background-color: yellow; }
	.memberlist { display: inline-block; }
	table, tr, td { border: 1px solid blue; }
	td { padding: 10px; }
	table { margin: 100px 50px 100px 200px; }
	.memberlist tr:first-child { background-color: cyon; }
	.memberlist:nth-child(1) { display: none; }
</style>
<title>Insert title here</title>
</head>
<body>

	<table class="memberlist">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
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
	</table>
	
	
	<table class="memberlist" >
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
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
	</table>
	
</body>
</html>