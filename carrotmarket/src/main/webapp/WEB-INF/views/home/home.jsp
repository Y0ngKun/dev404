<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="pageTitle" value="당근마켓"></c:set>
<%@ include file = "../include/header.jspf" %>

  <section id="home-main-section-top" class="background-pale-peach">
    <div id="home-main-top">
      <div class="home-main-desc">
        <h1 class="home-main-title">당신 근처의<br>당근마켓</h1>
        <p class="text-m">
          중고 거래부터 동네 정보까지, 이웃과 함께해요.<br>가깝고 따뜻한 당신의 근처를 만들어요.
        </p>
      </div>
      <div class="home-main-image-top">
          <img srcset="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-top-d6869a79bc4cb58ea59aa5a408decfdf4a4ba60ac639837081da12861083cdbb.webp " class="home-main-image-top" alt="중고거래, 동네생활 질문글과 동네가게" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-top-68ba12f0da7b5af9a574ed92ca8b3a9c0068db176b566dd374ee50359693358b.png" />
      </div>
    </div>
  </section>
  
<%@ include file="../include/footer.jspf"%>