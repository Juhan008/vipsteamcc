<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src='/resources/scripts/templatejs.js'></script>
<link rel='stylesheet'
	href='/resources/styles/template/includetemplate.css' />
</head>
<body>

	<div id="template-root">
		<div class="template-top-head" id="template-top-head">

			<div class="template-top-top-area">
				<div class="template-english-button-area">
					<div class="template-english-button">ENGLISH</div>
				</div>

				<div class="template-VIPS-logo-area">
					<div class="template-VIPS-logo">
						<a href="/intro">
							<img src="/resources/images/main/VIPS.png" alt="VIPS"
								class="template-VIPS-logo" />
						</a>
					</div>
				</div>

				<div class="template-head-menu-area">
					<c:choose>
						<c:when test="${userId==null}">
							<div class="template-head-menu">
								<a href="/member/login">로그인</a>
							</div>
							<div class="template-head-menu-finish">
								<a href="/member/join">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<div class="template-head-menu">
								<a href="/member/logout">로그아웃</a>
							</div>
							<c:if
								test="${member.equals('admin')||member.equals('sub-admin')}">
								<div class="template-head-menu">
									<a href="/admin/adminPage">관리페이지</a>
								</div>
							</c:if>
							
							<c:if
								test="${member.equals('admin')||member.equals('sub-admin')||member.equals('low-admin')}">
								<div class="template-head-menu">
									<a href="/store/storeReservationAdmin">예약관리페이지</a>
								</div>
							</c:if>
							
							<div class="template-head-menu-finish">
								<a href="/store/storeCheckReservation">예약확인</a>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="template-move-menu-area">
				<div style="width: 100%;">

					<div class="template-sub-menu-title-area">
						<div class="template-move-menu-button">
							<a href="/story/storyBrandStory">VIPS STORY</a>
						</div>

						<div class="template-move-menu-button">
							<a href="/steak/premiumSteak">STEAK</a>
						</div>


						<div class="template-move-menu-button">
							<a href="/mainSaladbar">SALAD BAR</a>
						</div>

						<div class="template-move-menu-button">
							<a href="/store/storeFirstBirthdayQ">STORE</a>
						</div>

						<div class="template-move-menu-button">
							<a href="/event/evtHotEventQ">EVENT</a>
						</div>

						<div class="template-move-menu-button">
							<a href="/benefit/beCard"> BENEFIT</a>
						</div>

						<div class="template-move-menu-button">
							<a href="/membership/msCjoneQ">MEMBERSHIP</a>
						</div>
					</div>
					<div class="template-hidden-move-area"
						id="template-hidden-move-area">
						<div class="template-hidden-move-button1">

							<div>
								<a href="/story/storyBrandStory">브랜드 스토리</a>
							</div>

							<br>

							<div>
								<a href="/story/storyNewsQ">새소식</a>
							</div>

						</div>


						<div class="template-hidden-move-button2">
							<a href="/steak/premiumSteak">Premium Steak</a>
						</div>


						<div class="template-hidden-move-button3">
							<div>
								<a href="/saladbar">Salad Bar</a>
							</div>
							<br>
							<div>
								<a href="/saladBeverage01">Beverage</a>
							</div>
							<br>
							<div>
								<a href="/togomenu01">픽업&딜리버리</a>
							</div>
							<br>
							<div>
								<a href="/ingredientInfo">원산지 정보</a>
							</div>
							<br>
							<div>
								<a href="/allergy">알레르기 정보</a>
							</div>
							<br>
							<div>
								<a href="/allergyDelivery">
									알레르기 정보
									<br>
									(딜리버리)
								</a>
							</div>
						</div>
						<div class="template-hidden-move-button4">

							<div>
								<a href="/store/storeFirstBirthdayQ">돌잔치</a>
							</div>

						</div>
						<div class="template-hidden-move-button5">
							<a href="/event/evtHotEventQ">HOT 이벤트 </a>
						</div>
						<div class="template-hidden-move-button6">
							<div>
								<a href="/benefit/beCard">제휴/할인카드</a>
							</div>
							<br>
							<div>
								<a href="/benefit/beGiftCard">상품권</a>
							</div>
							<br>
							<div>
								<a href="/benefit/giftCard">기프트카드</a>
							</div>
						</div>
						<div class="template-hidden-move-button7">
							<div>
								<a href="/membership/msCjoneQ"> CJ ONE</a>
							</div>
							<br>
							<div>
								<a href="/membership/msManiaQ">빕스 매니아</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</html>