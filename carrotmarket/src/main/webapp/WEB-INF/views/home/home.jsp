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
  <section class="home-main-section">
    <div class="home-main-content">
      <div class="home-main-image home-main-image-01">
          <img srcset="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-1-cc678e9a217b96f5cb459f7f0684f5ba67706f9889801618b8cf879fbc2c0ea7.webp " class="home-main-image-01" alt="우리동네 중고 직거래 사진" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-1-39ac203e8922f615aa3843337871cb654b81269e872494128bf08236157c5f6a.png" />
      </div>
      <div>
        <h1 class="home-main-title">우리 동네<br>중고 직거래 마켓</h1>
        <p class="text-m">
          동네 주민들과 가깝고 따뜻한 거래를
          
          지금 경험해보세요.
        </p>
        <div class="home-buttons">
          <a class="home-button text-l text-bold" href="/hot_articles">인기매물 보기</a>
          <a class="home-button text-l text-bold ml-3" href="/trust">믿을 수 있는 중고거래</a>
        </div>
      </div>
    </div>
  </section>
  <section class="home-main-section background-pale-green">
    <div class="home-main-content home-main-reverse">
      <div class="home-main-image home-main-image-02">
          <img srcset="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-2-91a2286453bdf82dea16a7f0ee4ceb9dd325eae0e5a2a9967ba72c344bf8f2fc.webp " class="home-main-image-02" loading="lazy" alt="이웃과 함께하는 동네생활" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-2-f286322ab98acedf914a05bf77e84c67dcb897c8ccb543e66f6afea9d366d06d.png" />
      </div>
      <div>
        <h1 class="home-main-title">이웃과 함께 하는<br>동네생활</h1>
        <p class="text-m">
          우리 동네의 다양한 이야기를
          
          이웃과 함께 나누어요.
        </p>
          <ul class="home-story-list">
            <li class="home-story-list-item">
              <div class="icon-story icon-story-01"></div>
              <div class="text-s text-bold mt-3 mb-2">우리동네질문</div>
              <div class="text-xs">궁금한 게 있을 땐 이웃에게 물어보세요.</div>
            </li>
            <li class="home-story-list-item">
              <div class="icon-story icon-story-02"></div>
              <div class="text-s text-bold mt-3 mb-2">동네분실센터</div>
              <div class="text-xs">무언가를 잃어버렸을 때, 함께 찾을 수 있어요.</div>
            </li>
            <li class="home-story-list-item">
              <div class="icon-story icon-story-03"></div>
              <div class="text-s text-bold mt-3 mb-2">동네모임</div>
              <div class="text-xs">관심사가 비슷한 이웃과 온오프라인으로 만나요.</div>
            </li>
          </ul>
      </div>
    </div>
  </section>
  <section class="home-main-section">
    <div class="home-main-content">
      <div class="home-main-image home-main-image-03">
          <img srcset="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-3-5fd6fb61d603ab919a45566b2ea6b505c83a93ec218f34ddcd5cb482543e2317.webp " class="home-main-image-03" loading="lazy" alt="내 근처에서 찾는 동네가게" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-3-0c8b631ac2294ac5a3b3e7a3a5580c3e68a3303ad2aded1e84aa57a2e1442786.png" />
      </div>
      <div>
        <h1 class="home-main-title">내 근처에서 찾는<br>동네가게</h1>
        <p class="text-m">
          우리 동네 가게를 찾고 있나요?<br>동네 주민이 남긴 진짜 후기를 함께 확인해보세요!
        </p>
        <div class="home-buttons">
          <a target="_blank" id="town-link-button" class="ga-click home-button text-l text-bold" data-event-category="town_link_from" data-event-action="index_base" data-event-label="main_town" href="https://town.daangn.com">당근마켓 동네가게 찾기</a>
        </div>
      </div>
    </div>
  </section>
  <section class="home-main-section background-gray">
    <div class="home-hot-content">
      <h1 class="home-main-title text-center home-hot-title">
         중고거래 인기매물
      </h1>
      <div class="cards-wrap">
        <article class="card-top ">
  <a class="card-link " data-event-label="575090952" href="/articles/575090952">
    <div class="card-photo ">
        <img alt="컴퓨터 본체 팝니다." src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/0fc98633f43d51c0d06717495862b62929c0effe5991a387748ebd2187782ae8.webp?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">컴퓨터 본체 팝니다.</h2>
      <div class="card-price ">
        30,000원
      </div>
      <div class="card-region-name">
        충북 청주시 서원구 사창동
      </div>
      <div class="card-counts">
          <span>
            관심 33
          </span>
        ∙
        <span>
            채팅 77
          </span>
      </div>
    </div>
</a></article>
<article class="card-top ">
  <a class="card-link " data-event-label="575814848" href="/articles/575814848">
    <div class="card-photo ">
        <img alt="이사가면서" src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/a5b14d3e48fc31b95cce83e1b862ea85eb084fdb3264018058af40ffe7c6dcd1_0.webp?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">이사가면서</h2>
      <div class="card-price ">
        10,000원
      </div>
      <div class="card-region-name">
        전북 정읍시 내장상동
      </div>
      <div class="card-counts">
          <span>
            관심 43
          </span>
        ∙
        <span>
            채팅 173
          </span>
      </div>
    </div>
