<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
</head>
	<frameset rows="20%,80%">
		<frame src="http://localhost:8080/test/menu.do" name=menu>
		<frame src="http://localhost:8080/test/memberlist.do" name=menu>
	</frameset>
</html>
