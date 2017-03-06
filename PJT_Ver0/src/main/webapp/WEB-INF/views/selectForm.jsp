<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/include/header.jsp" %>

<h2> 회원 조회</h2>
 <form method="post" action="selectOne_ok.do">
    <table>
      <tr>
         <td>병원이름 </td>
         <td> <input name="name" size="20"> </td>
      </tr>
      <tr>
         <td>위치 </td>
         <td>
         	<select name="address">
         		<option value="중구">서울특별시 중구</option>
         		<option value="송파구">서울특별시 송파구</option>
         		<option value="부평구">인천시 부평구</option>
         		<option value="수지구">용인시 수지구</option>
         	</select>
         </td>
      </tr>
      <tr>
         <td>진료과목 </td>
         <td> <input name="department" size="20"> </td>
      </tr>
      <tr>
         <td>기타사항 </td>
         <td> <input type="checkbox" name="fdoctor" size="20"> 여의사
          <input type="checkbox" name="foreigner" size="20">외국인
         </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
            <input type="submit" value="검색"/>
            <input type="reset" value="취소"/>
         </td>
      </tr>    
    </table> 
 </form>

<%@ include file="/resources/include/footer.jsp" %>