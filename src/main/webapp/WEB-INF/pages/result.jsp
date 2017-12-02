<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
 <br><br><br>
   <c:if test="${status ne null}">
      <p style="color:red"><c:out value="${status}"/> </p>
   </c:if>
   <a href='http://localhost:8080/House2Home/'>home</a>