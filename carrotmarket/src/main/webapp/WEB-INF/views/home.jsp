<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

<title>당신 근처의 당근마켓</title>
<meta name="description"
	content="중고 거래부터 동네 정보까지, 이웃과 함께해요. 가깝고 따뜻한 당신의 근처를 만들어요." />
<link rel="author" href="당근마켓" />
<meta property="og:url" content="https://www.daangn.com/" />
<meta property="og:title" content="당신 근처의 당근마켓" />
<meta property="og:description"
	content="중고 거래부터 동네 정보까지, 이웃과 함께해요. 가깝고 따뜻한 당신의 근처를 만들어요." />
<meta property="og:site_name" content="당근마켓" />
<meta property="og:image"
	content="https://www.daangn.com/images/meta/home/daangn.png" />
<meta property="og:type" content="article" />
<meta property="og:locale" content="ko_KR" />
<meta property="fb:app_id" content="1463621440622064" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:site" content="@danggeunmarket" />
<meta name="twitter:title" content="당신 근처의 당근마켓" />
<meta name="twitter:description"
	content="중고 거래부터 동네 정보까지, 이웃과 함께해요. 가깝고 따뜻한 당신의 근처를 만들어요." />
<meta name="twitter:image"
	content="https://www.daangn.com/images/meta/home/daangn.png" />
<meta name="naver-site-verification"
	content="d1f8112731c18313535732cf2516d6401bfed40a" />
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token"
	content="BPPkbm0Lf_hBfZ6jFobdPmrqM4CUZAsvV3VOLHvpzbrsqWioPOeV1XEWRAHfeEF1XVGwTptnE-_TBFPj1yatpA" />

<link rel="shortcut icon" type="image/x-icon"
	href="https://d1unjqcospf8gs.cloudfront.net/favicon.ico" />
<link rel="apple-touch-icon" sizes="192x192"
	href="/images/icons/daangn_logo_192.png">
<link rel="apple-touch-icon-precomposed"
	href="/images/icons/daangn_logo_192.png">
<link rel="icon" sizes="192x192"
	href="/images/icons/daangn_logo_android_192.png">

<link rel="alternate" hreflang="en" href="https://us.karrotmarket.com" />
<link rel="alternate" hreflang="en-us"
	href="https://us.karrotmarket.com" />
<link rel="alternate" hreflang="en-gb"
	href="https://uk.karrotmarket.com" />
<link rel="alternate" hreflang="en-ca"
	href="https://ca.karrotmarket.com" />
<link rel="alternate" hreflang="ja" href="https://jp.karrotmarket.com" />
<link rel="alternate" hreflang="ja-jp"
	href="https://jp.karrotmarket.com" />
<link rel="alternate" hreflang="ko" href="https://daangn.com" />
<link rel="alternate" hreflang="ko-kr" href="https://daangn.com" />

<link rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<link rel="canonical" href="https://www.daangn.com/" />

<link rel="stylesheet" media="all"
	href="https://d1unjqcospf8gs.cloudfront.net/assets/home/home-7e9fc452073ad363e156388e1ddf522db37ba9cd56962e1399ecc7f6ec94337b.css" />

<style type="text/css">

