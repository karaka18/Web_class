<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%
	String realFolder = request.getServletContext().getRealPath("/my_upload");
	String originalFileName1=realFolder;
	try{	
	System.out.println("실제폴더" + realFolder);
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, 10*1024*1024, "UTF-8", 
			new DefaultFileRenamePolicy()); 
	//데이터 받기----<주의 하기> request 가 아닌 multi 로 값을 받는다. 
	//폼에서 전송한 파라미터의 이름을 인자로 받아서 그 파라미터의 값을 반환한다. 
	//String subject = multi.getParameter("subject");
	//String content = multi.getParameter("content");
	
	//사용자가 직접 저장한 파일 명을 반환
	
	//기존에 업로드한 파일들 중에 이름이 겹칠 경우 뒤에 번호가 붙는데, 그렇게 변환된 파일 이름을 반환
	Enumeration fileNames = multi.getFileNames();
	String file1 = (String)fileNames.nextElement();	
	originalFileName1 = multi.getOriginalFileName(file1);
	System.out.println("오리지널 파일이름 : "+originalFileName1);
	//서버상에 업로드된 파일에 대한 파일 객체를 반환한다. 
	//File file1 = multi.getFile("upload1");
	}catch(Exception e){
		System.out.println(e.toString());
	}
	
%>
<%= realFolder+'/'+originalFileName1 %>