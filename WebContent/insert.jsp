<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@	page import="com.javaex.vo.PersonVo" %>

<%
	request.setCharacterEncoding("UTF-8");	

	String name 	= request.getParameter("Name");
	String hp 		= request.getParameter("Hp");
	String company 	= request.getParameter("Company");
	PersonVo personVo = new PersonVo(name, hp, company);

	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personInsert(personVo);

	
	response.sendRedirect("list.jsp");

	
%>