</a></article>
<article class="card-top ">
  <a class="card-link " data-event-label="576670185" href="/articles/576670185">
    <div class="card-photo ">
        <img alt="BMW 푸쉬카" src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/c012d1ac43f28f9e994b5b46dad33f16dd9e995165fea474635e7add56eafcd6_0.webp?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">BMW 푸쉬카</h2>
      <div class="card-price ">
        40,000원
      </div>
      <div class="card-region-name">
        서울 강남구 개포4동
      </div>
      <div class="card-counts">
          <span>
            관심 8
          </span>
        ∙
        <span>
            채팅 26
          </span>
      </div>
    </div>
</a></article>
<article class="card-top ">
  <a class="card-link " data-event-label="576595925" href="/articles/576595925">
    <div class="card-photo ">
        <img alt="거실수납장" src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/3f1ce5c63605ba0a419a7812ae5e28e7fe9b6371d9846dd25f9bbb36c3770100_0.webp?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">거실수납장</h2>
      <div class="card-price blank-price">
        
      </div>
      <div class="card-region-name">
        강원도 춘천시 우두동
      </div>
      <div class="card-counts">
          <span>
            관심 34
          </span>
        ∙
        <span>
            채팅 48
          </span>
      </div>
    </div>
</a></article>
<article class="card-top ">
  <a class="card-link " data-event-label="573343536" href="/articles/573343536">
    <div class="card-photo ">
        <img alt="나이키 신발 팝니다!" src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/5d89e178a12d79fe8b6e568e65f4ed5fe31a21c7e0b97d5c5df67c6e3e5fe62a.webp?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">나이키 신발 팝니다!</h2>
      <div class="card-price ">
        10,000원
      </div>
      <div class="card-region-name">
        경기도 파주시 목동동
      </div>
      <div class="card-counts">
          <span>
            관심 12
          </span>
        ∙
        <span>
            채팅 49
          </span>
      </div>
    </div>
</a></article>
<article class="card-top ">
  <a class="card-link " data-event-label="576651865" href="/articles/576651865">
    <div class="card-photo ">
        <img alt="급처합니다 !!" src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/06a414aa9c113e5e84e57160744bb1872f91f59cec011f9f61c54f4a3555abd8.jpg?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">급처합니다 !!</h2>
      <div class="card-price ">
        80,000원
      </div>
      <div class="card-region-name">
        충남 아산시 배방읍
      </div>
      <div class="card-counts">
          <span>
            관심 6
          </span>
        ∙
        <span>
            채팅 30
          </span>
      </div>
    </div>
</a></article>
<article class="card-top ">
  <a class="card-link " data-event-label="576664276" href="/articles/576664276">
    <div class="card-photo ">
        <img alt="아이폰 12미니 화이트 128기가" src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/d384f7529c39193e6950d88eddecad85385d223f719b698a5f3f319e807d7e48.webp?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">아이폰 12미니 화이트 128기가</h2>
      <div class="card-price ">
        200,000원
      </div>
      <div class="card-region-name">
        충북 청주시 흥덕구 봉명1동
      </div>
      <div class="card-counts">
          <span>
            관심 24
          </span>
        ∙
        <span>
            채팅 39
          </span>
      </div>
    </div>
</a></article>
<article class="card-top ">
  <a class="card-link " data-event-label="574095931" href="/articles/574095931">
    <div class="card-photo ">
        <img alt="까페정리" src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/36aea49ca3e30e55fff1969ccd31e3adecfd36d4ffc78d257b7466ff02e890ec.webp?q=82&amp;s=300x300&amp;t=crop" />
    </div>
    <div class="card-desc">
      <h2 class="card-title">까페정리</h2>
      <div class="card-price ">
        123원
      </div>
      <div class="card-region-name">
        울산 남구 달동
      </div>
      <div class="card-counts">
          <span>
            관심 12
          </span>
        ∙
        <span>
            채팅 23
          </span>
      </div>
    </div>
</a></article>

      </div>
      <div class="text-center">
        <a class="text-bold text-black text-m" id="hot-articles-more" data-url="/hot_articles" href="/hot_articles"> 인기매물 더 보기</a>
      </div>
    </div>
  </section>

    <section class="home-keywords-content">
      <h3 class="home-main-title">
        <a class="text-m text-bold text-black " href="/top_keywords">중고거래 인기검색어</a>
      </h3>
      <ul class="top-keywords-list">
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%EC%9E%90%EC%A0%84%EA%B1%B0">자전거</a>
          </li>
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%EC%9D%98%EC%9E%90">의자</a>
          </li>
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%EC%95%84%EC%9D%B4%ED%8F%B0">아이폰</a>
          </li>
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%EB%83%89%EC%9E%A5%EA%B3%A0">냉장고</a>
          </li>
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%EB%85%B8%ED%8A%B8%EB%B6%81">노트북</a>
          </li>
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%ED%8C%A8%EB%94%A9">패딩</a>
          </li>
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%EC%95%84%EC%9D%B4%ED%8C%A8%EB%93%9C">아이패드</a>
          </li>
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%EB%AA%A8%EB%8B%88%ED%84%B0">모니터</a>
          </li>
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%EC%8A%A4%ED%83%80%EB%B2%85%EC%8A%A4">스타벅스</a>
          </li>
          <li class="keyword-item text-m">
            <a class="keyword-link" rel="nosublink" href="/search/%EC%B1%85%EC%83%81">책상</a>
          </li>
      </ul>
    </section>

<%@ include file="../include/footer.jspf"%>