<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>国际化</title>
	</head>
	<body>
		<h1>JSTL技术演示3--国际化</h1>
		<h3>首先必须引入国际化标签库 --> taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" </h3>
		<div>
			<a href="?locale=en_US">English</a>&emsp;<a href="?locale=zh_CN">中文</a>
		</div>
		<!-- 1.设置本地信息 -->
		<%-- 
		
		<fmt:setLocale value="en_US"/> <!-- 写死了 -->
		
		--%>
		<fmt:setLocale value="${param.locale}"/><!-- 配合a标签，写活 -->
		<!-- 2.获取资源文件-->
		<!-- scope="session" 一般这样设置表示一个用户选择了哪种资源 -->
		<fmt:setBundle basename="msg" scope="session" /> 
		<!-- 多个资源文件,需要取别名，同时还需注意 basename是用'.'来区分包 -->
		<fmt:setBundle basename="i18n.a" scope="session"  var="a" /> 
		<!-- 2.读取参数-->
		<fmt:message key="name" />,<fmt:message key="addr" /> <br>
		<!-- 读取是需要 用 bundle去关联 -->
		<fmt:message key="aa" bundle="${a}"/>,<fmt:message key="bb"  bundle="${a}" />
	</body>
</html>