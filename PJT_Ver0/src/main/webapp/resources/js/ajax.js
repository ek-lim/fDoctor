function ajax(){
    // 동기화할 ID 가져오기
    var name = $("#name").val();
    var hid = $("#hid").val();
    var review = decodeURIComponent($("#review").val());
    
    
    name = encodeURIComponent(name);
    review = encodeURIComponent(review);
    
    // 문자열 배열을 name/value 형태로 담는다.
    var allData = { "name": name1, "hid": hid, "review": review };
     
    $.ajax({
        url:"detail.do",
        type:'POST',
        data: allData,
        success:function(data){
            alert("후기 작성쓰!");
            window.opener.location.reload();
            self.close();
        },
        error:function(jqXHR, textStatus, errorThrown){
            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
            self.close();
        }
    });
}