.headerNav ul li a {
color:#4d5159;
}
.headerNav ul li a:hover{color:rgba(134, 139, 147, 1);}
.search{background-color: #f2f3f6; border: solid 1px #CED4DA; color:#212124}
.chatBtn{border: 1px solid #d1d3d8 !important;}

</style>


</head>

<body class="hoian-kr">



	<noscript>
		<img height="1" width="1" style="display: none" alt="facebook"
			src="https://www.facebook.com/tr?id=992961397411651&ev=PageView&noscript=1" />
	</noscript>

	<div id="gnb-root">
		<div class="light-theme">
			<div class="_1knjz490">
				<div class="_1knjz491 _1s38h9c0">
					<a class="_1knjz492" href="#"
						aria-label="logo"><span class="_1knjz493"><svg
								width="100" height="28" viewBox="0 0 100 28" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M10.6241 5.1897C4.76013 5.1897 0 9.94831 0 15.8104C0 18.2759 0.845096 20.5345 2.24209 22.3276C2.34557 22.4655 2.4663 22.6035 2.56978 22.7414C2.74225 22.9311 2.89747 23.1207 3.08719 23.3104L3.10443 23.3276C5.13956 25.4828 7.70934 27.1207 10.6068 28C13.5043 27.1207 16.0741 25.4828 18.1092 23.3276L18.1264 23.3104C18.2989 23.1207 18.4714 22.9311 18.6439 22.7414C18.7646 22.6035 18.8681 22.4655 18.9715 22.3276C20.3685 20.5345 21.2136 18.2759 21.2136 15.8104C21.2309 9.93107 16.488 5.1897 10.6241 5.1897ZM10.6241 19.8621C8.38197 19.8621 6.57105 18.0518 6.57105 15.8104C6.57105 13.569 8.38197 11.7587 10.6241 11.7587C12.8662 11.7587 14.6771 13.569 14.6771 15.8104C14.6771 18.0518 12.8662 19.8621 10.6241 19.8621Z"
									fill="#FF7E36"></path>
								<path
									d="M14.0743 4.96552C14.7814 4.81035 15.2988 4.18965 15.2988 3.44827C15.2988 2.58621 14.5917 1.87931 13.7293 1.87931C13.4879 1.87931 13.2637 1.93104 13.0567 2.03449C12.8325 0.879318 11.8322 0 10.6076 0C9.38312 0 8.3828 0.879318 8.1586 2.03449C7.95163 1.93104 7.72742 1.87931 7.48597 1.87931C6.62363 1.87931 5.9165 2.58621 5.9165 3.44827C5.9165 4.18965 6.45116 4.81035 7.14103 4.96552C8.22758 4.58621 9.38312 4.37931 10.5904 4.37931C11.7977 4.37931 12.9877 4.58621 14.0743 4.96552Z"
									fill="#00B493"></path>
								<path
									d="M28.8191 15.9481H35.3211C36.1317 15.9481 36.7699 15.4654 36.7699 14.4654C36.7699 13.4654 36.1317 12.9826 35.3211 12.9826H29.6642C29.371 12.9826 29.1985 12.8102 29.1985 12.5344V9.98264C29.1985 9.70678 29.371 9.53437 29.6642 9.53437H35.3211C36.1317 9.53437 36.7699 9.0516 36.7699 8.0516C36.7699 7.0516 36.1317 6.56885 35.3211 6.56885H28.8191C26.6115 6.56885 25.5767 7.5516 25.5767 9.39643V13.1378C25.5767 14.9826 26.6115 15.9481 28.8191 15.9481Z"
									fill="#FF7E36"></path>
								<path
									d="M36.9594 17.1379H30.5608C27.6806 17.1379 25.7834 18.7241 25.7834 21.0517C25.7834 23.3276 27.6806 24.9138 30.5608 24.9138H36.9594C39.8396 24.9138 41.754 23.3276 41.754 21.0517C41.754 18.7414 39.8396 17.1379 36.9594 17.1379ZM36.9594 21.9138H30.5608C29.8537 21.9138 29.4743 21.5345 29.4743 21.0517C29.4743 20.5345 29.8537 20.1379 30.5608 20.1379H36.9594C37.6665 20.1379 38.0632 20.5345 38.0632 21.0517C38.0632 21.5345 37.6493 21.9138 36.9594 21.9138Z"
									fill="#FF7E36"></path>
								<path
									d="M42.3754 9.60339H41.3578V7.65512C41.3578 6.81029 40.6162 6.17236 39.5469 6.17236C38.4776 6.17236 37.7188 6.81029 37.7188 7.65512V15.2068C37.7188 16.0517 38.4776 16.6896 39.5469 16.6896C40.6162 16.6896 41.3578 16.0517 41.3578 15.2068V13.1551H42.3754C43.2032 13.1551 43.8586 12.431 43.8586 11.3965C43.8586 10.3965 43.2032 9.60339 42.3754 9.60339Z"
									fill="#FF7E36"></path>
								<path
									d="M60.5189 17.6206H45.6693C44.807 17.6206 44.0999 17.0516 44.0999 15.9999C44.0999 15.0171 44.807 14.4137 45.6693 14.4137H60.5189C61.3812 14.4137 62.0883 15.0344 62.0883 15.9999C62.0883 17.0344 61.3812 17.6206 60.5189 17.6206ZM57.4662 12.3964V10.4654C57.4662 10.1206 57.2764 9.93092 56.9833 9.93092H46.6869C45.79 9.93092 45.0312 9.36194 45.0312 8.27574C45.0312 7.24125 45.79 6.56885 46.6869 6.56885H57.7766C59.9842 6.56885 61.1052 7.70678 61.1052 9.72402V12.3964C61.1052 13.2413 60.3636 13.8792 59.2943 13.8792C58.225 13.8792 57.4662 13.2413 57.4662 12.3964ZM48.7565 19.7068V20.9826C48.7565 21.2413 48.9462 21.4137 49.2394 21.4137H59.829C60.7258 21.4137 61.4847 21.9999 61.4847 23.0688C61.4847 24.1033 60.7258 24.724 59.829 24.724H48.4633C46.273 24.724 45.1002 23.793 45.1002 21.8102V19.7068C45.1002 18.8619 45.8418 18.224 46.9111 18.224C47.9804 18.224 48.7565 18.8619 48.7565 19.7068Z"
									fill="#FF7E36"></path>
								<path
									d="M63.9343 21.362V9.12063C63.9343 7.44822 64.7794 6.56891 66.5214 6.56891H71.2642C73.0062 6.56891 73.8513 7.43098 73.8513 9.12063V21.362C73.8513 23.0344 73.0062 23.9137 71.2642 23.9137H66.5214C64.7967 23.9137 63.9343 23.0517 63.9343 21.362ZM70.4364 20.2068V10.293C70.4364 10.0517 70.3157 9.91373 70.0914 9.91373H67.7114C67.5044 9.91373 67.3664 10.0689 67.3664 10.293V20.2068C67.3664 20.4482 67.4872 20.5861 67.7114 20.5861H70.0914C70.3157 20.5861 70.4364 20.431 70.4364 20.2068ZM76.0934 23.3448V7.75856C76.0934 6.86201 76.8522 6.17236 77.9215 6.17236C78.9908 6.17236 79.7324 6.87925 79.7324 7.75856V12.862H80.75C81.5779 12.862 82.2332 13.6551 82.2332 14.6379C82.2332 15.7068 81.5779 16.4482 80.75 16.4482H79.7324V23.3448C79.7324 24.2413 78.9908 24.931 77.9215 24.931C76.8522 24.931 76.0934 24.2413 76.0934 23.3448Z"
									fill="#FF7E36"></path>
								<path
									d="M91.5291 10.4136H92.2707V7.60331C92.2707 6.79296 92.9261 6.24124 93.9264 6.24124C94.9267 6.24124 95.5476 6.79296 95.5476 7.60331V15.9826C95.5476 16.793 94.9267 17.3447 93.9264 17.3447C92.9261 17.3447 92.2707 16.793 92.2707 15.9826V13.5171H91.5291C91.1324 13.5171 90.7702 13.3274 90.5288 12.9654C89.5285 15.1723 87.7693 16.9481 85.3202 18.0343C84.5269 18.3792 83.6818 18.155 83.2333 17.4136C82.7849 16.6723 83.0781 15.7067 83.768 15.4136C84.8718 14.9309 85.7859 14.2757 86.493 13.4309H84.7166C84.0439 13.4309 83.4403 13.0343 83.4403 12.1378C83.4403 11.3102 84.0267 10.8447 84.7166 10.8447H87.8383C87.9245 10.5343 88.0107 10.1895 88.0452 9.82744C88.0797 9.55158 87.9417 9.36193 87.683 9.36193H84.8201C84.0095 9.36193 83.4403 8.89641 83.4403 7.96537C83.4403 7.06882 84.0095 6.53434 84.8201 6.53434H88.3039C90.615 6.53434 91.6843 7.63779 91.3394 10.1205C91.3221 10.2068 91.3221 10.3102 91.3049 10.3964C91.3739 10.4137 91.4428 10.4136 91.5291 10.4136ZM98.0311 24.6033C95.8236 24.1378 93.1848 22.9309 91.4773 21.5516C89.8906 23.1205 87.7693 24.2757 85.5272 24.7067C84.7683 24.8619 83.8715 24.4998 83.5955 23.5688C83.3368 22.6723 83.7852 21.8619 84.5958 21.655C87.0449 21.0171 89.08 19.6033 90.0976 17.7067C90.408 17.1378 91.2704 16.7585 92.2362 17.0516C93.2538 17.3619 93.6677 18.3274 93.3572 18.9998L93.34 19.0343C94.7542 20.2067 96.8584 21.1205 98.928 21.5688C99.7213 21.7412 100.187 22.5516 99.9283 23.4654C99.6696 24.3792 98.8073 24.7585 98.0311 24.6033ZM96.3409 16.5688V7.5171C96.3409 6.70676 97.0136 6.15503 98.0484 6.15503C99.066 6.15503 99.7213 6.70676 99.7213 7.5171V16.5688C99.7213 17.3792 99.066 17.9309 98.0484 17.9309C97.0308 17.9309 96.3409 17.3792 96.3409 16.5688Z"
									fill="#FF7E36"></path></svg></span></a>
					<nav class="_1knjz49k _1s38h9c0 headerNav">
						<ul class="_1knjz49m _1s38h9c5">
							<li class="_1knjz49o"><a
								class="_1knjz49p _1s38h9c4 _1s38h9c2 _1knjz49q"
								href="#" style="color:#fe7f41"">중고거래</a></li>
							<li class="_1knjz49o"><a
								class="_1knjz49p _1s38h9c4 _1s38h9c2" href="/kr/nearby-stores/">동네가게</a></li>
							<li class="_1knjz49o"><a
								class="_1knjz49p _1s38h9c4 _1s38h9c2" href="/kr/jobs/">알바</a></li>
							<li class="_1knjz49o"><a
								class="_1knjz49p _1s38h9c4 _1s38h9c2" href="/kr/realty/">부동산
									직거래</a></li>
							<li class="_1knjz49o"><a
								class="_1knjz49p _1s38h9c4 _1s38h9c2" href="/kr/car/">중고차
									직거래</a></li>
						</ul>
					</nav>
					<div class="_1s38h9c1 _1s38h9c0">
						<span><button
								class="_1knjz497 _1s38h9c3 _1s38h9c0 _1s38h9c2">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M3.5999 10.5C3.5999 6.68926 6.68914 3.60002 10.4999 3.60002C14.3107 3.60002 17.3999 6.68926 17.3999 10.5C17.3999 14.3108 14.3107 17.4 10.4999 17.4C6.68914 17.4 3.5999 14.3108 3.5999 10.5ZM10.4999 2.40002C6.0264 2.40002 2.3999 6.02652 2.3999 10.5C2.3999 14.9735 6.0264 18.6 10.4999 18.6C12.5207 18.6 14.3687 17.86 15.7876 16.6362L20.5756 21.4243C20.81 21.6586 21.1899 21.6586 21.4242 21.4243C21.6585 21.19 21.6585 20.8101 21.4242 20.5758L16.6361 15.7877C17.8599 14.3688 18.5999 12.5208 18.5999 10.5C18.5999 6.02652 14.9734 2.40002 10.4999 2.40002Z"
										fill="#212124"></path></svg>
							</button>
							<form novalidate="" class="_1knjz499">
								<input type="search" class="_1knjz49b search"
									placeholder="물품이나 동네를 검색해보세요" value="" />
							</form></span><span><button
								class="_1knjz496 _1s38h9c3 _1s38h9c0 _1s38h9c2">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M3 5.00002C3 4.66865 3.26863 4.40002 3.6 4.40002H20.4C20.7314 4.40002 21 4.66865 21 5.00002C21 5.3314 20.7314 5.60002 20.4 5.60002H3.6C3.26863 5.60002 3 5.3314 3 5.00002Z"
										fill="#212124"></path>
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M3 12C3 11.6687 3.26863 11.4 3.6 11.4H20.4C20.7314 11.4 21 11.6687 21 12C21 12.3314 20.7314 12.6 20.4 12.6H3.6C3.26863 12.6 3 12.3314 3 12Z"
										fill="#212124"></path>
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M3 19C3 18.6687 3.26863 18.4 3.6 18.4H20.4C20.7314 18.4 21 18.6687 21 19C21 19.3314 20.7314 19.6 20.4 19.6H3.6C3.26863 19.6 3 19.3314 3 19Z"
										fill="#212124"></path></svg>
							</button>
							<button type="button"
								class="karrot-button r14vym0 _1s38h9c3 _1s38h9c4 r14vym4 r14vym7 _1knjz49j chatBtn">채팅하기</button></span>
								<span><a href="member/login"><i class="fa-solid fa-user"></i>회원가입</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>


	<main>

		<section id="home-main-section-top" class="background-pale-peach">
			<div id="home-main-top">
				<div class="home-main-desc">
					<h1 class="home-main-title">
						당신 근처의<br>당근마켓
					</h1>
					<p class="text-m">
						중고 거래부터 동네 정보까지, 이웃과 함께해요.<br>가깝고 따뜻한 당신의 근처를 만들어요.
					</p>
				</div>
				<div class="home-main-image-top">
					<img
						srcset="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-top-d6869a79bc4cb58ea59aa5a408decfdf4a4ba60ac639837081da12861083cdbb.webp "
						class="home-main-image-top" alt="중고거래, 동네생활 질문글과 동네가게"
						src="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-top-68ba12f0da7b5af9a574ed92ca8b3a9c0068db176b566dd374ee50359693358b.png" />
				</div>
			</div>
		</section>
		<section class="home-main-section">
			<div class="home-main-content">
				<div class="home-main-image home-main-image-01">
					<img
						srcset="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-1-cc678e9a217b96f5cb459f7f0684f5ba67706f9889801618b8cf879fbc2c0ea7.webp "
						class="home-main-image-01" alt="우리동네 중고 직거래 사진"
						src="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-1-39ac203e8922f615aa3843337871cb654b81269e872494128bf08236157c5f6a.png" />
				</div>
				<div>
					<h1 class="home-main-title">
						우리 동네<br>중고 직거래 마켓
					</h1>
					<p class="text-m">동네 주민들과 가깝고 따뜻한 거래를 지금 경험해보세요.</p>
					<div class="home-buttons">
						<a class="home-button text-l text-bold" href="/hot_articles">인기매물
							보기</a> <a class="home-button text-l text-bold ml-3" href="/trust">믿을
							수 있는 중고거래</a>
					</div>
				</div>
			</div>
		</section>

		<section class="home-main-section background-pale-green">
			<div class="home-main-content home-main-reverse">
				<div class="home-main-image home-main-image-02">
					<img
						srcset="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-2-91a2286453bdf82dea16a7f0ee4ceb9dd325eae0e5a2a9967ba72c344bf8f2fc.webp "
						class="home-main-image-02" loading="lazy" alt="이웃과 함께하는 동네생활"
						src="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-2-f286322ab98acedf914a05bf77e84c67dcb897c8ccb543e66f6afea9d366d06d.png" />
				</div>
				<div>
					<h1 class="home-main-title">
						이웃과 함께 하는<br>동네생활
					</h1>
					<p class="text-m">우리 동네의 다양한 이야기를 이웃과 함께 나누어요.</p>
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
					<img
						srcset="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-3-5fd6fb61d603ab919a45566b2ea6b505c83a93ec218f34ddcd5cb482543e2317.webp "
						class="home-main-image-03" loading="lazy" alt="내 근처에서 찾는 동네가게"
						src="https://d1unjqcospf8gs.cloudfront.net/assets/home/main/3x/image-3-0c8b631ac2294ac5a3b3e7a3a5580c3e68a3303ad2aded1e84aa57a2e1442786.png" />
				</div>
				<div>
					<h1 class="home-main-title">
						내 근처에서 찾는<br>동네가게
					</h1>
					<p class="text-m">
						우리 동네 가게를 찾고 있나요?<br>동네 주민이 남긴 진짜 후기를 함께 확인해보세요!
					</p>
					<div class="home-buttons">
						<a target="_blank" id="town-link-button"
							class="ga-click home-button text-l text-bold"
							data-event-category="town_link_from"
							data-event-action="index_base" data-event-label="main_town"
							href="https://town.daangn.com">당근마켓 동네가게 찾기</a>
					</div>
				</div>
			</div>
		</section>
		<section class="home-main-section background-gray">
			<div class="home-hot-content">
				<h1 class="home-main-title text-center home-hot-title">중고거래
					인기매물</h1>
				<div class="cards-wrap">
					<article class="card-top ">
						<a class="card-link " data-event-label="577577024"
							href="/articles/577577024">
							<div class="card-photo ">
								<img alt="위닉스 제습기"
									src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/febe7af5a9b9494792b5766f38d22076e50b5457fa344cd1799a4bd8bdfe9813_0.webp?q=82&amp;s=300x300&amp;t=crop" />
							</div>
							<div class="card-desc">
								<h2 class="card-title">위닉스 제습기</h2>
								<div class="card-price ">30,000원</div>
								<div class="card-region-name">제주 제주시 조천읍</div>
								<div class="card-counts">
									<span> 관심 16 </span> ∙ <span> 채팅 65 </span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top ">
						<a class="card-link " data-event-label="577192622"
							href="/articles/577192622">
							<div class="card-photo ">
								<img alt="킨텍스 캠핑장 카라반 4인용 양도합니다.(5월 13일~14일)"
									src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/db75139735e04af4fa2060a396f244fa7bfb5c23bc1bdb4ae8fc918b0a6c9fee_0.webp?q=82&amp;s=300x300&amp;t=crop" />
							</div>
							<div class="card-desc">
								<h2 class="card-title">킨텍스 캠핑장 카라반 4인용 양도합니다.(5월 13일~14일)</h2>
								<div class="card-price ">35,000원</div>
								<div class="card-region-name">경기도 고양시 일산서구 탄현동</div>
								<div class="card-counts">
									<span> 관심 19 </span> ∙ <span> 채팅 37 </span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top ">
						<a class="card-link " data-event-label="577563287"
							href="/articles/577563287">
							<div class="card-photo ">
								<img alt="18k 팔찌 밑에 글 봐주세요!!"
									src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/8c0963adfca71a3c7aa8162d87d11142f6aaa64b8d6191aa3f95fcec5ef5ee7c.jpg?q=82&amp;s=300x300&amp;t=crop" />
							</div>
							<div class="card-desc">
								<h2 class="card-title">18k 팔찌 밑에 글 봐주세요!!</h2>
								<div class="card-price ">90,000원</div>
								<div class="card-region-name">전남 광양시 광양읍</div>
								<div class="card-counts">
									<span> 관심 15 </span> ∙ <span> 채팅 43 </span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top ">
						<a class="card-link " data-event-label="577143017"
							href="/articles/577143017">
							<div class="card-photo ">
								<img alt="닥스백팩"
									src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/ad13f37112daefaa4f33a3879dac748e58342f05016a5a9823f4f3b7b8831f18_0.webp?q=82&amp;s=300x300&amp;t=crop" />
							</div>
							<div class="card-desc">
								<h2 class="card-title">닥스백팩</h2>
								<div class="card-price ">20,000원</div>
								<div class="card-region-name">경북 포항시 북구 흥해읍</div>
								<div class="card-counts">
									<span> 관심 26 </span> ∙ <span> 채팅 51 </span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top ">
						<a class="card-link " data-event-label="575090952"
							href="/articles/575090952">
							<div class="card-photo ">
								<img alt="컴퓨터 본체 팝니다."
									src="https://dnvefa72aowie.cloudfront.net/origin/article/202304/0fc98633f43d51c0d06717495862b62929c0effe5991a387748ebd2187782ae8.webp?q=82&amp;s=300x300&amp;t=crop" />
							</div>
							<div class="card-desc">
								<h2 class="card-title">컴퓨터 본체 팝니다.</h2>
								<div class="card-price ">30,000원</div>
								<div class="card-region-name">충북 청주시 서원구 사창동</div>
								<div class="card-counts">
									<span> 관심 42 </span> ∙ <span> 채팅 88 </span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top ">
						<a class="card-link " data-event-label="575814848"
							href="/articles/575814848">
							<div class="card-photo ">
								<img alt="이사가면서"
									src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/a5b14d3e48fc31b95cce83e1b862ea85eb084fdb3264018058af40ffe7c6dcd1_0.webp?q=82&amp;s=300x300&amp;t=crop" />
							</div>
							<div class="card-desc">
								<h2 class="card-title">이사가면서</h2>
								<div class="card-price ">10,000원</div>
								<div class="card-region-name">전북 정읍시 내장상동</div>
								<div class="card-counts">
									<span> 관심 57 </span> ∙ <span> 채팅 226 </span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top ">
						<a class="card-link " data-event-label="577207524"
							href="/articles/577207524">
							<div class="card-photo ">
								<img alt="참치캔"
									src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/833aed85897fa260e5e768545865f340f303987cbb5413dd3ae7b380c2479acc.webp?q=82&amp;s=300x300&amp;t=crop" />
							</div>
							<div class="card-desc">
								<h2 class="card-title">참치캔</h2>
								<div class="card-price ">20,000원</div>
								<div class="card-region-name">대구 달서구 도원동</div>
								<div class="card-counts">
									<span> 관심 18 </span> ∙ <span> 채팅 46 </span>
								</div>
							</div>
						</a>
					</article>
					<article class="card-top ">
						<a class="card-link " data-event-label="577400404"
							href="/articles/577400404">
							<div class="card-photo ">
								<img alt="물탱크"
									src="https://dnvefa72aowie.cloudfront.net/origin/article/202305/25fdb9cbd98c2e49bfb3bd272beb3477af626f14b7b2c49c7f305f362a47a217_0.webp?q=82&amp;s=300x300&amp;t=crop" />
							</div>
							<div class="card-desc">
								<h2 class="card-title">물탱크</h2>
								<div class="card-price ">100,000원</div>
								<div class="card-region-name">경북 김천시 덕곡동</div>
								<div class="card-counts">
									<span> 관심 4 </span> ∙ <span> 채팅 41 </span>
								</div>
							</div>
						</a>
					</article>

				</div>
				<div class="text-center">
					<a class="text-bold text-black text-m" id="hot-articles-more"
						data-url="/hot_articles" href="/hot_articles"> 인기매물 더 보기</a>
				</div>
			</div>
		</section>

		<section class="home-keywords-content">
			<h3 class="home-main-title">
				<a class="text-m text-bold text-black " href="/top_keywords">중고거래
					인기검색어</a>
			</h3>
			<ul class="top-keywords-list">
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%EC%9E%90%EC%A0%84%EA%B1%B0">자전거</a>
				</li>
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%EC%9D%98%EC%9E%90">의자</a></li>
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%EC%95%84%EC%9D%B4%ED%8F%B0">아이폰</a>
				</li>
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%EB%83%89%EC%9E%A5%EA%B3%A0">냉장고</a>
				</li>
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%EB%85%B8%ED%8A%B8%EB%B6%81">노트북</a>
				</li>
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%ED%8C%A8%EB%94%A9">패딩</a></li>
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%EC%95%84%EC%9D%B4%ED%8C%A8%EB%93%9C">아이패드</a>
				</li>
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%EB%AA%A8%EB%8B%88%ED%84%B0">모니터</a>
				</li>
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%EC%8A%A4%ED%83%80%EB%B2%85%EC%8A%A4">스타벅스</a>
				</li>
				<li class="keyword-item text-m"><a class="keyword-link"
					rel="nosublink" href="/search/%EC%B1%85%EC%83%81">책상</a></li>
			</ul>
		</section>
	</main>
	<script>
		//<![CDATA[
		facebookClickEvent("ViewContent");
		//]]>
	</script>

	<style>
#gnb-root .light-theme { -
	-seed-static-color-static-black: #000000; -
	-seed-static-color-static-white: #ffffff; -
	-seed-static-color-static-gray-900: #212124; -
	-seed-static-color-static-carrot-50: #fff5f0; -
	-seed-static-color-static-carrot-800: #cc4700; -
	-seed-static-color-static-green-50: #e8faf6; -
	-seed-static-color-static-green-800: #008c72; -
	-seed-static-color-static-yellow-50: #fff7e6; -
	-seed-static-color-static-yellow-800: #ba5e02; -
	-seed-static-color-static-red-50: #fff3f2; -
	-seed-static-color-static-red-800: #e81300; -
	-seed-static-color-static-blue-50: #ebf7fa; -
	-seed-static-color-static-blue-800: #0a85b5; -
	-seed-static-color-static-black-alpha-200: #00000033; -
	-seed-static-color-static-black-alpha-500: #00000080; -
	-seed-static-color-static-white-alpha-50: #ffffff0d; -
	-seed-static-color-static-white-alpha-200: #ffffff33; -
	-seed-semantic-color-on-primary: var(- -seed-static-color-static-white);
	-
	-seed-semantic-color-overlay-low: var(- -seed-static-color-static-black-alpha-200);
	-
	-seed-semantic-color-overlay-dim: var(- -seed-static-color-static-black-alpha-500);
	-
	-seed-semantic-color-on-primary-overlay-50: var(- -seed-static-color-static-white-alpha-50);
	-
	-seed-semantic-color-on-primary-overlay-200: var(- -seed-static-color-static-white-alpha-200);
	-
	-seed-scale-dimension-font-size-10: 10px; -
	-seed-scale-dimension-font-size-25: 11px; -
	-seed-scale-dimension-font-size-50: 12px; -
	-seed-scale-dimension-font-size-75: 13px; -
	-seed-scale-dimension-font-size-100: 14px; -
	-seed-scale-dimension-font-size-150: 15px; -
	-seed-scale-dimension-font-size-200: 16px; -
	-seed-scale-dimension-font-size-300: 18px; -
	-seed-scale-dimension-font-size-400: 20px; -
	-seed-scale-dimension-font-size-500: 24px; -
	-seed-scale-dimension-font-size-600: 26px; -
	-seed-scale-dimension-font-size-700: 32px; -
	-seed-scale-dimension-font-size-800: 34px; -
	-seed-scale-dimension-font-size-900: 42px; -
	-seed-scale-dimension-font-size-1000: 48px; -
	-seed-scale-dimension-font-size-1100: 54px; -
	-seed-scale-dimension-font-size-1200: 60px; -
	-seed-scale-dimension-font-size-1300: 72px; -
	-seed-semantic-typography-h1-font-size: var(- -seed-scale-dimension-font-size-1000);
	-
	-seed-semantic-typography-h2-font-size: var(- -seed-scale-dimension-font-size-900);
	-
	-seed-semantic-typography-h3-font-size: var(- -seed-scale-dimension-font-size-800);
	-
	-seed-semantic-typography-h4-font-size: var(- -seed-scale-dimension-font-size-600);
	-
	-seed-semantic-typography-title1-bold-font-size: var(- -seed-scale-dimension-font-size-500);
	-
	-seed-semantic-typography-title1-regular-font-size: var(- -seed-scale-dimension-font-size-500);
	-
	-seed-semantic-typography-title2-bold-font-size: var(- -seed-scale-dimension-font-size-400);
	-
	-seed-semantic-typography-title2-regular-font-size: var(- -seed-scale-dimension-font-size-400);
	-
	-seed-semantic-typography-title3-bold-font-size: var(- -seed-scale-dimension-font-size-300);
	-
	-seed-semantic-typography-title3-regular-font-size: var(- -seed-scale-dimension-font-size-300);
	-
	-seed-semantic-typography-subtitle1-bold-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-subtitle1-regular-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-subtitle2-bold-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-subtitle2-regular-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-body-l1-bold-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-body-l1-regular-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-body-l2-bold-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-body-l2-regular-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-body-m1-bold-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-body-m1-regular-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-body-m2-bold-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-body-m2-regular-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-caption1-bold-font-size: var(- -seed-scale-dimension-font-size-75);
	-
	-seed-semantic-typography-caption1-regular-font-size: var(- -seed-scale-dimension-font-size-75);
	-
	-seed-semantic-typography-caption2-bold-font-size: var(- -seed-scale-dimension-font-size-50);
	-
	-seed-semantic-typography-caption2-regular-font-size: var(- -seed-scale-dimension-font-size-50);
	-
	-seed-semantic-typography-label1-bold-font-size: var(- -seed-scale-dimension-font-size-300);
	-
	-seed-semantic-typography-label1-regular-font-size: var(- -seed-scale-dimension-font-size-300);
	-
	-seed-semantic-typography-label2-bold-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-label2-regular-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-label3-bold-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-label3-regular-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-label4-bold-font-size: var(- -seed-scale-dimension-font-size-50);
	-
	-seed-semantic-typography-label4-regular-font-size: var(- -seed-scale-dimension-font-size-50);
	-
	-seed-semantic-typography-label5-bold-font-size: var(- -seed-scale-dimension-font-size-25);
	-
	-seed-semantic-typography-label5-regular-font-size: var(- -seed-scale-dimension-font-size-25);
	-
	-seed-semantic-typography-label6-bold-font-size: var(- -seed-scale-dimension-font-size-10);
	-
	-seed-semantic-typography-label6-regular-font-size: var(- -seed-scale-dimension-font-size-10);
	-
	-seed-static-font-weight-regular: normal; -
	-seed-static-font-weight-bold: bold; -
	-seed-semantic-typography-h1-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-h2-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-h3-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-h4-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-title1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-title1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-title2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-title2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-title3-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-title3-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-subtitle1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-subtitle1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-subtitle2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-subtitle2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-body-l1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-body-l1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-body-l2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-body-l2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-body-m1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-body-m1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-body-m2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-body-m2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-caption1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-caption1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-caption2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-caption2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label3-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label3-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label4-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label4-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label5-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label5-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label6-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label6-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-static-line-height-static-small: 135%; -
	-seed-static-line-height-static-medium: 150%; -
	-seed-static-line-height-static-large: 162%; -
	-seed-semantic-typography-h1-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-h2-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-h3-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-h4-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title1-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title1-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title3-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title3-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-subtitle1-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-subtitle1-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-subtitle2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-subtitle2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-body-l1-bold-line-height: var(- -seed-static-line-height-static-large);
	-
	-seed-semantic-typography-body-l1-regular-line-height: var(- -seed-static-line-height-static-large);
	-
	-seed-semantic-typography-body-l2-bold-line-height: var(- -seed-static-line-height-static-medium);
	-
	-seed-semantic-typography-body-l2-regular-line-height: var(- -seed-static-line-height-static-medium);
	-
	-seed-semantic-typography-body-m1-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-body-m1-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-body-m2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-body-m2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-caption1-bold-line-height: var(- -seed-static-line-height-static-medium);
	-
	-seed-semantic-typography-caption1-regular-line-height: var(- -seed-static-line-height-static-medium);
	-
	-seed-semantic-typography-caption2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-caption2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label1-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label1-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label3-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label3-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label4-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label4-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label5-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label5-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label6-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label6-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-scale-color-gray-00: #ffffff; -
	-seed-scale-color-gray-50: #f7f8fa; -
	-seed-scale-color-gray-100: #f2f3f6; -
	-seed-scale-color-gray-200: #eaebee; -
	-seed-scale-color-gray-300: #dcdee3; -
	-seed-scale-color-gray-400: #d1d3d8; -
	-seed-scale-color-gray-500: #adb1ba; -
	-seed-scale-color-gray-600: #868b94; -
	-seed-scale-color-gray-700: #4d5159; -
	-seed-scale-color-gray-800: #393a40; -
	-seed-scale-color-gray-900: #212124; -
	-seed-scale-color-carrot-50: #fff5f0; -
	-seed-scale-color-carrot-100: #ffe2d2; -
	-seed-scale-color-carrot-200: #ffd2b9; -
	-seed-scale-color-carrot-300: #ffbc97; -
	-seed-scale-color-carrot-400: #ff9e66; -
	-seed-scale-color-carrot-500: #ff6f0f; -
	-seed-scale-color-carrot-600: #fa6616; -
	-seed-scale-color-carrot-700: #f05705; -
	-seed-scale-color-carrot-800: #cc4700; -
	-seed-scale-color-carrot-900: #b44104; -
	-seed-scale-color-carrot-950: #a03a03; -
	-seed-scale-color-blue-50: #ebf7fa; -
	-seed-scale-color-blue-100: #d2edfa; -
	-seed-scale-color-blue-200: #b9e3fa; -
	-seed-scale-color-blue-300: #87d7ff; -
	-seed-scale-color-blue-400: #57c7ff; -
	-seed-scale-color-blue-500: #009ceb; -
	-seed-scale-color-blue-600: #0088cc; -
	-seed-scale-color-blue-700: #0077b2; -
	-seed-scale-color-blue-800: #006199; -
	-seed-scale-color-blue-900: #004c73; -
	-seed-scale-color-blue-950: #003b59; -
	-seed-scale-color-red-50: #fff3f2; -
	-seed-scale-color-red-100: #ffe5e3; -
	-seed-scale-color-red-200: #fcd2cf; -
	-seed-scale-color-red-300: #ffaca6; -
	-seed-scale-color-red-400: #ff7e75; -
	-seed-scale-color-red-500: #ff4133; -
	-seed-scale-color-red-600: #fa2314; -
	-seed-scale-color-red-700: #e81607; -
	-seed-scale-color-red-800: #a62014; -
	-seed-scale-color-red-900: #910c00; -
	-seed-scale-color-red-950: #821006; -
	-seed-scale-color-green-50: #e8faf6; -
	-seed-scale-color-green-100: #c7f2e4; -
	-seed-scale-color-green-200: #96ebc3; -
	-seed-scale-color-green-300: #6adeac; -
	-seed-scale-color-green-400: #30c795; -
	-seed-scale-color-green-500: #1aa174; -
	-seed-scale-color-green-600: #128c6e; -
	-seed-scale-color-green-700: #077a5e; -
	-seed-scale-color-green-800: #06614a; -
	-seed-scale-color-green-900: #004f40; -
	-seed-scale-color-green-950: #004034; -
	-seed-scale-color-yellow-50: #fff7e6; -
	-seed-scale-color-yellow-100: #ffe3ba; -
	-seed-scale-color-yellow-200: #facc87; -
	-seed-scale-color-yellow-300: #f7be68; -
	-seed-scale-color-yellow-400: #dea651; -
	-seed-scale-color-yellow-500: #c27f29; -
	-seed-scale-color-yellow-600: #a66c21; -
	-seed-scale-color-yellow-700: #805217; -
	-seed-scale-color-yellow-800: #6b4717; -
	-seed-scale-color-yellow-900: #593d17; -
	-seed-scale-color-yellow-950: #4d361a; -
	-seed-scale-color-pink-50: #fff5f5; -
	-seed-scale-color-pink-100: #ffdddb; -
	-seed-scale-color-pink-200: #ffbfc5; -
	-seed-scale-color-pink-300: #ffadb4; -
	-seed-scale-color-pink-400: #ff8a9d; -
	-seed-scale-color-pink-500: #f0657c; -
	-seed-scale-color-pink-600: #db4b6a; -
	-seed-scale-color-pink-700: #bd2b5c; -
	-seed-scale-color-pink-800: #991c45; -
	-seed-scale-color-pink-900: #800d3d; -
	-seed-scale-color-pink-950: #660a30; -
	-seed-scale-color-purple-50: #f6f4fe; -
	-seed-scale-color-purple-100: #e3dafe; -
	-seed-scale-color-purple-200: #d5c7ff; -
	-seed-scale-color-purple-300: #cfbfff; -
	-seed-scale-color-purple-400: #b69eff; -
	-seed-scale-color-purple-500: #9675fa; -
	-seed-scale-color-purple-600: #8361e8; -
	-seed-scale-color-purple-700: #6748c7; -
	-seed-scale-color-purple-800: #4f3699; -
	-seed-scale-color-purple-900: #3f2687; -
	-seed-scale-color-purple-950: #331e70; -
	-seed-scale-color-gray-alpha-50: #0000000d; -
	-seed-scale-color-gray-alpha-100: #0000001a; -
	-seed-scale-color-gray-alpha-200: #00000033; -
	-seed-scale-color-gray-alpha-500: #00000080; -
	-seed-scale-color-carrot-alpha-50: #ff6f0f0d; -
	-seed-scale-color-carrot-alpha-100: #ff6f0f24; -
	-seed-scale-color-carrot-alpha-200: #ff6f0f33; -
	-seed-scale-color-blue-alpha-50: #009ceb0d; -
	-seed-scale-color-blue-alpha-100: #009ceb1a; -
	-seed-scale-color-blue-alpha-200: #009ceb33; -
	-seed-scale-color-red-alpha-50: #ff41330d; -
	-seed-scale-color-red-alpha-100: #ff41331a; -
	-seed-scale-color-red-alpha-200: #ff413333; -
	-seed-scale-color-yellow-alpha-50: #f7be6814; -
	-seed-scale-color-yellow-alpha-100: #f7be6824; -
	-seed-scale-color-yellow-alpha-200: #f7be683d; -
	-seed-scale-color-green-alpha-50: #1aa1740d; -
	-seed-scale-color-green-alpha-100: #1aa17424; -
	-seed-scale-color-green-alpha-200: #1aa17433; -
	-seed-semantic-color-primary: var(- -seed-scale-color-carrot-500); -
	-seed-semantic-color-primary-low: var(- -seed-scale-color-carrot-alpha-100);
	-
	-seed-semantic-color-secondary: var(- -seed-scale-color-gray-900); -
	-seed-semantic-color-secondary-low: var(- -seed-scale-color-gray-alpha-50);
	-
	-seed-semantic-color-success: var(- -seed-scale-color-green-500); -
	-seed-semantic-color-success-low: var(- -seed-scale-color-green-alpha-50);
	-
	-seed-semantic-color-warning: var(- -seed-scale-color-yellow-400); -
	-seed-semantic-color-warning-low: var(- -seed-scale-color-yellow-alpha-100);
	-
	-seed-semantic-color-danger: var(- -seed-scale-color-red-600); -
	-seed-semantic-color-danger-low: var(- -seed-scale-color-red-alpha-50);
	-
	-seed-semantic-color-paper-sheet: var(- -seed-scale-color-gray-00); -
	-seed-semantic-color-paper-dialog: var(- -seed-scale-color-gray-00); -
	-seed-semantic-color-paper-floating: var(- -seed-scale-color-gray-00);
	-
	-seed-semantic-color-paper-contents: var(- -seed-scale-color-gray-50);
	-
	-seed-semantic-color-paper-default: var(- -seed-scale-color-gray-00); -
	-seed-semantic-color-paper-background: var(- -seed-scale-color-gray-100);
	-
	-seed-semantic-color-paper-accent: var(- -seed-scale-color-carrot-50);
	-
	-seed-semantic-color-primary-hover: var(- -seed-scale-color-carrot-400);
	-
	-seed-semantic-color-primary-pressed: var(- -seed-scale-color-carrot-400);
	-
	-seed-semantic-color-primary-low-hover: var(- -seed-scale-color-carrot-alpha-200);
	-
	-seed-semantic-color-primary-low-active: var(- -seed-scale-color-carrot-alpha-200);
	-
	-seed-semantic-color-primary-low-pressed: var(- -seed-scale-color-carrot-alpha-200);
	-
	-seed-semantic-color-gray-hover: var(- -seed-scale-color-gray-100); -
	-seed-semantic-color-gray-pressed: var(- -seed-scale-color-gray-100); -
	-seed-semantic-color-on-primary-low-overlay-50: var(- -seed-scale-color-carrot-alpha-50);
	-
	-seed-semantic-color-on-primary-low-overlay-100: var(- -seed-scale-color-carrot-alpha-100);
	-
	-seed-semantic-color-on-primary-low-overlay-200: var(- -seed-scale-color-carrot-alpha-200);
	-
	-seed-semantic-color-on-gray-overlay-50: var(- -seed-scale-color-gray-alpha-50);
	-
	-seed-semantic-color-on-gray-overlay-100: var(- -seed-scale-color-gray-alpha-100);
	-
	-seed-semantic-color-text-selection: var(- -seed-scale-color-carrot-50);
	-
	-seed-semantic-color-divider-1: var(- -seed-scale-color-gray-alpha-50);
	-
	-seed-semantic-color-divider-2: var(- -seed-scale-color-gray-200); -
	-seed-semantic-color-divider-3: var(- -seed-scale-color-gray-300); -
	-seed-semantic-color-accent: var(- -seed-scale-color-blue-500); -
	-seed-semantic-color-ink-text: var(- -seed-scale-color-gray-900); -
	-seed-semantic-color-ink-text-low: var(- -seed-scale-color-gray-600); -
	-seed-semantic-color-gray-active: var(- -seed-scale-color-gray-700)
}

#gnb-root ._1s38h9c0 {
	display: flex;
	align-items: center
}

