<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/resources/include/header.jsp" %>
<body>
  <div id="tList_wrap">
    <h2 class="tList_title">가입회원 목록</h2>
    <table width="400" id="tList_t">
      <tr>
          <th> 아이디 </th>
          <th> 비번 </th>
          <th> 이름 </th>
          <th> 수정 </th>
          <th> 삭제 </th>
      </tr>
      
      <c:forEach var="tList" items="${list}">
         <tr>
            <td align="center"> ${tList.id}</td>
            <td align="center"> ${tList.pwd}</td>
            <td align="center"> ${tList.name}</td>
            <td align="center"> 
              <input type="button" value="수정"
              onClick="location='update.do?id=${tList.id}'" class="btn"/>
             </td>
            <td align="center"> 
             <input type="button" value="삭제"
                   onclick="if(confirm('정말로 삭제 하시겠습니까?')){
							location='delete.do?id=${tList.id}' 
							}else{ return; }" class="btn"/>            
            </td>
         </tr>      
      </c:forEach>    
    </table>  
  </div>

</body>


<%@ include file="/resources/include/footer.jsp" %>
