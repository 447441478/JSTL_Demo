<%@page import="cn.hncu.domain.Car"%>
<%@page import="cn.hncu.domain.User"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSTL技术演示2</title>
	</head>
	<body>
		6.c:forEach --- 非常重要   <br>
		6.1 普通for循环   <br>
		<c:set var="sum" value="0" />
		<c:forEach begin="1" end="10" step="1" var="i">
			<c:set var="sum" value="${sum+i}" />
		</c:forEach>
		1+2+...+10=${sum} <br>
		6.2 增强for循环 <br>
		&emsp;&emsp;6.2.1 遍历数组 <br>
		<%
			String[] strs = {"aa","bb","张三","cc"};
			//注意，一定要放到容器中，否则无效
			pageContext.setAttribute("strs", strs);
		%>
		<c:forEach items="${strs}" var="str" varStatus="vs">
			&emsp;&emsp;&emsp;&emsp;下标：${vs.index}，第${vs.count}个，值：${str}<br>
		</c:forEach>
		&emsp;&emsp;6.2.2 遍历List <br>
		<%
			List<Object> list = new ArrayList<Object>();
			list.add(100);
			list.add("Jack");
			list.add("abc");
			//注意，一定要放到容器中，否则无效
			pageContext.setAttribute("list", list);
		%>
		<c:forEach items="${list}" var="obj" varStatus="vs">
			&emsp;&emsp;&emsp;&emsp;下标：${vs.index}，第${vs.count}个，值：${obj}<br>
		</c:forEach>
		&emsp;&emsp;6.2.3 遍历Map <br>
		<%
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("name", "Bob");
			map.put("age", 18);
			map.put("id", "u001");
			//注意，一定要放到容器中，否则无效
			pageContext.setAttribute("map", map);
		%>
		<c:forEach items="${map}" var="entry" >
			&emsp;&emsp;&emsp;&emsp;key:${entry.key}，value:${entry.value}<br>
		</c:forEach>
		&emsp;&emsp;6.2.4 遍历JavaBean的List <br>
		<%
			List<Car> cars = new ArrayList<Car>();
			cars.add( new Car("c001","宝马") );
			cars.add( new Car("c002","奔驰") );
			cars.add( new Car("c003","奥迪") );
			pageContext.setAttribute("cars", cars);
		%>
		<c:forEach items="${cars}" var="car">
			&emsp;&emsp;&emsp;&emsp;${car.no},${car.name} <br>
		</c:forEach>
		<hr>
		7. c:forTokens标签: 字符串拆分 <br>
		<c:forTokens items="a,bc,def,xx x" delims="," var="str">
			${str} #
		</c:forTokens>
		<hr>
		8. c:import标签: 动态导入 <br>
		<c:import url="import.jsp"  charEncoding="utf-8"  />
		<hr>
		9. c:url标签: 重写url, 以后开发时的后台地址都用这种方式写，非常保险，也简单(斜杠代表项目根目录)! <br>
		<c:url value="/jsps/jstl2.jsp" />
		<hr>
		10. c:redirect标签: 重定向。<br>
		注释了，不然当前也就显示不了了。
		<%-- 
		<c:redirect url="/" />
		--%>
		<div style="height: 400px"></div>
	</body>
</html>