#gnb-root ._1s38h9c1 {
	display: flex;
	justify-content: center
}

#gnb-root ._1s38h9c2 {
	cursor: pointer;
	-webkit-tap-highlight-color: transparent
}

#gnb-root ._1s38h9c3 {
	appearance: none;
	border: 0;
	background: none;
	padding: 0
}

#gnb-root ._1s38h9c4 {
	text-decoration: none
}

#gnb-root ._1s38h9c5 {
	list-style: none;
	padding: 0;
	margin: 0
}

#gnb-root .r14vym0 {
	background: none;
	appearance: none;
	border: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	cursor: pointer;
	white-space: nowrap;
	box-sizing: border-box
}

#gnb-root .r14vym1 {
	color: var(- -seed-scale-color-gray-00);
	background-color: var(- -seed-scale-color-carrot-500)
}

#gnb-root .r14vym1:hover, #gnb-root .r14vym1:active {
	background-color: var(- -seed-scale-color-carrot-600)
}

#gnb-root .r14vym2 {
	color: var(- -seed-scale-color-gray-900);
	background-color: var(- -seed-semantic-color-secondary-low)
}

#gnb-root .r14vym2:hover, #gnb-root .r14vym2:active {
	background-color: var(- -seed-scale-color-gray-300)
}

#gnb-root .r14vym3 {
	color: var(- -seed-semantic-color-primary);
	background-color: var(- -seed-semantic-color-primary-low)
}

