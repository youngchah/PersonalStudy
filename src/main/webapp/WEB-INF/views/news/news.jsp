<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>News List</title>
    <style>
        /* CSS 스타일링은 여기에 추가합니다. */
    </style>
</head>
<body>
    <div>
        <h1>News List</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Title</th>
<!--                     <th>Description</th> -->
                    <th>Publication Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${newsItems}" var="newsItem">
                    <tr>
                    	<td><a href="${newsItem.link}" target="_blank">${newsItem.title}</a></td>
<%--                         <td>${newsItem.description}</td> --%>
                        <td>${newsItem.pubDate}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>