<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>

<%
	//파라미터에서 id값 꺼내오기
	int id = Integer.parseInt(request.getParameter("id"));
	//System.out.println(id);

   
   //PhoneDao의 personDelete()를 이용해서 삭제하기
   PhoneDao phoneDao = new PhoneDao();
   int count = phoneDao.personDelete(id);
   System.out.println(count);
   
 	//응답  리다이렉트
   response.sendRedirect("./list.jsp");
%>