#gnb-root .r14vym3:hover, #gnb-root .r14vym3:active {
	background-color: var(- -seed-semantic-color-primary-low-pressed)
}

#gnb-root .r14vym4 {
	color: var(- -seed-scale-color-gray-900);
	background-color: transparent;
	border: 1px solid var(- -seed-scale-color-gray-400)
}

#gnb-root .r14vym4:hover, #gnb-root .r14vym4:active {
	background-color: var(- -seed-scale-color-gray-100);
	opacity: .7
}

#gnb-root .r14vym5 {
	font-weight: 700;
	line-height: 1.4;
	font-size: 1.4rem;
	width: 100%;
	min-height: 4.8rem;
	padding: 1.4rem 2rem;
	border-radius: 0.6rem
}

#gnb-root .r14vym6 {
	font-weight: 700;
	line-height: 1.4;
	font-size: 1.4rem;
	width: 100%;
	min-height: 4rem;
	padding: 1rem;
	border-radius: 0.4rem
}

#gnb-root .r14vym7 {
	font-weight: 700;
	line-height: 1.4;
	font-size: 1.4rem;
	width: fit-content;
	min-height: 3.6rem;
	padding: 0.8rem 1.4rem;
	border-radius: 0.4rem
}

#gnb-root .r14vym8 {
	font-weight: 700;
	line-height: 1.42;
	font-size: 1.1008rem;
	width: fit-content;
	min-height: 3.2rem;
	padding: 0.5rem 1rem;
	border-radius: 0.4rem
}

#gnb-root .r14vymi {
	width: 100%
}

#gnb-root .r14vymj {
	width: fit-content
}

@media ( prefers-reduced-motion : no-preference) {
	#gnb-root .r14vym0 {
		transition: background-color .15s;
		will-change: background-color
	}
}

@media screen and (min-width: 768px) {
	#gnb-root .r14vym5 {
		line-height: 1.32;
		font-size: 1.8rem;
		letter-spacing: -2%;
		min-height: 5.2rem
	}
	#gnb-root .r14vym6 {
		line-height: 1.32;
		font-size: 1.8rem;
		letter-spacing: -2%;
		min-height: 4.4rem
	}
	#gnb-root .r14vym7 {
		line-height: 1.32;
		font-size: 1.8rem;
		letter-spacing: -2%;
		min-height: 4rem
	}
	#gnb-root .r14vym8 {
		line-height: 1.4;
		font-size: 1.4rem;
		min-height: 3.4rem
	}
}

#gnb-root ._1knjz490 {
	background-color: #ffffff;	
	color: var(- -seed-scale-color-gray-900);
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	max-width: 100vw;
	z-index: 999
}

#gnb-root ._1knjz491 {
	padding: 1.2rem 1.6rem;
	height: 5.6rem;
	box-sizing: border-box;
	justify-content: space-between;
	width: 100%;
	margin: 0 auto;
	position: relative
}

#gnb-root ._1knjz492 {
	display: inline-flex;
	align-items: center;
	margin-right: 4rem
}

#gnb-root ._1knjz493 {
	margin: -0.1rem 0
}

#gnb-root ._1knjz497 {
	margin-right: 1.6rem
}

#gnb-root ._1knjz498 {
	position: absolute;
	left: 0;
	width: 100%;
	padding: 0 1.6rem;
	box-sizing: border-box;
	background-color: var(- -seed-scale-color-gray-00)
}

#gnb-root ._1knjz499 {
	display: none
}

#gnb-root ._1knjz49a {
	display: block;
	margin-right: 1.6rem;
	position: relative;
	width: 100%;
	box-sizing: border-box
}

#gnb-root ._1knjz49b {
	line-height: 1.4;
	font-size: 1.4rem;
	background-color: var(- -seed-scale-color-gray-100);
	box-sizing: border-box;
	height: 4rem;
	padding: 0.9rem 1.2rem;
	border: none;
	border-radius: 0.6rem;
	width: 100%;
	color: var(- -seed-scale-color-gray-900)
}

#gnb-root ._1knjz49b:focus {
	outline: 0
}

#gnb-root ._1knjz49b::placeholder {
	color: var(- -seed-scale-color-gray-600)
}

#gnb-root ._1knjz49b::-webkit-search-cancel-button, #gnb-root ._1knjz49b::-webkit-search-decoration,
	#gnb-root ._1knjz49b::-webkit-search-results-button, #gnb-root ._1knjz49b::-webkit-search-results-decoration
	{
	display: none
}

#gnb-root ._1knjz49c {
	position: absolute;
	height: 100%;
	top: 0;
	right: 1.2rem;
	display: flex;
	align-items: center;
	cursor: pointer
}

#gnb-root ._1knjz49d {
	line-height: 1.36;
	font-size: 1.6rem;
	color: var(- -seed-scale-color-gray-900);
	white-space: nowrap;
	cursor: pointer
}

#gnb-root ._1knjz49e {
	margin-left: 0.4rem;
	transition: all ease .3s
}

#gnb-root ._1knjz49f {
	transform: rotate(-180deg);
	transition: all ease .3s
}

#gnb-root ._1knjz49g {
	flex: 1
}

#gnb-root ._1knjz49h {
	font-weight: 700;
	line-height: 150%;
	font-size: 1.4rem;
	padding: 0.55rem 1rem;
	border: 1px solid #868B94;
	border-radius: 0.6rem;
	margin-right: 0.8rem
}

#gnb-root ._1knjz49j {
	display: none;
	font-weight: 700;
	line-height: 1.36;
	font-size: 1.6rem
}

#gnb-root ._1knjz49k {
	display: none
}

#gnb-root ._1knjz49l {
	font-weight: 700;
	line-height: 1.42;
	font-size: 1.1008rem;
	background-color: var(- -seed-scale-color-carrot-500);
	color: var(- -seed-scale-color-gray-00);
	padding: 0.4rem 1.2rem;
	display: flex;
	white-space: nowrap;
	justify-content: center;
	align-items: center;
	border: 1px solid var(- -seed-scale-color-carrot-500);
	border-radius: 0.4rem;
	cursor: pointer
}

#gnb-root ._1knjz49m {
	display: inline-block
}

#gnb-root ._1knjz49n {
	display: flex;
	flex-direction: column
}

#gnb-root ._1knjz49o {
	display: inline-block;
	margin: 0
}

#gnb-root ._1knjz49p {
	font-weight: 700;
	line-height: 1.4;
	font-size: 1.4rem;
	color: var(- -seed-scale-color-gray-700);
	font-style: normal;
	margin-right: 3rem
}

#gnb-root ._1knjz49p:hover {
	color: var(- -seed-scale-color-gray-600)
}

#gnb-root ._1knjz49q {
	color: var(- -seed-scale-color-carrot-500)
}

#gnb-root ._1knjz49q:hover {
	color: var(- -seed-scale-color-carrot-600)
}

#gnb-root ._1knjz49r {
	background-color: var(- -seed-scale-color-gray-00);
	display: flex;
	flex-direction: column;
	width: 100%;
	overflow: hidden;
	transform: translateY(-1.6rem);
	opacity: 0;
	transition: transform .3s, opacity .1s;
	padding: 0.8rem 1.6rem;
	box-sizing: border-box
}

#gnb-root ._1knjz49s {
	font-weight: 700;
	line-height: 1.4;
	font-size: 1.4rem;
	margin: 0;
	padding-top: 0.4rem;
	padding-right: 0;
	padding-bottom: 0.4rem;
	padding-left: 0;
	color: var(- -seed-scale-color-gray-600)
}

#gnb-root ._1knjz49t {
	width: 100%;
	display: flex;
	flex-wrap: wrap;
	padding: 0
}

#gnb-root ._1knjz49u {
	line-height: 1.4;
	font-size: 1.4rem;
	outline: 0;
	margin: 0;
	width: 50%;
	padding: 1.6rem 0;
	border-bottom: 1px solid var(- -seed-scale-color-gray-200);
	cursor: pointer;
	list-style: none;
	-moz-osx-font-smoothing: grayscale;
	-webkit-font-smoothing: antialiased
}

#gnb-root ._1knjz49u:last-child {
	border-bottom: none
}

#gnb-root ._1knjz49u:nth-last-child(2) {
	border-bottom: none
}

#gnb-root ._1knjz49v {
	background-color: var(- -seed-scale-color-gray-00);
	display: block;
	width: 100%;
	overflow: hidden;
	transform: translateY(-1.6rem);
	opacity: 0;
	transition: transform .3s, opacity .1s;
	border-top: 1px solid var(- -seed-scale-color-gray-200)
}

#gnb-root ._1knjz49w {
	opacity: 1;
	transform: translateY(0)
}

#gnb-root ._1knjz49x {
	display: none
}

#gnb-root ._1knjz49y {
	color: var(- -seed-scale-color-gray-700);
	text-decoration: none;
	padding: 1.6rem;
	display: block;
	opacity: 1;
	transition: opacity .3s;
	font-size: 1.6rem
}

#gnb-root ._1knjz49y:hover {
	background-color: var(- -seed-scale-color-gray-200)
}

#gnb-root ._1knjz49z {
	color: #ff7e36
}

#gnb-root ._1knjz4910 {
	opacity: 1
}

#gnb-root ._1knjz4912 {
	background: rgba(23, 23, 26);
	opacity: .5;
	position: absolute;
	width: 100%;
	height: 100vh
}

#gnb-root ._1knjz497>svg>path {
	fill: var(- -seed-scale-color-gray-900)
}

#gnb-root ._1knjz496>svg>path {
	fill: var(- -seed-scale-color-gray-900)
}

@media screen and (min-width: 768px) {
	#gnb-root ._1knjz491 {
		max-width: 120rem;
		height: 6.4rem
	}
	#gnb-root ._1knjz496 {
		display: none
	}
	#gnb-root ._1knjz49b {
		line-height: 1.36;
		font-size: 1.6rem;
		letter-spacing: -1%
	}
	#gnb-root ._1knjz49d {
		line-height: 1.32;
		font-size: 1.8rem;
		letter-spacing: -1%
	}
	#gnb-root ._1knjz49j {
		line-height: 1.3;
		font-size: 1.6rem;
		letter-spacing: -2%;
		display: block;
		white-space: nowrap;
		background-color: var(- -seed-scale-color-gray-00);
		color: var(- -seed-scale-color-gray-900);
		padding-left: 1.6rem;
		padding-right: 1.6rem
	}
	#gnb-root ._1knjz49k {
		display: flex;
		align-items: center;
		width: 100%;
		padding-top: 0;
		padding-right: 4rem;
		padding-bottom: 0;
		padding-left: 0
	}
	#gnb-root ._1knjz49l {
		line-height: 1.4;
		font-size: 1.4rem;
		display: none
	}
	#gnb-root ._1knjz49p, #gnb-root ._1knjz49s, #gnb-root ._1knjz49u {
		line-height: 1.32;
		font-size: 1.8rem;
		letter-spacing: -2%
	}
	#gnb-root ._1knjz49v {
		display: none
	}
}

@media screen and (min-width: 992px) {
	#gnb-root ._1knjz497, #gnb-root ._1knjz498 {
		display: none
	}
	#gnb-root ._1knjz499 {
		display: block;
		position: relative;
		margin-right: 1.2rem
	}
	#gnb-root ._1knjz49a {
		display: none
	}
	#gnb-root ._1knjz49b {
		width: 28.8rem
	}
	#gnb-root ._1knjz49r {
		display: none
	}
}

