<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import="com.javaex.dao.PhoneDao" %>
<%@	page import="com.javaex.vo.PersonVo" %>

<%
	//	글자 깨지는 것 방지
	request.setCharacterEncoding("UTF-8");	

	//	파라미터 추출
	int personId = Integer.parseInt(request.getParameter("personid"));
	String name 	= request.getParameter("Name");
	String hp 		= request.getParameter("Hp");
	String company 	= request.getParameter("Company");

	//	Vo만들기
	PersonVo personVo = new PersonVo(personId, name, hp, company);
	System.out.println(personVo.toString());
	
	//	Dao
	PhoneDao phoneDao = new PhoneDao();
	
	//	personUpdate()
	phoneDao.personUpdate(personVo);
	
	//	Redirect
	response.sendRedirect("list.jsp");
%>