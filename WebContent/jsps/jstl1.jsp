<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSTL技术演示1</title>
	</head>
	<body>
		1.c:out<br>
		<% pageContext.setAttribute("name", "Alice"); %>
		<c:out value="${name}"></c:out> ## ${name} ----发现好像c:out与EL表达式没什么区别
		<br>
		<c:out value="<font color='red' >湖南益阳</font>"></c:out> ## ${"<font color='red'>湖南益阳</font>" }
		-----区别出来了，因为c:out的escapeXml属性默认为true 该属性为 true时可以对一些特殊符号进行转换
		而EL表达式只能原样输出。
		<hr>
		2.c:set <br>
		2.1 给基本数据类型变量设置值<br>
		<c:set var="num" value="100" />
		${num+100} ##  ${num+0.5} <br>
		2.2 给JavaBean设置值<br>
		<jsp:useBean id="user" class="cn.hncu.domain.User">
			<jsp:setProperty property="name" name="user" value="Jack" />
			<jsp:setProperty property="age" name="user" value="22" />
		</jsp:useBean>
		${user.name},${user.age}<br>
		<c:set target="${user}" property="name" value="Alice" />
		name改为Alice: ${user.name},${user.age}<br>
		<hr>
		3.c:remove <br>
		<c:remove var="num"/>
		${empty num}
		<hr>
		4.c:if <br>
		<c:if test="${empty num}">
			没有num属性
		</c:if>
		<br>
		两个c:if组成if,else语句：
		<c:set var="userName" value="Tom" scope="session" />
		<c:if test="${empty sessionScope.userName}" var="boo" scope="page">
			用户名不存在
		</c:if>
		<br>
		<%-- 
			<!-- 当然也可以这样 -->
			<c:if test="${!empty sessionScope.userName}">
		 --%>
		<c:if test="${!boo}">
			你好，${sessionScope.userName}
		</c:if>
		<hr>
		5.c:choose,c:when,c:otherwise 相当于 if,else if,else<br>
		<c:set var="score" value="85" />
		<c:choose>
			<c:when test="${score>=90}">优秀</c:when>
			<c:when test="${score>=80}">良好</c:when>
			<c:when test="${score>=70}">一般</c:when>
			<c:when test="${score>=60}">及格</c:when>
			<c:otherwise>不及格</c:otherwise>
		</c:choose>
		
	</body>
</html>