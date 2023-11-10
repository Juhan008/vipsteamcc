<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빕스 돌잔치 소개 | 돌잔치 - VIPS</title>
<link rel='stylesheet'
	href='/resources/styles/store/storeFirstBirthdayQ.css' />
</head>
<body>

	<div id="root">
		<div class="background-shadow">
			<jsp:include page="../template/templateHeaderFirst.jsp"></jsp:include>
			<div class="padding-box">

				<div class="wrap">

					<div class="side-menu-area">
						<img src="/resources/images/store/sideSTORE.gif" alt="스토어"
							class="VIPSSTORY" />

						<div class="side-button-area">
							<a href="./storeFirstBirthdayQ">
								<img src="/resources/images/store/firstBirthdayParty.gif"
									alt="돌잔치" class="VIPS-story" />
							</a>
						</div>
					</div>

					<div class="info-area">
						<div class="path">
							<span>
								<a href="/intro">
									<img src="/resources/images/story/storyBrandStory/homeIcon.png"
										alt="홈으로" />
									Home
								</a>
							</span>
							<span>
								<a href="./storeFirstBirthdayQ">
									<img
										src="/resources/images/story/storyBrandStory/arrowIcon.png"
										alt="화살표" />
									STORE
								</a>
							</span>
							<span>
								<img src="/resources/images/story/storyBrandStory/arrowIcon.png"
									alt="화살표" />
								<strong> 돌잔치</strong>
							</span>
						</div>

						<div class="info-area-title">
							<div class="happyBirthdayMessage">
								<img src="/resources/images/store/happyBirthday1stParty.png"
									alt="생일축하" />
							</div>
							<div class="firstBirthdayMessage">
								<img src="/resources/images/store/firstBirthdayMessage.png"
									alt="생일축하" />
							</div>
							<div class="infoTitleBackground">
								<img src="/resources/images/store/infoTitleBackground.png">
							</div>
						</div>
						<!-- 여기서부턴 db -->
						<c:choose>
							<c:when test="${userId!=null}">
								<div class="reservation-area">
									<form action="/store/reservationAdd" method="get"
										class="reservation-form">
										<input type="hidden" name="user_id" value="${userId}">
										<div class="reservation-text-area">
											성함
											<div class="reservation-text-area-inner">
												<input type="text" name="name" class="name">
											</div>
										</div>
										<div class="reservation-text-area">
											연락처
											<div class="reservation-text-area-inner">
												<input type="text" name="phone_number" class="phone_number">
											</div>
										</div>
										<div class="reservation-text-area">
											날짜/시간
											<div class="reservation-text-area-inner">
												<input type="datetime-local" name="time" class="time">
											</div>
										</div>
										<div class="reservation-text-area">
											희망매장
											<div class="reservation-text-area-inner">
												<input type="radio" name="location" class="desired_store"
													value="서울">
												서울
												<input type="radio" name="location" class="desired_store"
													value="대전">
												대전
												<input type="radio" name="location" class="desired_store"
													value="인천">
												인천
												<input type="radio" name="location" class="desired_store"
													value="경기">
												경기
											</div>
										</div>
										<div class="reservation-text-area">
											인원
											<div class="reservation-text-area-inner">
												<input type="number" name="how_many_people"
													class="how_many_people">
												명
											</div>
										</div>
										<div class="reservation-question-area">
											기타문의
											<div class="reservation-text-area-inner">
												<textarea name="reservation_contents" class="question"></textarea>
											</div>
										</div>
										<button>상담 신청 완료</button>
									</form>
								</div>
							</c:when>
							<c:otherwise>
							로그인 해주세요
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>