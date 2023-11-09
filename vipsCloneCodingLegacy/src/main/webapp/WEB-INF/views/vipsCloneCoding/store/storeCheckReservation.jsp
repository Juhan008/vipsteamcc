<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약확인</title>
<link rel='stylesheet'
	href='/resources/styles/store/storeCheckReservation.css' />
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
						<div class="path-area">
							<div class="path">
								<span>
									<a href="/intro">
										<img
											src="/resources/images/story/storyBrandStory/homeIcon.png"
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
									<img
										src="/resources/images/story/storyBrandStory/arrowIcon.png"
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
						</div>
						<!-- 여기서부턴 db -->
						<c:choose>
							<c:when test="${reservationTotal!=null}">
								<div class="reservation-post-area">
									<c:forEach var="reservations" items="${reservationTotal}">
										<div class="reservation-text-area">
											<form action="/store/storePrintReservation" method="post">
												<input type="hidden" name="reservation_id"
													value="${reservations.getId()}">
												<span>예약 날짜 : ${reservations.getTime()}</span>
												<span>지역 : ${reservations.getLocation()}</span>
												<span>${reservations.getHowManyPeople()}명</span>
												<button>자세히보기</button>
											</form>
										</div>
									</c:forEach>
								</div>

							</c:when>
							<c:otherwise>
								예약내역이 없습니다.
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