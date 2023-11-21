<%@page import="DBPKG.Dao"%>
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
	
	<script type="text/javascript">
	
		function onJoin(){
			
			// 각 폼 안에 있는 input들의 값 호출
				//document.폼네임.inputname
			
				const joinForm = document.joinForm;
			
			if(joinForm.custno.value == ""){alert('회원번호를 입력해주세요');joinForm.custno.focus(); return false;}
			if(joinForm.custname.value == ""){alert('회원성명을 입력해주세요');joinForm.custname.focus(); return false;}
			if(joinForm.phone.value == ""){alert('회원전화를 입력해주세요');joinForm.phone.focus(); return false;}
			if(joinForm.address.value == ""){alert('회원주소를 입력해주세요');joinForm.address.focus(); return false;}
			if(joinForm.joindate.value == ""){alert('가입일자를 입력해주세요');joinForm.joindate.focus(); return false;}
			if(joinForm.grade.value == ""){alert('고객등급을 입력해주세요');joinForm.grade.focus(); return false;}
			if(joinForm.city.value == ""){alert('도시코드를 입력해주세요');joinForm.city.focus(); return false;}

			
			// 1. 폼 가져오기
			document.joinForm.submit(); //submit() : 폼 전송 vs reset : 폼 초기화
		}
	
	</script>
	
	
	<%
		Dao dao = new Dao();
		int custno = dao.lastNo(); // 마지막번호+1 가져오기
	
	%>
	
	
	
	<center>
		<h3> 홈쇼핑 회원등록 </h3>
			
			<form name="joinForm" method="post" action="joinLogic.jsp">
			<div>
				<table>
					
						<tr><td> 회원번호(자동발생) <input type="text" name="custno" value =<%=custno%>> </td></tr>
						<tr><td> 회원성명 <input type="text" name="custname"/> </td></tr>
						<tr><td> 회원전화 <input type="text" name="phone"/> </td></tr>
						<tr><td> 회원주소 <input type="text" name="address"/> </td></tr>
						<tr><td> 가입일자 <input type="text" name="joindate"/> </td></tr>
						<tr><td> 고객등급[A:VIP, B:일반, C:직원] <input type="text" name="grade"/> </td></tr>
						<tr><td> 도시코드 <input type="text" name="city"/> </td></tr>
						
						<center>
							<button type="button" onclick="onJoin()" > 등록 </button>
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