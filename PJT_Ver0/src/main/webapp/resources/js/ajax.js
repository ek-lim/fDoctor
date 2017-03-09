$.ajax({
    url : "review.do",
    dataType : "json",
    type : "post",
    data : $('#formId').serializeArray(),
    success: function(data) {
        alert("성공:"+data.KEY);
    },
    error:function(request,status,error){
        alert("code:"+request.status+"\n"+"error:"+error);
    }
 
}); 