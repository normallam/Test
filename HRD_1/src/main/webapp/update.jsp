<%@page import="DBPKG.Dao"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file = "Header.jsp"%>
	
	
	
	
	
	<%
		int custno = Integer.parseInt(request.getParameter("custno"));
		
		Dao dao = new Dao();
		
		Map<String, String> map = dao.getMember(custno);
	%>

	<script type="text/javascript">
		function onUpdate(){document.updateForm.submit(); alert("회원정보수정이 완료되었습니다.");}
	</script>

	<center>
		<h3> 홈쇼핑 회원 정보 수정 </h3>
		<form name="updateForm" method="post" action="updateLogic.jsp">
			<div>
				<table>
					
						<tr><td> 회원번호(자동발생) <input name="custno" value=<%=map.get("custno") %>> </td></tr>
						<tr><td> 회원성명 <input name="custname" value=<%=map.get("custname") %> /> </td></tr>
						<tr><td> 회원전화 <input name="phone" value=<%=map.get("phone") %> /> </td></tr>
						<tr><td> 회원주소 <input name="address" value=<%=map.get("address") %> /> </td></tr>
						<tr><td> 가입일자 <input name="joindate" value=<%=map.get("joindate") %> /> </td></tr>
						<tr><td> 고객등급[A:VIP, B:일반, C:직원] <input name="grade" value =<%=map.get("grade") %> /> </td></tr>
						<tr><td> 도시코드 <input name="city" value =<%=map.get("city") %> /> </td></tr>
						<tr>
							<td colspan="2">
						</tr>
						<center>
							<button type="button" onclick="onUpdate()" > 수정 </button>
							<a href="list.jsp">
							<button type="button" > 조회 </button>
							</a>
						</center>

				</table>	
			</div>
			</form>
	</center>
	<%@include file = "Footer.jsp"%>
</body>
</html>