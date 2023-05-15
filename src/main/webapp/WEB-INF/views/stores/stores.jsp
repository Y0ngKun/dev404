<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    

<c:set var="pageTitle" value="동네 이웃들이 자주가는 동네 가게"></c:set>
<%@ include file="../include/header.jspf" %>

<div class="top-banner">test</div>

<%@ include file="../include/footer.jspf" %>

</body>
<style type="text/css">
.top-banner{
text-align:center;
font-size:100px;
width: 100%;
height: 380px;
background-color: #f7f1eb;
overflow: hidden;
background-image: url("../resources/images/nearby_stores_hero_image.png");
background-size: 453px 260px;
background-repeat: no-repeat;
background-position: center;
}
</style>
</html>