#footer-root .light-theme { -
	-seed-static-color-static-black: #000000; -
	-seed-static-color-static-white: #ffffff; -
	-seed-static-color-static-gray-900: #212124; -
	-seed-static-color-static-carrot-50: #fff5f0; -
	-seed-static-color-static-carrot-800: #cc4700; -
	-seed-static-color-static-green-50: #e8faf6; -
	-seed-static-color-static-green-800: #008c72; -
	-seed-static-color-static-yellow-50: #fff7e6; -
	-seed-static-color-static-yellow-800: #ba5e02; -
	-seed-static-color-static-red-50: #fff3f2; -
	-seed-static-color-static-red-800: #e81300; -
	-seed-static-color-static-blue-50: #ebf7fa; -
	-seed-static-color-static-blue-800: #0a85b5; -
	-seed-static-color-static-black-alpha-200: #00000033; -
	-seed-static-color-static-black-alpha-500: #00000080; -
	-seed-static-color-static-white-alpha-50: #ffffff0d; -
	-seed-static-color-static-white-alpha-200: #ffffff33; -
	-seed-semantic-color-on-primary: var(- -seed-static-color-static-white);
	-
	-seed-semantic-color-overlay-low: var(- -seed-static-color-static-black-alpha-200);
	-
	-seed-semantic-color-overlay-dim: var(- -seed-static-color-static-black-alpha-500);
	-
	-seed-semantic-color-on-primary-overlay-50: var(- -seed-static-color-static-white-alpha-50);
	-
	-seed-semantic-color-on-primary-overlay-200: var(- -seed-static-color-static-white-alpha-200);
	-
	-seed-scale-dimension-font-size-10: 10px; -
	-seed-scale-dimension-font-size-25: 11px; -
	-seed-scale-dimension-font-size-50: 12px; -
	-seed-scale-dimension-font-size-75: 13px; -
	-seed-scale-dimension-font-size-100: 14px; -
	-seed-scale-dimension-font-size-150: 15px; -
	-seed-scale-dimension-font-size-200: 16px; -
	-seed-scale-dimension-font-size-300: 18px; -
	-seed-scale-dimension-font-size-400: 20px; -
	-seed-scale-dimension-font-size-500: 24px; -
	-seed-scale-dimension-font-size-600: 26px; -
	-seed-scale-dimension-font-size-700: 32px; -
	-seed-scale-dimension-font-size-800: 34px; -
	-seed-scale-dimension-font-size-900: 42px; -
	-seed-scale-dimension-font-size-1000: 48px; -
	-seed-scale-dimension-font-size-1100: 54px; -
	-seed-scale-dimension-font-size-1200: 60px; -
	-seed-scale-dimension-font-size-1300: 72px; -
	-seed-semantic-typography-h1-font-size: var(- -seed-scale-dimension-font-size-1000);
	-
	-seed-semantic-typography-h2-font-size: var(- -seed-scale-dimension-font-size-900);
	-
	-seed-semantic-typography-h3-font-size: var(- -seed-scale-dimension-font-size-800);
	-
	-seed-semantic-typography-h4-font-size: var(- -seed-scale-dimension-font-size-600);
	-
	-seed-semantic-typography-title1-bold-font-size: var(- -seed-scale-dimension-font-size-500);
	-
	-seed-semantic-typography-title1-regular-font-size: var(- -seed-scale-dimension-font-size-500);
	-
	-seed-semantic-typography-title2-bold-font-size: var(- -seed-scale-dimension-font-size-400);
	-
	-seed-semantic-typography-title2-regular-font-size: var(- -seed-scale-dimension-font-size-400);
	-
	-seed-semantic-typography-title3-bold-font-size: var(- -seed-scale-dimension-font-size-300);
	-
	-seed-semantic-typography-title3-regular-font-size: var(- -seed-scale-dimension-font-size-300);
	-
	-seed-semantic-typography-subtitle1-bold-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-subtitle1-regular-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-subtitle2-bold-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-subtitle2-regular-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-body-l1-bold-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-body-l1-regular-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-body-l2-bold-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-body-l2-regular-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-body-m1-bold-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-body-m1-regular-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-body-m2-bold-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-body-m2-regular-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-caption1-bold-font-size: var(- -seed-scale-dimension-font-size-75);
	-
	-seed-semantic-typography-caption1-regular-font-size: var(- -seed-scale-dimension-font-size-75);
	-
	-seed-semantic-typography-caption2-bold-font-size: var(- -seed-scale-dimension-font-size-50);
	-
	-seed-semantic-typography-caption2-regular-font-size: var(- -seed-scale-dimension-font-size-50);
	-
	-seed-semantic-typography-label1-bold-font-size: var(- -seed-scale-dimension-font-size-300);
	-
	-seed-semantic-typography-label1-regular-font-size: var(- -seed-scale-dimension-font-size-300);
	-
	-seed-semantic-typography-label2-bold-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-label2-regular-font-size: var(- -seed-scale-dimension-font-size-200);
	-
	-seed-semantic-typography-label3-bold-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-label3-regular-font-size: var(- -seed-scale-dimension-font-size-100);
	-
	-seed-semantic-typography-label4-bold-font-size: var(- -seed-scale-dimension-font-size-50);
	-
	-seed-semantic-typography-label4-regular-font-size: var(- -seed-scale-dimension-font-size-50);
	-
	-seed-semantic-typography-label5-bold-font-size: var(- -seed-scale-dimension-font-size-25);
	-
	-seed-semantic-typography-label5-regular-font-size: var(- -seed-scale-dimension-font-size-25);
	-
	-seed-semantic-typography-label6-bold-font-size: var(- -seed-scale-dimension-font-size-10);
	-
	-seed-semantic-typography-label6-regular-font-size: var(- -seed-scale-dimension-font-size-10);
	-
	-seed-static-font-weight-regular: normal; -
	-seed-static-font-weight-bold: bold; -
	-seed-semantic-typography-h1-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-h2-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-h3-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-h4-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-title1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-title1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-title2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-title2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-title3-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-title3-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-subtitle1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-subtitle1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-subtitle2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-subtitle2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-body-l1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-body-l1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-body-l2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-body-l2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-body-m1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-body-m1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-body-m2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-body-m2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-caption1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-caption1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-caption2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-caption2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label1-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label1-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label2-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label2-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label3-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label3-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label4-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label4-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label5-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label5-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-semantic-typography-label6-bold-font-weight: var(- -seed-static-font-weight-bold);
	-
	-seed-semantic-typography-label6-regular-font-weight: var(- -seed-static-font-weight-regular);
	-
	-seed-static-line-height-static-small: 135%; -
	-seed-static-line-height-static-medium: 150%; -
	-seed-static-line-height-static-large: 162%; -
	-seed-semantic-typography-h1-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-h2-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-h3-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-h4-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title1-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title1-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title3-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-title3-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-subtitle1-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-subtitle1-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-subtitle2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-subtitle2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-body-l1-bold-line-height: var(- -seed-static-line-height-static-large);
	-
	-seed-semantic-typography-body-l1-regular-line-height: var(- -seed-static-line-height-static-large);
	-
	-seed-semantic-typography-body-l2-bold-line-height: var(- -seed-static-line-height-static-medium);
	-
	-seed-semantic-typography-body-l2-regular-line-height: var(- -seed-static-line-height-static-medium);
	-
	-seed-semantic-typography-body-m1-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-body-m1-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-body-m2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-body-m2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-caption1-bold-line-height: var(- -seed-static-line-height-static-medium);
	-
	-seed-semantic-typography-caption1-regular-line-height: var(- -seed-static-line-height-static-medium);
	-
	-seed-semantic-typography-caption2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-caption2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label1-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label1-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label2-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label2-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label3-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label3-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label4-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label4-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label5-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label5-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label6-bold-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-semantic-typography-label6-regular-line-height: var(- -seed-static-line-height-static-small);
	-
	-seed-scale-color-gray-00: #ffffff; -
	-seed-scale-color-gray-50: #f7f8fa; -
	-seed-scale-color-gray-100: #f2f3f6; -
	-seed-scale-color-gray-200: #eaebee; -
	-seed-scale-color-gray-300: #dcdee3; -
	-seed-scale-color-gray-400: #d1d3d8; -
	-seed-scale-color-gray-500: #adb1ba; -
	-seed-scale-color-gray-600: #868b94; -
	-seed-scale-color-gray-700: #4d5159; -
	-seed-scale-color-gray-800: #393a40; -
	-seed-scale-color-gray-900: #212124; -
	-seed-scale-color-carrot-50: #fff5f0; -
	-seed-scale-color-carrot-100: #ffe2d2; -
	-seed-scale-color-carrot-200: #ffd2b9; -
	-seed-scale-color-carrot-300: #ffbc97; -
	-seed-scale-color-carrot-400: #ff9e66; -
	-seed-scale-color-carrot-500: #ff6f0f; -
	-seed-scale-color-carrot-600: #fa6616; -
	-seed-scale-color-carrot-700: #f05705; -
	-seed-scale-color-carrot-800: #cc4700; -
	-seed-scale-color-carrot-900: #b44104; -
	-seed-scale-color-carrot-950: #a03a03; -
	-seed-scale-color-blue-50: #ebf7fa; -
	-seed-scale-color-blue-100: #d2edfa; -
	-seed-scale-color-blue-200: #b9e3fa; -
	-seed-scale-color-blue-300: #87d7ff; -
	-seed-scale-color-blue-400: #57c7ff; -
	-seed-scale-color-blue-500: #009ceb; -
	-seed-scale-color-blue-600: #0088cc; -
	-seed-scale-color-blue-700: #0077b2; -
	-seed-scale-color-blue-800: #006199; -
	-seed-scale-color-blue-900: #004c73; -
	-seed-scale-color-blue-950: #003b59; -
	-seed-scale-color-red-50: #fff3f2; -
	-seed-scale-color-red-100: #ffe5e3; -
	-seed-scale-color-red-200: #fcd2cf; -
	-seed-scale-color-red-300: #ffaca6; -
	-seed-scale-color-red-400: #ff7e75; -
	-seed-scale-color-red-500: #ff4133; -
	-seed-scale-color-red-600: #fa2314; -
	-seed-scale-color-red-700: #e81607; -
	-seed-scale-color-red-800: #a62014; -
	-seed-scale-color-red-900: #910c00; -
	-seed-scale-color-red-950: #821006; -
	-seed-scale-color-green-50: #e8faf6; -
	-seed-scale-color-green-100: #c7f2e4; -
	-seed-scale-color-green-200: #96ebc3; -
	-seed-scale-color-green-300: #6adeac; -
	-seed-scale-color-green-400: #30c795; -
	-seed-scale-color-green-500: #1aa174; -
	-seed-scale-color-green-600: #128c6e; -
	-seed-scale-color-green-700: #077a5e; -
	-seed-scale-color-green-800: #06614a; -
	-seed-scale-color-green-900: #004f40; -
	-seed-scale-color-green-950: #004034; -
	-seed-scale-color-yellow-50: #fff7e6; -
	-seed-scale-color-yellow-100: #ffe3ba; -
	-seed-scale-color-yellow-200: #facc87; -
	-seed-scale-color-yellow-300: #f7be68; -
	-seed-scale-color-yellow-400: #dea651; -
	-seed-scale-color-yellow-500: #c27f29; -
	-seed-scale-color-yellow-600: #a66c21; -
	-seed-scale-color-yellow-700: #805217; -
	-seed-scale-color-yellow-800: #6b4717; -
	-seed-scale-color-yellow-900: #593d17; -
	-seed-scale-color-yellow-950: #4d361a; -
	-seed-scale-color-pink-50: #fff5f5; -
	-seed-scale-color-pink-100: #ffdddb; -
	-seed-scale-color-pink-200: #ffbfc5; -
	-seed-scale-color-pink-300: #ffadb4; -
	-seed-scale-color-pink-400: #ff8a9d; -
	-seed-scale-color-pink-500: #f0657c; -
	-seed-scale-color-pink-600: #db4b6a; -
	-seed-scale-color-pink-700: #bd2b5c; -
	-seed-scale-color-pink-800: #991c45; -
	-seed-scale-color-pink-900: #800d3d; -
	-seed-scale-color-pink-950: #660a30; -
	-seed-scale-color-purple-50: #f6f4fe; -
	-seed-scale-color-purple-100: #e3dafe; -
	-seed-scale-color-purple-200: #d5c7ff; -
	-seed-scale-color-purple-300: #cfbfff; -
	-seed-scale-color-purple-400: #b69eff; -
	-seed-scale-color-purple-500: #9675fa; -
	-seed-scale-color-purple-600: #8361e8; -
	-seed-scale-color-purple-700: #6748c7; -
	-seed-scale-color-purple-800: #4f3699; -
	-seed-scale-color-purple-900: #3f2687; -
	-seed-scale-color-purple-950: #331e70; -
	-seed-scale-color-gray-alpha-50: #0000000d; -
	-seed-scale-color-gray-alpha-100: #0000001a; -
	-seed-scale-color-gray-alpha-200: #00000033; -
	-seed-scale-color-gray-alpha-500: #00000080; -
	-seed-scale-color-carrot-alpha-50: #ff6f0f0d; -
	-seed-scale-color-carrot-alpha-100: #ff6f0f24; -
	-seed-scale-color-carrot-alpha-200: #ff6f0f33; -
	-seed-scale-color-blue-alpha-50: #009ceb0d; -
	-seed-scale-color-blue-alpha-100: #009ceb1a; -
	-seed-scale-color-blue-alpha-200: #009ceb33; -
	-seed-scale-color-red-alpha-50: #ff41330d; -
	-seed-scale-color-red-alpha-100: #ff41331a; -
	-seed-scale-color-red-alpha-200: #ff413333; -
	-seed-scale-color-yellow-alpha-50: #f7be6814; -
	-seed-scale-color-yellow-alpha-100: #f7be6824; -
	-seed-scale-color-yellow-alpha-200: #f7be683d; -
	-seed-scale-color-green-alpha-50: #1aa1740d; -
	-seed-scale-color-green-alpha-100: #1aa17424; -
	-seed-scale-color-green-alpha-200: #1aa17433; -
	-seed-semantic-color-primary: var(- -seed-scale-color-carrot-500); -
	-seed-semantic-color-primary-low: var(- -seed-scale-color-carrot-alpha-100);
	-
	-seed-semantic-color-secondary: var(- -seed-scale-color-gray-900); -
	-seed-semantic-color-secondary-low: var(- -seed-scale-color-gray-alpha-50);
	-
	-seed-semantic-color-success: var(- -seed-scale-color-green-500); -
	-seed-semantic-color-success-low: var(- -seed-scale-color-green-alpha-50);
	-
	-seed-semantic-color-warning: var(- -seed-scale-color-yellow-400); -
	-seed-semantic-color-warning-low: var(- -seed-scale-color-yellow-alpha-100);
	-
	-seed-semantic-color-danger: var(- -seed-scale-color-red-600); -
	-seed-semantic-color-danger-low: var(- -seed-scale-color-red-alpha-50);
	-
	-seed-semantic-color-paper-sheet: var(- -seed-scale-color-gray-00); -
	-seed-semantic-color-paper-dialog: var(- -seed-scale-color-gray-00); -
	-seed-semantic-color-paper-floating: var(- -seed-scale-color-gray-00);
	-
	-seed-semantic-color-paper-contents: var(- -seed-scale-color-gray-50);
	-
	-seed-semantic-color-paper-default: var(- -seed-scale-color-gray-00); -
	-seed-semantic-color-paper-background: var(- -seed-scale-color-gray-100);
	-
	-seed-semantic-color-paper-accent: var(- -seed-scale-color-carrot-50);
	-
	-seed-semantic-color-primary-hover: var(- -seed-scale-color-carrot-400);
	-
	-seed-semantic-color-primary-pressed: var(- -seed-scale-color-carrot-400);
	-
	-seed-semantic-color-primary-low-hover: var(- -seed-scale-color-carrot-alpha-200);
	-
	-seed-semantic-color-primary-low-active: var(- -seed-scale-color-carrot-alpha-200);
	-
	-seed-semantic-color-primary-low-pressed: var(- -seed-scale-color-carrot-alpha-200);
	-
	-seed-semantic-color-gray-hover: var(- -seed-scale-color-gray-100); -
	-seed-semantic-color-gray-pressed: var(- -seed-scale-color-gray-100); -
	-seed-semantic-color-on-primary-low-overlay-50: var(- -seed-scale-color-carrot-alpha-50);
	-
	-seed-semantic-color-on-primary-low-overlay-100: var(- -seed-scale-color-carrot-alpha-100);
	-
	-seed-semantic-color-on-primary-low-overlay-200: var(- -seed-scale-color-carrot-alpha-200);
	-
	-seed-semantic-color-on-gray-overlay-50: var(- -seed-scale-color-gray-alpha-50);
	-
	-seed-semantic-color-on-gray-overlay-100: var(- -seed-scale-color-gray-alpha-100);
	-
	-seed-semantic-color-text-selection: var(- -seed-scale-color-carrot-50);
	-
	-seed-semantic-color-divider-1: var(- -seed-scale-color-gray-alpha-50);
	-
	-seed-semantic-color-divider-2: var(- -seed-scale-color-gray-200); -
	-seed-semantic-color-divider-3: var(- -seed-scale-color-gray-300); -
	-seed-semantic-color-accent: var(- -seed-scale-color-blue-500); -
	-seed-semantic-color-ink-text: var(- -seed-scale-color-gray-900); -
	-seed-semantic-color-ink-text-low: var(- -seed-scale-color-gray-600); -
	-seed-semantic-color-gray-active: var(- -seed-scale-color-gray-700)
}

