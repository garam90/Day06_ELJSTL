<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<h1>mysite</h1>
	<ul>
		<c:choose>
			<c:when test="${not empty sessionScope.name }">
				<li><a href="/Day05_MySite/user?a=uinfo">회원정보수정</a><li>
				<li><a href="/Day05_MySite/user?a=logout">로그아웃</a><li>
				<li>${sessionScope.name}님 안녕하세요 :)</li>
			</c:when>
			<c:otherwise>
				<li><a href="/Day05_MySite/user?a=loginform">로그인</a><li>
				<li><a href="/Day05_MySite/user?a=joinform">회원가입</a><li>
			</c:otherwise>
		</c:choose>
	</ul>