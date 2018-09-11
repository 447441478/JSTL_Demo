<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>信息显示</title>
	</head>
	<body>
		<h1>使用JSTL时必须引入标签库，同时需要jstl的jar包</h1>
		用户基本信息(只用EL表达式)：<br>
		&emsp;&emsp;${user.id},${user.name},${user.age}<br>
		用户车辆信息(因为车的数量不定，所以需要EL+JSTL结合才能完成)：<br>
		<!-- 采用增强for循环的方式 -->
		<c:forEach items="${user.cars}" var="car">
			${car.no },${car.name }<br>
		</c:forEach>
	</body>
</html>