#footer-root ._1s38h9c0 {
	display: flex;
	align-items: center
}

#footer-root ._1s38h9c1 {
	display: flex;
	justify-content: center
}

#footer-root ._1s38h9c2 {
	cursor: pointer;
	-webkit-tap-highlight-color: transparent
}

#footer-root ._1s38h9c3 {
	appearance: none;
	border: 0;
	background: none;
	padding: 0
}

#footer-root ._1s38h9c4 {
	text-decoration: none
}

#footer-root ._1s38h9c5 {
	list-style: none;
	padding: 0;
	margin: 0
}

#footer-root ._1y9kelh0 {
	background-color: var(- -seed-semantic-color-paper-default);
	color: var(- -seed-scale-color-gray-900);
	padding: 0 1.6rem 2rem
}

#footer-root ._1y9kelh0:not(:last-child) {
	margin-bottom: 0.8rem
}

#footer-root ._1y9kelh1 {
	font-weight: 700;
	line-height: 1.36;
	font-size: 1.6rem;
	padding: 1.6rem 0
}

#footer-root ._1y9kelh2 {
	max-width: 76.8rem;
	margin: 0 auto
}

@media screen and (min-width: 768px) {
	#footer-root ._1y9kelh0 {
		padding: 0
	}
	#footer-root ._1y9kelh0:not(:last-child) {
		margin-bottom: 5.6rem
	}
	#footer-root ._1y9kelh1 {
		line-height: 1.3;
		font-size: 2rem;
		letter-spacing: -2%
	}
}

#footer-root ._1trxeqs0 {
	background-color: var(- -seed-semantic-color-paper-default);
	color: var(- -seed-scale-color-gray-900);
	border-top: 1px solid var(- -seed-scale-color-gray-200);
	padding: 0 1.6rem;
	box-sizing: border-box;
	width: 100%;
	max-width: 100vw
}

#footer-root ._1trxeqs1 {
	display: flex;
	flex-direction: column
}

#footer-root ._1trxeqs2 {
	display: flex;
	margin-bottom: 2rem
}

#footer-root ._1trxeqs3 {
	font-weight: 700;
	line-height: 1.5;
	font-size: 1.3008rem
}

#footer-root ._1trxeqs4 {
	display: flex;
	margin-left: 2.4rem
}

#footer-root ._1trxeqs4:not(:first-child) {
	margin-left: 1.6rem
}

#footer-root ._1trxeqs5 {
	font-weight: 700;
	line-height: 1.5;
	font-size: 1.3008rem;
	color: var(- -seed-scale-color-gray-900);
	margin-right: 0.8rem
}

#footer-root ._1trxeqs6 {
	color: var(- -seed-scale-color-gray-900);
	margin-right: 0.6rem
}

#footer-root ._1trxeqs7 {
	display: flex
}

#footer-root ._1trxeqs8 {
	display: none
}

#footer-root ._1trxeqs8>svg>rect {
	fill: var(- -seed-scale-color-gray-100)
}

#footer-root ._1trxeqs8>svg>path {
	fill: var(- -seed-scale-color-gray-900)
}

#footer-root ._1trxeqs8:hover>svg>path {
	opacity: .5
}

#footer-root ._1trxeqs9 {
	line-height: 1.5;
	font-size: 1.3008rem;
	display: flex;
	max-width: 76.8rem
}

#footer-root ._1trxeqsa {
	display: flex;
	flex-direction: column;
	padding-inline-start: 0;
	margin-block-start: 0;
	margin-block-end: 0;
	width: 33%
}

#footer-root ._1trxeqsa:last-child {
	margin-right: 15%
}

#footer-root ._1trxeqsb {
	line-height: 1.3;
	font-size: 1.2rem;
	margin-bottom: 1.6rem;
	flex-wrap: wrap;
	color: var(- -seed-scale-color-gray-600)
}

#footer-root ._1trxeqsc {
	margin: 0 0.4rem
}

#footer-root ._1trxeqsd {
	font-style: normal
}

#footer-root ._1trxeqse {
	flex-wrap: wrap;
	display: flex
}

#footer-root ._1trxeqsf {
	font-weight: 700;
	line-height: 1.3;
	font-size: 1.2rem;
	white-space: nowrap;
	color: var(- -seed-scale-color-gray-600)
}

#footer-root ._1trxeqsf:not(:last-child) {
	margin-right: 1.6rem
}

#footer-root ._1trxeqsf:hover {
	text-decoration: underline
}

#footer-root ._1trxeqsg {
	color: var(- -seed-scale-color-gray-700)
}

#footer-root ._1trxeqsh {
	padding: 4.8rem 0
}

#footer-root ._1trxeqsi {
	padding: 2.4rem 0 10rem;
	border-top: 1px solid var(- -seed-scale-color-gray-200)
}

#footer-root ._1trxeqsj {
	margin-bottom: 1.6rem
}

#footer-root ._1trxeqsk {
	margin-top: 2.4rem;
	display: flex;
	align-items: center
}

#footer-root ._1trxeqsl {
	padding-top: 0.4rem
}

#footer-root ._1trxeqsl:hover {
	opacity: 64%
}

#footer-root ._1trxeqsm {
	color: var(- -seed-scale-color-gray-600);
	display: flex;
	align-items: center;
	padding: 0.8rem;
	border-radius: 0.4rem;
	cursor: pointer
}

#footer-root ._1trxeqsm:hover {
	background-color: var(- -seed-scale-color-gray-100)
}

#footer-root ._1trxeqsn {
	background-color: var(- -seed-scale-color-gray-00);
	color: var(- -seed-scale-color-gray-600);
	padding-left: 0.4rem;
	border: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	text-indent: 0.1rem;
	cursor: pointer
}

#footer-root ._1trxeqsn:focus {
	outline: 0
}

#footer-root ._1trxeqsn:hover {
	background-color: var(- -seed-scale-color-gray-100)
}

#footer-root ._1trxeqso {
	text-decoration: none;
	outline: 0
}

#footer-root ._1trxeqs3>._1trxeqso {
	color: var(- -seed-scale-color-gray-900)
}

#footer-root ._1trxeqs9 ._1trxeqso {
	color: var(- -seed-scale-color-gray-900)
}

#footer-root ._1trxeqsk>._1trxeqso:not(:last-child) {
	margin-right: 1.6rem
}

#footer-root ._1trxeqsp {
	width: fit-content;
	list-style: none
}

#footer-root ._1trxeqsa ._1trxeqsp:not(:last-child) {
	margin-bottom: 1.6rem
}

#footer-root ._1trxeqsa ._1trxeqsp:hover {
	text-decoration: underline
}

