<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/resources/include/header.jsp" %>
<body>
  <div id="tList_wrap">
    <h2 class="tList_title">병원 목록</h2>
    <table width="400" id="tList_t">
      <tr>
          <th> 병원이름 </th>
          <th> 주소 </th>
          <th> 주중 진료시간 </th>
          <th> 진료과목 </th>
          <th> 전화번호 </th>
      </tr>
      
      <c:forEach var="hList" items="${list}">
         <tr>
            <td align="center"> ${hList.name}</td>
            <td align="center"> ${hList.address}</td>
            <td align="center"> ${hList.timewday}</td>
            <td align="center"> ${hList.department}</td>
            <td align="center"> ${hList.phone}</td>
            <td align="center"> 
              <input type="button" value="수정"
              onClick="location='update.do?hid=${hList.hid}'" class="btn"/>
             </td>
            <td align="center"> 
             <input type="button" value="삭제"
                   onclick="if(confirm('정말로 삭제 하시겠습니까?')){
							location='delete.do?hid=${hList.hid}' 
							}else{ return; }" class="btn"/>            
            </td>
         </tr>      
      </c:forEach>    
    </table>  
  </div>

</body>


<%@ include file="/resources/include/footer.jsp" %>
