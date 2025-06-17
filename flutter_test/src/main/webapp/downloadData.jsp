<%@ page import="java.util.*" %>
<%@ page import="dto.Goods" %>
<%@ page import="com.google.gson.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String jsonString = null;

	List<Goods> list = new ArrayList<Goods>();
	list.add(new Goods("사탕1", 1000, "00001", "http://192.168.0.37:8181/flutter_test/images/candy1.png"));
	list.add(new Goods("사탕2", 2000, "00002", "http://192.168.0.37:8181/flutter_test/images/candy2.png"));
	list.add(new Goods("사탕3", 3000, "00003", "http://192.168.0.37:8181/flutter_test/images/candy3.png"));
	
	try{
		Gson gson = new Gson();
		jsonString = gson.toJson(list);
		System.out.println(jsonString);
	}catch(Exception e){
		System.out.println("오류 : "+e.getLocalizedMessage());
	}
%>
<%=jsonString %>