@media screen and (min-width: 768px) {
	#footer-root ._1trxeqs2 {
		float: right;
		margin-bottom: 0;
		display: flex;
		flex-direction: column
	}
	#footer-root ._1trxeqs3 {
		line-height: 1.4;
		font-size: 1.4rem
	}
	#footer-root ._1trxeqs4 {
		margin-top: 0.8rem;
		margin-left: 0
	}
	#footer-root ._1trxeqs4:not(:first-child) {
		margin-left: 1rem
	}
	#footer-root ._1trxeqs5 {
		line-height: 1.4;
		font-size: 1.4rem;
		display: none
	}
	#footer-root ._1trxeqs6 {
		display: none
	}
	#footer-root ._1trxeqs8 {
		display: block
	}
	#footer-root ._1trxeqs9 {
		line-height: 1.4;
		font-size: 1.4rem
	}
	#footer-root ._1trxeqsb, #footer-root ._1trxeqsf {
		line-height: 1.5;
		font-size: 1.3008rem
	}
	#footer-root ._1trxeqsi {
		display: flex;
		justify-content: space-between;
		align-items: flex-start
	}
	#footer-root ._1trxeqsk {
		margin-top: 0
	}
}
</style>


	<div id="footer-root">
		<div class="light-theme">
			<footer class="_1trxeqs0">
				<div class="_1trxeqs1 _1y9kelh2">
					<section class="_1trxeqsh">
						<section class="_1trxeqs2">
							<div class="_1trxeqs3">당근마켓 앱 다운로드</div>
							<div class="_1trxeqs7">
								<a
									href="https://apps.apple.com/kr/app/%EB%8B%B9%EA%B7%BC%EB%A7%88%EC%BC%93-%EC%A4%91%EA%B3%A0%EA%B1%B0%EB%9E%98-%ED%95%84%EC%88%98%EC%95%B1/id1018769995"
									target="_blank" class="_1trxeqs4 _1trxeqso"><div
										class="_1trxeqs5">iOS</div>
									<span class="_1trxeqs6"><svg viewBox="0 0 24 24"
											fill="none" xmlns="http://www.w3.org/2000/svg"
											data-karrot-ui-icon="true" width="16" height="16">
											<path
												d="M19.0189 5.25376C18.9947 5.21362 18.9667 5.17515 18.9348 5.13887C18.9228 5.12522 18.9103 5.11198 18.8974 5.09918C18.7369 4.9395 18.5255 4.862 18.3155 4.86665L7.0002 4.86662C6.55837 4.86662 6.20019 5.22479 6.20019 5.66661C6.20019 6.10844 6.55836 6.46662 7.00019 6.46662L16.4018 6.46665L5.10101 17.7674C4.78859 18.0799 4.78859 18.5864 5.10101 18.8988C5.41343 19.2112 5.91996 19.2112 6.23238 18.8988L17.5336 7.59763V17C17.5336 17.4418 17.8917 17.8 18.3336 17.8C18.7754 17.8 19.1336 17.4418 19.1336 17V5.66665C19.1336 5.51558 19.0917 5.37429 19.0189 5.25376Z"
												fill="currentColor"></path></svg></span>
								<div class="_1trxeqs8">
										<svg width="147" height="44" viewBox="0 0 147 44" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect width="147" height="44" rx="8"></rect>
											<path
												d="M54.92 17.13L51.49 27H53.66L54.388 24.606H57.874L58.602 27H60.772L57.342 17.13H54.92ZM54.864 23.066L56.068 19.104H56.194L57.398 23.066H54.864ZM64.2499 19.468H62.2479V29.492H64.2499V25.796H64.3759C64.7539 26.622 65.5939 27.112 66.6299 27.112C68.5339 27.112 69.6819 25.656 69.6819 23.234V23.22C69.6819 20.826 68.5059 19.356 66.6299 19.356C65.5659 19.356 64.7679 19.832 64.3759 20.63H64.2499V19.468ZM64.2219 23.234V23.22C64.2219 21.848 64.8939 21.008 65.9439 21.008C67.0079 21.008 67.6519 21.848 67.6519 23.22V23.234C67.6519 24.62 66.9939 25.46 65.9439 25.46C64.8939 25.46 64.2219 24.62 64.2219 23.234ZM73.3144 19.468H71.3124V29.492H73.3144V25.796H73.4404C73.8184 26.622 74.6584 27.112 75.6944 27.112C77.5984 27.112 78.7464 25.656 78.7464 23.234V23.22C78.7464 20.826 77.5704 19.356 75.6944 19.356C74.6304 19.356 73.8324 19.832 73.4404 20.63H73.3144V19.468ZM73.2864 23.234V23.22C73.2864 21.848 73.9584 21.008 75.0084 21.008C76.0724 21.008 76.7164 21.848 76.7164 23.22V23.234C76.7164 24.62 76.0584 25.46 75.0084 25.46C73.9584 25.46 73.2864 24.62 73.2864 23.234ZM85.8045 24.34V24.27H83.8165V24.368C83.9425 26.118 85.4265 27.252 87.7785 27.252C90.2425 27.252 91.7685 26.02 91.7685 24.06C91.7685 22.52 90.8585 21.68 88.7725 21.246L87.7225 21.036C86.5605 20.798 86.0845 20.42 86.0845 19.776V19.762C86.0845 19.034 86.7565 18.558 87.7785 18.558C88.8145 18.558 89.5005 19.048 89.6125 19.748L89.6265 19.832H91.5725L91.5585 19.748C91.4325 18.096 90.0885 16.878 87.7785 16.878C85.5945 16.878 84.0125 18.096 84.0125 19.93C84.0125 21.428 84.8945 22.38 86.9525 22.8L87.9885 23.01C89.2205 23.262 89.6965 23.626 89.6965 24.284C89.6965 25.04 88.9405 25.572 87.8345 25.572C86.6865 25.572 85.8885 25.068 85.8045 24.34ZM92.8998 19.468V20.98H94.0618V24.97C94.0618 26.426 94.8038 27.028 96.6238 27.028C97.0158 27.028 97.3798 26.986 97.6318 26.944V25.46C97.4358 25.474 97.2958 25.488 97.0438 25.488C96.3578 25.488 96.0778 25.194 96.0778 24.508V20.98H97.6318V19.468H96.0778V17.676H94.0618V19.468H92.8998ZM98.921 23.22V23.234C98.921 25.684 100.321 27.154 102.631 27.154C104.955 27.154 106.341 25.698 106.341 23.234V23.22C106.341 20.798 104.927 19.314 102.631 19.314C100.335 19.314 98.921 20.798 98.921 23.22ZM100.965 23.234V23.22C100.965 21.75 101.567 20.868 102.631 20.868C103.681 20.868 104.297 21.75 104.297 23.22V23.234C104.297 24.718 103.695 25.586 102.631 25.586C101.567 25.586 100.965 24.718 100.965 23.234ZM109.969 19.468H107.967V27H109.969V22.786C109.969 21.722 110.683 21.078 111.817 21.078C112.125 21.078 112.433 21.12 112.741 21.19V19.44C112.545 19.384 112.251 19.356 111.985 19.356C111.019 19.356 110.333 19.832 110.095 20.644H109.969V19.468ZM117.369 27.154C119.567 27.154 120.533 25.88 120.771 24.942L120.785 24.872H118.923L118.909 24.914C118.769 25.208 118.279 25.67 117.411 25.67C116.347 25.67 115.689 24.942 115.661 23.71H120.841V23.094C120.841 20.812 119.483 19.314 117.285 19.314C115.087 19.314 113.687 20.84 113.687 23.234V23.248C113.687 25.656 115.073 27.154 117.369 27.154ZM115.689 22.464C115.801 21.4 116.445 20.812 117.313 20.812C118.181 20.812 118.811 21.372 118.923 22.464H115.689Z"></path>
											<path fill-rule="evenodd" clip-rule="evenodd"
												d="M39.8838 16.2426C42.0624 16.2426 43.4555 18.3729 43.4555 18.3729C43.4555 18.3729 41.3303 19.5383 41.3303 22.0694C41.3303 25.0734 44 25.9473 44 25.9473C44 25.9473 41.8928 31 39.5268 31C38.1963 31 38.1074 30.2265 36.3393 30.2265C34.8038 30.2265 34.286 31 33.1164 31C30.8839 31 28 26.0748 28 22.0694C28 17.9088 30.9198 16.2426 32.7501 16.2426C34.3574 16.2426 35.0268 17.1985 36.3213 17.1985C37.4108 17.1985 38.2682 16.2426 39.8838 16.2426ZM39.5093 12C39.8304 14.0393 38.0001 16.5614 35.8127 16.4794C35.4912 13.8846 37.8485 12.1369 39.5093 12Z"></path></svg>
									</div></a><a
									href="https://play.google.com/store/apps/details?id=com.towneers.www&amp;hl=ko"
									target="_blank" class="_1trxeqs4 _1trxeqso"><div
										class="_1trxeqs5">Android</div>
									<span class="_1trxeqs6"><svg viewBox="0 0 24 24"
											fill="none" xmlns="http://www.w3.org/2000/svg"
											data-karrot-ui-icon="true" width="16" height="16">
											<path
												d="M19.0189 5.25376C18.9947 5.21362 18.9667 5.17515 18.9348 5.13887C18.9228 5.12522 18.9103 5.11198 18.8974 5.09918C18.7369 4.9395 18.5255 4.862 18.3155 4.86665L7.0002 4.86662C6.55837 4.86662 6.20019 5.22479 6.20019 5.66661C6.20019 6.10844 6.55836 6.46662 7.00019 6.46662L16.4018 6.46665L5.10101 17.7674C4.78859 18.0799 4.78859 18.5864 5.10101 18.8988C5.41343 19.2112 5.91996 19.2112 6.23238 18.8988L17.5336 7.59763V17C17.5336 17.4418 17.8917 17.8 18.3336 17.8C18.7754 17.8 19.1336 17.4418 19.1336 17V5.66665C19.1336 5.51558 19.0917 5.37429 19.0189 5.25376Z"
												fill="currentColor"></path></svg></span>
								<div class="_1trxeqs8">
										<svg width="147" height="44" viewBox="0 0 147 44" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect width="147" height="44" rx="8" fill="#EAEBEE"></rect>
											<path
												d="M44.756 22.044V22.058C44.756 25.278 46.562 27.252 49.488 27.252C52.19 27.252 53.87 25.614 53.87 22.996V21.736H49.726V23.248H51.854V23.43C51.812 24.676 50.874 25.502 49.53 25.502C47.892 25.502 46.87 24.186 46.87 22.044V22.03C46.87 19.93 47.85 18.628 49.446 18.628C50.594 18.628 51.434 19.216 51.714 20.196L51.728 20.266H53.786L53.772 20.196C53.478 18.222 51.77 16.878 49.446 16.878C46.576 16.878 44.756 18.88 44.756 22.044ZM55.2667 23.22V23.234C55.2667 25.684 56.6667 27.154 58.9767 27.154C61.3007 27.154 62.6867 25.698 62.6867 23.234V23.22C62.6867 20.798 61.2727 19.314 58.9767 19.314C56.6807 19.314 55.2667 20.798 55.2667 23.22ZM57.3107 23.234V23.22C57.3107 21.75 57.9127 20.868 58.9767 20.868C60.0267 20.868 60.6427 21.75 60.6427 23.22V23.234C60.6427 24.718 60.0407 25.586 58.9767 25.586C57.9127 25.586 57.3107 24.718 57.3107 23.234ZM63.9484 23.22V23.234C63.9484 25.684 65.3484 27.154 67.6584 27.154C69.9824 27.154 71.3684 25.698 71.3684 23.234V23.22C71.3684 20.798 69.9544 19.314 67.6584 19.314C65.3624 19.314 63.9484 20.798 63.9484 23.22ZM65.9924 23.234V23.22C65.9924 21.75 66.5944 20.868 67.6584 20.868C68.7084 20.868 69.3244 21.75 69.3244 23.22V23.234C69.3244 24.718 68.7224 25.586 67.6584 25.586C66.5944 25.586 65.9924 24.718 65.9924 23.234ZM72.616 23.052V23.066C72.616 25.208 73.778 26.678 75.668 26.678C76.718 26.678 77.516 26.244 77.922 25.446H78.048V26.846C78.048 27.728 77.432 28.218 76.368 28.218C75.472 28.218 74.954 27.924 74.842 27.49V27.462H72.868V27.49C73.022 28.778 74.24 29.646 76.326 29.646C78.594 29.646 80.036 28.526 80.036 26.762V19.468H78.048V20.7H77.95C77.544 19.86 76.732 19.356 75.71 19.356C73.778 19.356 72.616 20.84 72.616 23.052ZM74.66 23.066V23.052C74.66 21.806 75.276 20.966 76.354 20.966C77.418 20.966 78.076 21.806 78.076 23.052V23.066C78.076 24.298 77.432 25.138 76.354 25.138C75.262 25.138 74.66 24.298 74.66 23.066ZM82.1148 16.598V27H84.1168V16.598H82.1148ZM89.4917 27.154C91.6897 27.154 92.6557 25.88 92.8937 24.942L92.9077 24.872H91.0457L91.0317 24.914C90.8917 25.208 90.4017 25.67 89.5337 25.67C88.4697 25.67 87.8117 24.942 87.7837 23.71H92.9637V23.094C92.9637 20.812 91.6057 19.314 89.4077 19.314C87.2097 19.314 85.8097 20.84 85.8097 23.234V23.248C85.8097 25.656 87.1957 27.154 89.4917 27.154ZM87.8117 22.464C87.9237 21.4 88.5677 20.812 89.4357 20.812C90.3037 20.812 90.9337 21.372 91.0457 22.464H87.8117ZM102.53 17.13H98.4556V27H100.528V23.892H102.53C104.602 23.892 106.002 22.548 106.002 20.518V20.504C106.002 18.474 104.602 17.13 102.53 17.13ZM100.528 22.282V18.768H102.026C103.202 18.768 103.902 19.384 103.902 20.518V20.532C103.902 21.652 103.202 22.282 102.026 22.282H100.528ZM107.763 16.598V27H109.765V16.598H107.763ZM113.88 27.112C114.86 27.112 115.658 26.692 116.036 26.006H116.162V27H118.136V21.862C118.136 20.252 117.002 19.314 115 19.314C113.11 19.314 111.864 20.182 111.71 21.498V21.568H113.544L113.558 21.54C113.726 21.092 114.174 20.84 114.902 20.84C115.714 20.84 116.162 21.204 116.162 21.862V22.478L114.342 22.59C112.466 22.702 111.43 23.486 111.43 24.844V24.858C111.43 26.23 112.438 27.112 113.88 27.112ZM113.376 24.732V24.718C113.376 24.172 113.782 23.85 114.65 23.794L116.162 23.71V24.256C116.162 25.054 115.476 25.656 114.552 25.656C113.852 25.656 113.376 25.306 113.376 24.732ZM121.662 19.468H119.464L122.11 27L122.04 27.294C121.9 27.882 121.494 28.148 120.78 28.148C120.598 28.148 120.402 28.148 120.262 28.134V29.632C120.5 29.646 120.752 29.66 120.976 29.66C122.838 29.66 123.832 28.988 124.504 26.986L127.066 19.468H124.952L123.384 25.18H123.244L121.662 19.468Z"
												fill="#212124"></path>
											<path fill-rule="evenodd" clip-rule="evenodd"
												d="M20.5227 32C20.2061 31.9138 20 31.596 20 31.1044V14.8742C20 14.4188 20.1745 14.1117 20.4511 14L28.3418 23.0448L20.5227 32ZM21.6089 31.6555L31.1069 26.2143L28.7935 23.5626L21.6089 31.6555ZM31.1723 19.8032L21.8067 14.4366L28.8072 22.5119L31.1723 19.8032ZM31.8077 20.1673L35.4766 22.2696C36.1713 22.6677 36.1776 23.3093 35.4766 23.7109L31.7149 25.866L29.2613 23.0357L31.8077 20.1673Z"
												fill="#212124"></path></svg>
									</div></a>
							</div>
						</section>
						<nav aria-label="footer" class="_1trxeqs9">
							<ul class="_1trxeqsa">
								<li class="_1trxeqsp"><a
									href="https://www.daangn.com/hot_articles" target="_blank"
									class="undefined _1trxeqso">중고거래</a></li>
								<li class="_1trxeqsp"><a
									href="https://www.daangn.com/kr/nearby-stores" target="_blank"
									class="undefined _1trxeqso">동네가게</a></li>
								<li class="_1trxeqsp"><a
									href="https://www.daangn.com/kr/jobs" target="_blank"
									class="undefined _1trxeqso">당근알바</a></li>
								<li class="_1trxeqsp"><a
									href="https://www.daangn.com/kr/realty" target="_blank"
									class="undefined _1trxeqso">부동산 직거래</a></li>
								<li class="_1trxeqsp"><a
									href="https://www.daangn.com/kr/car" target="_blank"
									class="undefined _1trxeqso">중고차 직거래</a></li>
							</ul>
							<ul class="_1trxeqsa">
								<li class="_1trxeqsp"><a href="https://business.daangn.com"
									target="_blank" class="undefined _1trxeqso">당근비즈니스</a></li>
								<li class="_1trxeqsp"><a
									href="https://chat.daangn.com/onboarding" target="_blank"
									class="undefined _1trxeqso">채팅하기</a></li>
							</ul>
							<ul class="_1trxeqsa">
								<li class="_1trxeqsp"><a
									href="https://cs.kr.karrotmarket.com/wv/faqs" target="_blank"
									class="undefined _1trxeqso">자주 묻는 질문</a></li>
								<li class="_1trxeqsp"><a href="https://about.daangn.com"
									target="_blank" class="undefined _1trxeqso">회사 소개</a></li>
								<li class="_1trxeqsp"><a
									href="https://about.daangn.com/jobs" target="_blank"
									class="undefined _1trxeqso">인재 채용</a></li>
							</ul>
						</nav>
					</section>
					<section class="_1trxeqsi">
						<section>
							<section class="_1trxeqsb">
								<div class="_1s38h9c0">
									<span><b>대표</b> <!-- -->김용현, 황도연</span><span class="_1trxeqsc"><svg
											width="2" height="10" viewBox="0 0 2 10" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<rect opacity="0.5" x="0.535767" width="1.03646" height="10"
												fill="#868B94"></rect></svg></span><span><b>사업자번호</b> <!-- -->375-87-00088</span>
								</div>
								<div>
									<b>직업정보제공사업 신고번호</b>
									<!-- -->
									2016-서울서초-0051
								</div>
								<address class="_1trxeqsd">
									<div>
										<b>주소</b>
										<!-- -->
										서울특별시 구로구 디지털로 30길 28, 609호 (당근서비스)
									</div>
									<div>
										<span><b>전화</b> <!-- -->1544-9796</span><span
											class="_1trxeqsc"><svg width="2" height="10"
												viewBox="0 0 2 10" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<rect opacity="0.5" x="0.535767" width="1.03646" height="10"
													fill="#868B94"></rect></svg></span><span><b>고객문의</b> <!-- -->cs@daangnservice.com</span>
									</div>
								</address>
							</section>
							<section class="_1trxeqsj">
								<a href="mailto:contact@daangn.com" target="_blank"
									class="_1trxeqsf _1trxeqso">제휴 문의</a> <a
									href="mailto:ad@daangn.com" target="_blank"
									class="_1trxeqsf _1trxeqso">광고 문의</a> <a
									href="mailto:pr@daangn.com" target="_blank"
									class="_1trxeqsf _1trxeqso">PR 문의</a> <a
									href="mailto:ir@daangn.com" target="_blank"
									class="_1trxeqsf _1trxeqso">IR 문의</a>
							</section>

							<section class="_1trxeqse">
								<div class="_1trxeqsf">
									<a href="https://www.daangn.com/policy/terms" target="_blank"
										class="_1trxeqsf _1trxeqso">이용약관</a>
								</div>
								<div class="_1trxeqsf _1trxeqsg">
									<a href="https://www.daangn.com/policy/privacy" target="_blank"
										class="_1trxeqsf _1trxeqsg _1trxeqso">개인정보처리방침</a>
								</div>
								<div class="_1trxeqsf">
									<a href="https://www.daangn.com/policy/location"
										target="_blank" class="_1trxeqsf _1trxeqso">위치기반서비스 이용약관</a>
								</div>
								<div class="_1trxeqsf">
									<a href="https://www.daangn.com/wv/faqs/3994" target="_blank"
										class="_1trxeqsf _1trxeqso">이용자보호 비전과 계획</a>
								</div>
							</section>
						</section>

						<section class="_1trxeqsk">
							<a aria-label="facebook" href="#" target="_blank"
								class="_1trxeqsl _1trxeqso"> <svg width="25" height="24"
									viewBox="0 0 25 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
<path
										d="M22.7158 12.0458C22.7158 6.21012 18.0165 1.48242 12.2158 1.48242C6.41515 1.48242 1.71582 6.21012 1.71582 12.0458C1.71582 17.3181 5.55649 21.689 10.5732 22.4824V15.0974H7.90382V12.0458H10.5732V9.71716C10.5732 7.06928 12.1412 5.60918 14.5398 5.60918C15.6878 5.60918 16.8918 5.81575 16.8918 5.81575V8.412H15.5665C14.2645 8.412 13.8538 9.22421 13.8538 10.0599V12.0411H16.7658L16.2992 15.0927H13.8538V22.473C18.8752 21.6843 22.7158 17.3181 22.7158 12.0458Z"
										fill="#868B94"></path>
</svg></a> <a aria-label="instagram" href="#" target="_blank"
								class="_1trxeqsl _1trxeqso"> <svg width="25" height="24"
									viewBox="0 0 25 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
