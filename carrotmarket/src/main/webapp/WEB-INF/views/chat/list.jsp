<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="채팅"></c:set>

<%@ include file="../include/header.jspf"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="../css/chat.css">


<c:if test="${create != null }">
	<input type="hidden" id="create" value="${create}" />
</c:if>

<div id="container" data-id="${loginUser}">
	<aside>
		<ul id="chatList"></ul>
	</aside>

	<main>
		<header id="chatInfo">
			<!-- 
      <div id="chatroom" data-roomid="${chatRoom.roomId}" data-userid="${loginUser}">
      	<img src="../attach/thumbnail/${article.id}" style="width : 140px;border-radius: 10px;"/>
        <div>
        	<h2>${article.title}</h2>
        	<h3><fmt:formatNumber value="${article.cost}" pattern="#,###"></fmt:formatNumber>원</h3>
        	<div>
        		<button id="rebtn">예약하기</button>
        	</div>
       	</div>
      </div>
       -->
			
		</header>

		<ul id="chat">
		</ul>

		<footer>
			<textarea placeholder="Type your message" id="chatting"></textarea>
			<a href="#" id="sendBtn"><i class="bi bi-send"></i></a>
			
		</footer>
	</main>
</div>
<div>
	<ul class="contextmenu">
		<li><a href="#" id="chat_delete" data-type="delete">삭제하기</a></li>
	</ul>
</div>
<script src="../js/secondhand/chat.js"></script>
<%@ include file="../include/footer.jspf"%>