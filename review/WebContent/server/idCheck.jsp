<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	// Thread.sleep(3000); //3초간 대기
	//int a =5/0;  //에러 발생
	if(id!=null){
		if(id.equals("admin")){
			out.print("사용불가");
		}else{
			out.print("사용가능");
		}
	}

%>