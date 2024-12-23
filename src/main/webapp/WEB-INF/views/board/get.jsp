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
	<input type='hidden' id='bno' name='bno'
		value='<c:out value="${board.bno}"/>'> <input type='hidden'
		name='PageNum' value='<c:out value="${cri.pageNum}"/>'> <input
		type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
	<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
	<input type='hidden' name='keyword'
		value='<c:out value="${cri.keyword}"/>'>
</form>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<!-- /.panel-heading -->
				<i class="fa fa-comments fa-fw"></i>Reply
				<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
			</div>
			<div class="panel-body">
				<ul class="chat">
					<li class="left clearfix" data-rno='12'>
						<div>
							<div class="header">
								<strong class="primary-font">user00</strong> <small
									class="pull-right text-muted">2024-12-23 17:33</small>
							</div>
							<p>Good job!</p>
						</div>
					</li>

				</ul>
			</div>
			<div class="panel-footer"></div>
		</div>
	</div>

</div>
<!-- /.panel-body -->

<!-- /.panel -->

<!-- /.col-lg-12 -->

<!-- /.row -->

<!-- /#page-wrapper -->
<script type="text/javascript" src="/resources/js/reply.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	let bnoValue = '${board.bno}';
	let replyUL = $(".chat");
	
	showList(1);
	
	console.log(bnoValue);
	console.log(replyUL);
});


	/* var bnoValue = '<c:out value="${board.bno}"/>';
	console.log("bnoValue");
	console.log("bno: " + bnoValue); */

	/*  replyService.add(
	 {reply:"js test", replyer:"tester", bno:bnoValue},
	 function(result){
	 alert("REsult : " + result);
	 }
	 );  */
	/*  replyService.getList({bno:bnoValue, page:1}, function(list){
	 for(let i =0; i<list.length; i++){
	 console.log(list[i]);
	 }
	 });  */
	/*   replyService.remove(5, function(result){
	 console.log("Result : " + result);
	 if(result === "success"){
	 alert("REMOVED");
	 }
	 });    */
	/*   replyService.update(
	 {rno:25, bno:bnoValue, reply:"수정하고있음8282"},
	 function(result){
	 alert("수정완료");
	 });  */
	/* replyService.get(25, function(data) {
		console.log(data);
	}) */
</script>
<script type="text/javascript">
	$(document).ready(function() {

		let operForm = $("#operForm");

		$("button[data-oper='modify']").click(function(e) {
			operForm.attr("action", "/board/modify").submit();
		});
		$("button[data-oper='list']").click(function(e) {
			operForm.find("#bno").remove();
			operForm.attr("action", "/board/list").submit();
		});

	})
</script>
<%@include file="../includes/footer.jsp"%>
