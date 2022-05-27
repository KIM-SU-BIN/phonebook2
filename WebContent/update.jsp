<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%
	//파라미터에서 id값 꺼내오기
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	//int id = Integer.parseInt("21") -> 21이 위의 리퀘스트~ 문,String을 int로 변경해야 함
	//System.out.println("update");	->System.out.println("id");	
	
	//PersonVo 만들기
	PersonVo personVo = new PersonVo(id, name, hp, company);
	
	//PhoneDao personUpdate()로 수정하기
	PhoneDao phoneDao = new PhoneDao();
	int count = phoneDao.personUpdate(personVo);
	System.out.println(count);
	
	//응답 리다이렉트
	response.sendRedirect("./list.jsp");
%>