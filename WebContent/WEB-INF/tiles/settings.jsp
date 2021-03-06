<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h2>Edit Account</h2>

<sf:form id="details" method="post"
	action="${pageContext.request.contextPath}/settings"
	commandName="user">

	<table class="formtable">
		
		<tr>
			<td class="label">UserName:</td>
			<td><sf:input class="control" path="username" name="username"
					type="text" value="${myuser.username}" /><br />
				<div class="error">
					<sf:errors path="username"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Name:</td>
			<td><sf:input class="control" path="name" name="name"
					type="text" /><br />
				<div class="error">
					<sf:errors path="name"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Email:</td>
			<td><sf:input class="control" path="email" name="email"
					type="text" />
				<div class="error">
					<sf:errors path="email"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Password:</td>
			<td><sf:input id="password" class="control" path="password"
					name="password" type="password" />
				<div class="error">
					<sf:errors path="password"></sf:errors>
				</div></td>
		</tr>
		<tr>
			<td class="label">Confirm Password:</td>
			<td><input id="confirmpass" class="control" name="confirmpass"
				type="password" />
				<div id="matchpass"></div></td>
		</tr>
		
		<tr>
<td class="label">Update Image:</td>
<td><input  type="file" name="file" id="file"/></td>
</tr> 
	<tr>
			<td class="label"></td>
			<td><input class="control" value="Update" type="submit" /></td>
		</tr>
		
		<tr>
			<td class="label"></td>
			<td><input class="control" value="Reset" type="reset" /></td>
		</tr>
	</table>
	
	
</sf:form>
