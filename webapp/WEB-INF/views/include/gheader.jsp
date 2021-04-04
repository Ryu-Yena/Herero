<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Header -->
<div id="gheader">
	<h1>
		<a href="${pageContext.request.contextPath}/"><img alt="" src="${pageContext.request.contextPath}/images/here_logo.png" style="width: 80px; padding: 5px 0 5px 0;"></a>
	</h1>
	<nav id="gnav">
		<c:choose>
		<c:when test="${empty authUser}">
			<ul>
				<li><a class="btn btn-defalult" href="${pageContext.request.contextPath}/user/loginForm">�α���</a></li>
				<li><a class="btn btn-defalult" href="${pageContext.request.contextPath}/user/joinForm">ȸ������</a></li>
			</ul>
		</c:when>
		<c:otherwise>
			<ul>
				<li class="userName">${sessionScope.authUser.user_name}��</li>
				<li><a class="btn btn-defalult" href="${pageContext.request.contextPath}/user/logout">�α׾ƿ�</a></li>
				<li><a class="btn btn-defalult" href="${pageContext.request.contextPath}/user/modifyForm">ȸ����������</a></li>
			</ul>
		</c:otherwise>
	</c:choose>

	</nav>
</div>
