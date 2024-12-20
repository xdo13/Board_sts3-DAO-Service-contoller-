console.log("Reply Module.........");

let replyService = (function(){
	function add(reply, callback, error){
		console.log("add reply.........");
		
		$.ajax({
			type : 'post',
			url : '/replies/new',
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
					if(callback) {
						callback(result);
				}
			},
			error : function(xhr, status, er) {
			if (error) {
				error(er);
				}
				
				
			}
		})
	}
	function getList(param, callback, error){
	// 전체 데이터 가져오기
	let bno = param.bno;
	
	let page = param.page || 1;
	
	$.ajax({
	type: "get",
	url: "/replies/pages/" + bno + "/" + page + "json",
	
	success: function (result, status, xhr) {
		if(callback) {
			callback(result);
		}
	},
	error: function (xhr, status, er){
	if(error) {
		error(er);
		}
		},
	})
}
	function remove(rno, callback, error){
	$.ajax({
		type: "delete",
		url: "/replies/" + rno,
		success: function (result, status, xhr){
			if(callback){
			error(er);
			}
			},
		});
	}
	
	return { add: add,
			 getList : getList,
			 remove: remove,
			  };
})();