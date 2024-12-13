<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../includes/header.jsp"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Read</h1>
	</div>
</div>

<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Read</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="form-group">
					<label>Bno</label> <input class="form-control" name='bno'
						value=${board.bno } readonly="readonly">
				</div>

				<div class="form-group">
					<label>Title</label> <input class="form-control" name='title'
						value=${board.title } readonly="readonly">
				</div>

				<div class="form-group">
					<label>Text area</label>
					<textarea class="form-control" rows="3" name='content'
						readonly="readonly">${board.content}</textarea>
				</div>

				<div class="form-group">
					<label>Writer</label> <input class="form-control" name='writer'
						value=${board.writer } readonly="readonly">
				</div>

				<button data-oper='modify' class="btn btn-default btn-success">Modify</button>
				<button data-oper='list' class="btn btn-default btn-info">List</button>
				<form id='operForm' action="/board/modify" method="get">
				  <input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno}"/>'>
				  <input type='hidden' name='PageNum' value='<c:out value="${cri.pageNum}"/>'>
				  <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
				  <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
				  <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
				</form>
				
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
</div>
<!-- /#page-wrapper -->
<script>
$(document).ready(function(){
	let operForm = $("#operForm");
	
	$("button[data-oper='modify']").click(function(e) {
		operForm
		.attr("action", "/board/modify")
		.submit();
	});
	$("button[data-oper='list']").click(function(e){
		operForm.find("#bno").remove();
		operForm
		.attr("action", "/board/list")
		.submit();
	});
	
})

</script>
<%@include file="../includes/footer.jsp"%>
