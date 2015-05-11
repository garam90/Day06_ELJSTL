<%@page import="com.sds.icto.mysite.vo.GuestBookVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/Day05_MySite/assets/css/guestbook.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<jsp:include page="/views/include/header.jsp" flush="false" />
		</div>
		<div id="content">
			<div id="guestbook">
				<form action="/Day05_MySite/guest?action=insert" method="post">
					<table border=1 width=500>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name" value="${sessionScope.name }"></td>
							<td>비밀번호</td>
							<td><input type="password" name="pass"></td>
						</tr>
						<tr>
							<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
						</tr>
						<tr>
							<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
						</tr>
					</table>
				</form>
				<ul>
					<li>
	<c:forEach items="${requestScope.list }" var="guest" varStatus="status">
		<table width=510 border=1>
			<tr>
				<td>[${status.count}]</td>
				<td>${guest.name }</td>
				<td>${guest.reg_date }</td>
				<td><a href="/Day05_MySite/guest?action=deleteform&id=${guest.no }">삭제</a></td>
			</tr>
			<tr>
				<td colspan=4>${guest.message }</td>
			</tr>
		</table>
	<br>
	</c:forEach>
					</li>
				</ul>
			</div>
		</div>
		<div id="navigation">
			<c:import url="/views/include/navigation.jsp">
				<c:param name="type" value="guestbook"></c:param>
			</c:import>
		</div>
		<div id="footer">
			<p>(c)opyright 2014</p>
		</div>
	</div>
</body>
</html>