<path
										d="M11.7928 3.67695C14.6079 3.67695 14.9413 3.68727 16.053 3.73611C17.081 3.78129 17.6392 3.94668 18.0107 4.08567C18.5028 4.26984 18.854 4.48988 19.223 4.84513C19.5919 5.20037 19.8204 5.53861 20.0116 6.01245C20.156 6.37024 20.3277 6.9078 20.3746 7.8976C20.4253 8.96817 20.4361 9.28924 20.4361 12.0001C20.4361 14.7109 20.4253 15.0319 20.3746 16.1025C20.3277 17.0923 20.156 17.6299 20.0116 17.9877C19.8204 18.4615 19.5919 18.7997 19.223 19.155C18.854 19.5102 18.5028 19.7303 18.0107 19.9144C17.6392 20.0534 17.081 20.2188 16.053 20.264C14.9415 20.3128 14.6081 20.3232 11.7928 20.3232C8.97759 20.3232 8.64417 20.3128 7.53264 20.264C6.50472 20.2188 5.94648 20.0534 5.57498 19.9144C5.08287 19.7303 4.73162 19.5102 4.36271 19.155C3.99381 18.7997 3.76531 18.4615 3.57409 17.9877C3.42971 17.6299 3.25796 17.0923 3.21105 16.1025C3.16032 15.0319 3.14961 14.7109 3.14961 12.0001C3.14961 9.28924 3.16032 8.96817 3.21105 7.89764C3.25796 6.9078 3.42971 6.37024 3.57409 6.01245C3.76531 5.53861 3.99381 5.20037 4.36271 4.84513C4.73162 4.48988 5.08287 4.26984 5.57498 4.08567C5.94648 3.94668 6.50472 3.78129 7.5326 3.73611C8.64434 3.68727 8.97776 3.67695 11.7928 3.67695ZM11.7928 1.84766C8.92955 1.84766 8.57056 1.85934 7.44605 1.90875C6.32384 1.95808 5.55749 2.12968 4.88684 2.38066C4.19356 2.64011 3.60561 2.98726 3.0195 3.55166C2.43339 4.11606 2.0729 4.68223 1.80347 5.34984C1.54282 5.99565 1.36463 6.73362 1.3134 7.81426C1.26209 8.89708 1.25 9.24282 1.25 12.0001C1.25 14.7573 1.26209 15.103 1.3134 16.1859C1.36463 17.2665 1.54282 18.0045 1.80347 18.6503C2.0729 19.3178 2.43339 19.8841 3.0195 20.4485C3.60561 21.0129 4.19356 21.36 4.88684 21.6195C5.55749 21.8704 6.32384 22.042 7.44605 22.0914C8.57056 22.1408 8.92955 22.1524 11.7928 22.1524C14.6561 22.1524 15.0152 22.1408 16.1396 22.0914C17.2618 22.042 18.0282 21.8704 18.6988 21.6195C19.3921 21.36 19.9801 21.0129 20.5662 20.4485C21.1523 19.8841 21.5128 19.3179 21.7822 18.6503C22.0428 18.0045 22.221 17.2665 22.2723 16.1859C22.3236 15.103 22.3357 14.7573 22.3357 12.0001C22.3357 9.24282 22.3236 8.89708 22.2723 7.81426C22.221 6.73362 22.0428 5.99565 21.7822 5.34984C21.5128 4.68223 21.1523 4.11606 20.5662 3.55166C19.9801 2.98726 19.3921 2.64011 18.6988 2.38066C18.0282 2.12968 17.2618 1.95808 16.1396 1.90875C15.0152 1.85934 14.6561 1.84766 11.7928 1.84766ZM11.7928 6.78666C8.80283 6.78666 6.37892 9.12079 6.37892 12.0001C6.37892 14.8793 8.80283 17.2135 11.7928 17.2135C14.7828 17.2135 17.2068 14.8793 17.2068 12.0001C17.2068 9.12079 14.7828 6.78666 11.7928 6.78666ZM11.7928 15.3842C9.85196 15.3842 8.27853 13.869 8.27853 12.0001C8.27853 10.1311 9.85196 8.61591 11.7928 8.61591C13.7337 8.61591 15.3071 10.1311 15.3071 12.0001C15.3071 13.869 13.7337 15.3842 11.7928 15.3842ZM18.6858 6.58068C18.6858 7.25353 18.1194 7.79899 17.4206 7.79899C16.7219 7.79899 16.1555 7.25353 16.1555 6.58068C16.1555 5.90784 16.7219 5.36242 17.4206 5.36242C18.1194 5.36242 18.6858 5.90784 18.6858 6.58068Z"
										fill="#868B94"></path></svg></a><a aria-label="youtube"
								href="https://www.youtube.com/channel/UC8tsBsQBuF7QybxgLmStihA"
								target="_blank" class="_1trxeqsl _1trxeqso"><svg width="25"
									height="24" viewBox="0 0 25 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<g clip-path="url(#clip0_1492_32246)">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M21.6404 3.5339C22.6684 3.82139 23.4789 4.66332 23.7557 5.73112C24.2697 7.68193 24.2499 11.7478 24.2499 11.7478C24.2499 11.7478 24.2499 15.7932 23.7557 17.744C23.4789 18.8118 22.6684 19.6537 21.6404 19.9412C19.7623 20.4545 12.2499 20.4545 12.2499 20.4545C12.2499 20.4545 4.75739 20.4545 2.85954 19.9206C1.83154 19.6332 1.021 18.7912 0.744232 17.7234C0.25 15.7932 0.25 11.7273 0.25 11.7273C0.25 11.7273 0.25 7.68193 0.744232 5.73112C1.021 4.66332 1.85131 3.80086 2.85954 3.51337C4.73763 3 12.2499 3 12.2499 3C12.2499 3 19.7623 3 21.6404 3.5339ZM9.85784 7.99009L16.1049 11.7274L9.85784 15.4647V7.99009Z"
										fill="#868B94"></path></g>
									<defs>
									<clipPath id="clip0_1492_32246">
									<rect width="24" height="24" fill="white"
										transform="translate(0.25)"></rect></clipPath></defs></svg></a><a aria-label="blog"
								href="https://blog.naver.com/daangn" target="_blank"
								class="_1trxeqsl _1trxeqso"><svg width="25" height="24"
									viewBox="0 0 25 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<g clip-path="url(#clip0_1492_32254)">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M2.86619 3H21.6338C23.0736 3 24.2515 4.17222 24.25 5.60362V16.1668C24.25 17.5982 23.0736 18.7704 21.6338 18.7704H14.2351C14.2351 18.7704 12.6961 22.6376 12.1768 22.6376C11.6588 22.6376 10.2353 18.7704 10.2353 18.7704H2.86619C1.42788 18.7704 0.25 17.5982 0.25 16.1668V5.60362C0.25 4.17222 1.42788 3 2.86619 3ZM5.66291 13.3438C6.2844 13.3438 6.85411 13.1685 7.22552 12.7518C7.59842 12.335 7.78191 11.9404 7.78191 11.2512C7.78191 10.6179 7.54959 10.0451 7.23292 9.67987C6.91477 9.31318 6.38355 8.99509 5.87303 9.01276C5.2767 9.03191 4.77062 9.14236 4.38885 9.46633H4.37109V7.12779H2.96237V13.2436H4.37109V12.9462H4.38885C4.6922 13.1759 5.10209 13.3438 5.66291 13.3438ZM8.81329 13.2893H10.2501V9.55175C10.1332 7.12337 8.11929 7.00115 8.11929 7.00115V8.51649C8.11929 8.51649 8.81329 8.63135 8.81329 9.50462V13.2893ZM15.3612 12.8622C15.5935 12.6472 15.7681 12.4028 15.8894 12.1289C16.0093 11.8564 16.0685 11.5663 16.0714 11.2585C16.0714 10.9507 16.0108 10.6606 15.8909 10.3867C15.7696 10.1128 15.595 9.86836 15.3626 9.65336C15.1333 9.4413 14.8714 9.27784 14.5754 9.16444C14.278 9.05105 13.9658 8.99509 13.6358 8.99509C13.3117 8.99509 13.0039 9.05105 12.7109 9.16444C12.4179 9.27784 12.156 9.43983 11.9237 9.65336C11.6855 9.8772 11.5064 10.1246 11.3836 10.3956C11.2608 10.6665 11.2001 10.9552 11.2001 11.2585C11.2001 11.5619 11.2608 11.8505 11.3821 12.12C11.5049 12.391 11.684 12.6384 11.9222 12.8622C12.1531 13.0743 12.415 13.2378 12.7095 13.3511C13.0024 13.4645 13.3102 13.522 13.6343 13.522C13.9643 13.522 14.278 13.4645 14.5739 13.3511C14.8714 13.2378 15.1333 13.0743 15.3612 12.8622ZM20.8525 14.921C21.3349 14.4659 21.5391 13.8106 21.5391 12.7371V9.0378H20.1393V9.37503H20.1215C19.7812 9.06578 19.4334 8.93324 18.88 8.93324C18.2629 8.93324 17.7228 9.13794 17.3455 9.57678C16.9667 10.0142 16.7773 10.6076 16.7773 11.3528C16.7773 12.0184 16.946 12.5486 17.2863 12.9447C17.6252 13.3408 18.1268 13.5529 18.7054 13.5529C19.3298 13.5529 19.7989 13.3924 20.12 12.9506H20.1378V13.2348C20.1393 13.9741 19.3506 14.3496 18.7779 14.2922V15.4025C19.4645 15.4997 20.2798 15.4614 20.8525 14.921ZM12.9462 10.5489C13.1356 10.356 13.365 10.2603 13.6328 10.2603C13.9051 10.2603 14.1374 10.356 14.3313 10.5489C14.5251 10.7418 14.6213 10.976 14.6213 11.2499C14.6213 11.5238 14.5251 11.7579 14.3313 11.9508C14.1374 12.1423 13.9051 12.2395 13.6328 12.2395C13.365 12.2395 13.1356 12.1438 12.9462 11.9508C12.7568 11.7579 12.6606 11.5252 12.6606 11.2499C12.6606 10.976 12.7553 10.7418 12.9462 10.5489ZM4.64057 10.5577C4.82998 10.3662 5.05934 10.269 5.32717 10.269C5.59945 10.269 5.83177 10.3648 6.02561 10.5577C6.21946 10.7506 6.31564 10.9847 6.31564 11.2587C6.31564 11.534 6.21946 11.7667 6.02561 11.9596C5.83177 12.1525 5.59945 12.2497 5.32717 12.2497C5.05934 12.2497 4.83146 12.1525 4.64057 11.9596C4.44968 11.7667 4.35498 11.5326 4.35498 11.2587C4.35498 10.9847 4.44968 10.7506 4.64057 10.5577ZM19.1714 10.269C18.9036 10.269 18.6742 10.3662 18.4833 10.5577C18.2939 10.7506 18.1978 10.9847 18.1978 11.2587C18.1978 11.5326 18.2939 11.7667 18.4833 11.9596C18.6742 12.1525 18.9036 12.2497 19.1714 12.2497C19.4422 12.2497 19.676 12.1525 19.8699 11.9596C20.0637 11.7667 20.1599 11.534 20.1599 11.2587C20.1599 10.9847 20.0622 10.7506 19.8699 10.5577C19.676 10.3648 19.4437 10.269 19.1714 10.269Z"
										fill="#868B94"></path></g>
									<defs>
									<clipPath id="clip0_1492_32254">
									<rect width="24" height="24" fill="white"
										transform="translate(0.25)"></rect></clipPath></defs></svg></a>
							<div>
								<label class="_1trxeqsm" for="label-select-nation"><svg
										viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg" data-karrot-ui-icon="true"
										width="16" height="16">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M12 2.8002C6.91893 2.8002 2.79995 6.91918 2.79995 12.0002C2.79995 17.0812 6.91893 21.2002 12 21.2002C17.081 21.2002 21.2 17.0812 21.2 12.0002C21.2 6.91918 17.081 2.8002 12 2.8002ZM1.19995 12.0002C1.19995 6.03552 6.03528 1.2002 12 1.2002C17.9646 1.2002 22.8 6.03552 22.8 12.0002C22.8 17.9649 17.9646 22.8002 12 22.8002C6.03528 22.8002 1.19995 17.9649 1.19995 12.0002Z"
											fill="currentColor"></path>
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M11.4618 22.5921C5.2144 16.9126 5.2144 7.08767 11.4618 1.4082L12.5381 2.59211C6.98897 7.63676 6.98897 16.3636 12.5381 21.4082L11.4618 22.5921Z"
											fill="currentColor"></path>
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M12.5381 22.5921C18.7855 16.9126 18.7855 7.08767 12.5381 1.4082L11.4618 2.59211C17.0109 7.63676 17.0109 16.3636 11.4618 21.4082L12.5381 22.5921Z"
											fill="currentColor"></path>
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M1.69995 9.0002C1.69995 8.55837 2.05812 8.2002 2.49995 8.2002H21.5C21.9418 8.2002 22.2999 8.55837 22.2999 9.0002C22.2999 9.44202 21.9418 9.8002 21.5 9.8002H2.49995C2.05812 9.8002 1.69995 9.44202 1.69995 9.0002Z"
											fill="currentColor"></path>
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M1.69995 15.0002C1.69995 14.5584 2.05812 14.2002 2.49995 14.2002H21.5C21.9418 14.2002 22.2999 14.5584 22.2999 15.0002C22.2999 15.442 21.9418 15.8002 21.5 15.8002H2.49995C2.05812 15.8002 1.69995 15.442 1.69995 15.0002Z"
											fill="currentColor"></path></svg> <select id="label-select-nation"
									class="_1trxeqsn">
										<option value="kr" selected="">한국</option>
										<option value="https://uk.karrotmarket.com">영국</option>
										<option value="https://ca.karrotmarket.com">캐나다</option>
										<option value="https://us.karrotmarket.com">미국</option>
										<option value="https://jp.karrotmarket.com">일본</option>
								</select> <svg viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg" data-karrot-ui-icon="true"
										width="16" height="16">
<path fill-rule="evenodd" clip-rule="evenodd"
											d="M2.93427 7.43427C3.24669 7.12185 3.75322 7.12185 4.06564 7.43427L12 15.3686L19.9343 7.43427C20.2467 7.12185 20.7532 7.12185 21.0656 7.43427C21.3781 7.74669 21.3781 8.25322 21.0656 8.56564L12.5656 17.0656C12.2532 17.3781 11.7467 17.3781 11.4343 17.0656L2.93427 8.56564C2.62185 8.25322 2.62185 7.74669 2.93427 7.43427Z"
											fill="currentColor"></path>
</svg> </label>
							</div>
						</section>

					</section>
				</div>
			</footer>
		</div>
	</div>



</body>
</html>
