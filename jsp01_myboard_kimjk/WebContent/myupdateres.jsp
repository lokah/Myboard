<%@page import="com.my.dao.MyDao"%>

<%@page import="com.my.dto.MyDto"%>

<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

	<%
		int myno = Integer.parseInt(request.getParameter("myno"));

		String mytitle = request.getParameter("mytitle");

		String mycontent = request.getParameter("mycontent");
		

		MyDto dto = new MyDto();//MyDto dto = new MyDto(myno,null,mytilt,mycontent,null);

		dto.setMyno(myno);

		dto.setMytitle(mytitle);

		dto.setMycontent(mycontent);
		

		MyDao dao = new MyDao();

		int res = dao.update(dto);

		if (res > 0) {
	%>



	<script type="text/javascript">
		alert("수정 성공");

		location.href = "mylist.jsp";
	</script>

	<%
		} else {
	%>



	<script type="text/javascript">
		alert("수정 실패");

		location.href = "myupdate.jsp";
	</script>

	<%
		}
	%>





</body>

</html>