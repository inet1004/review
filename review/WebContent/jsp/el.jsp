<%@page import="java.util.ArrayList"%>
<%@page import="review.emp.EmpDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el.jsp</title>
</head>
<body>
<% 
	ArrayList<EmpDTO> list =new ArrayList<>();
	list.add(new EmpDTO("10","홍길동"));
	list.add(new EmpDTO("20","나가자"));
	request.setAttribute("list",list);
%>
	
<!-- 표현식 -->   <!-- EL, EL객체 -->
<%=request.getParameter("name").toUpperCase()%>
 --- ${fn:toUpperCase(param.name) } <!-- toUpperCase  JSTL 표현식 -->

<% if (list != null && list.size()>0 ) { %>
<% for ( EmpDTO dto : list) { %>
	<%= dto.getFirst_name() %> <br>
<% } %>
<% } %>
<br>
갯수: <%= list.size() %>

<%= list.size() %>
<c:if test="${not empty list}">
	<c:forEach items = "${list}" var="dto">
		${dto.getFirst_name()} == ${dto.first_name } <br>
	</c:forEach>
</c:if>
<br>
EL length : ${fn:length(list)}
<hr>
헤더정보
<%= request.getHeader("User-Agent") %> --- ${header["User-Agent"] }  <br> ---  ${cookie.name }
<%= request.getContextPath() %>   
${pageContext.request.contextPath}

</body>
</html>