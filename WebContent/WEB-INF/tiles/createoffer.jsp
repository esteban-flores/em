<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
<!--

function onDeleteClick(event) 
{
	
	var doDelete = confirm("Are you sure you want to delete this offer?");
	
	if(doDelete == false) {
		event.preventDefault();
	}
}

function onReady() 
{
	$("#delete").click(onDeleteClick);
}

$(document).ready(onReady);
//-->
</script>

<h2 style="text-align: center;">Event creation</h2>

<sf:form method="post"
	action="${pageContext.request.contextPath}/docreate"
	commandName="offer">
	<sf:input type="hidden" name="id" path="id" />

	<table class="formtable">
		<tr>
			<td>
				<sf:input class="control" path="title" name="title" placeholder="Desired event name"
					></sf:input><br /> <sf:errors path="title"
					cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td><sf:input class="control" path="type" name="type" placeholder="Type of event"
					></sf:input><br /> <sf:errors path="type"
					cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td><sf:input class="control" path="vanue" name="vanue" placeholder="Venue for event"
					rows="10" cols="10"></sf:input><br /> <sf:errors path="vanue"
					cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td><sf:input class="control" path="date" name="date" placeholder="Date & Time: 2014-12-12 22:00:00"
					></sf:input><br /> <sf:errors path="date"
					cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td><sf:input class="control" path="available" name="available" placeholder="Available tickets"
					></sf:input><br /> <sf:errors path="available"
					cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td><sf:input class="control" path="total" name="total" placeholder="Total tickets"
					></sf:input><br /> <sf:errors path="total"
					cssClass="error"></sf:errors></td>
		</tr>
		<tr>
			<td><input class="control" value="Save Event" type="submit" /></td>
		</tr>

		<c:if test="${offer.id != 0}">
			<tr>
				<td class="label"></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="delete control" name="delete" id="delete"
					value="Delete this offer." type="submit" /></td>
			</tr>
		</c:if>
	</table>

</sf:form>
