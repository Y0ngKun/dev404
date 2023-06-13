<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="include/header.jspf" %>


<div class="container text-center justify-content-center" style="margin-top:100px;">

<p><img alt="잘못된 페이지 요청입니다." src="../resources/images/wrongPage.png" style="width: 240px; height: 268px;"> </p>

<h2 style="font-size: 55px;">앗! 잠시만요.</h2>

<div>
<p style="font-size: 19px;">
원하시는 페이지를 찾을 수 없어요. <br/>
찾으시려는 페이지의 주소가 잘못 입력되었거나,<br/>
페이지 주소가 변경 또는 삭제되어 더는 사용하실 수 없습니다.<br/>
입력하신 페이지의 주소가 정확한지 다시 한번 확인해주세요.<br/>
</p>
</div>

<div>
<h4 style="font-size: 23px;"><c:out value="${exception.getMessage()}"></c:out></h4>
 
  <ul>
   <c:forEach items="${exception.getStackTrace() }" var="stack">
     <li style="font-size: 17px;"><c:out value="${stack}"></c:out></li>
   </c:forEach>
  </ul>

</div>

<div  style="width: 70%; height:50px; border-radius: 1%; background-color: #fa6616; margin: 0 auto; line-height: 50px; margin-bottom: 50px; margin-top: 60px;">
<a href="/ex02" style="text-decoration: none;"> <span style="font-size: 20px; color: #ffffff; ">홈으로 이동</span> </a>
</div>

</div> <!-- main content 끝 -->


<%@ include file="include/footer.jspf" %>

</body>
</html>