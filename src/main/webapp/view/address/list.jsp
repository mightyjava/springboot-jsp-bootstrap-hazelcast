<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<div class="panel panel-default">
	<div class="panel-heading">
		<strong>
			<span class="glyphicon glyphicon-list"></span> Address List
		</strong>
		<div class="btn-group pull-right">
			<a href="javascript:void(0);" class="btn btn-default btn-sm" onclick="addForm('address')" title="Add New Address">
				<span class="glyphicon glyphicon-plus-sign"></span>
			</a>
			<a href="javascript:void(0);" class="btn btn-default btn-sm" onclick="refresh('address')" title="Refresh Address">
				<span class="glyphicon glyphicon-refresh"></span>
			</a>
		</div>
	</div>
	<div class="panel-body">
		<table class="table table-bordered table-condensed table-hover table-striped">
			<thead>
				<tr>
					<th>Country</th>         
					<th>State</th>
					<th>City</th>
					<th>Line</th>
					<th>Pin Code</th>
					<th>User</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${addresses}" var="address">
					<tr>
						<td>${address.country}</td>
						<td>${address.state}</td>
						<td>${address.city}</td>
						<td>${address.addressLine}</td>
						<td>${address.pinCode}</td>
						<td>${address.user.userName}</td>
						<td><a href="javascript:void(0);" onclick="editForm('address', '${address.id}')"><span class="glyphicon glyphicon-edit"></span></a></td>
						<td><a href="javascript:void(0);" onclick="deleteData('address', '${address.id}')"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>