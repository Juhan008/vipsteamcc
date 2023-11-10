<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 답변 페이지</title>
<link rel='stylesheet'
	href='/resources/styles/store/storePrintAdmin.css' />
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
						<div class="reservation-post-area">
							<div class="user-info-area">
								<div>성함 : ${currentReservation.getName()}</div>
								<div>신청자 아이디 : ${currentReservation.getUserId()}</div>
								<div>신청자 전화번호 : ${currentReservation.getPhoneNumber()}</div>
								<div>예약 날짜 : ${currentReservation.getTime()}</div>
								<div>지역 : ${currentReservation.getLocation()}</div>
								<div>${currentReservation.getHowManyPeople()}명</div>
								<div>문의 사항 :
									${currentReservation.getReservationContents()}</div>
							</div>
						</div>
						<div class="answer-area">
							<div class="current-answer">현재 답변 : ${currentReservation.getManagerContents()}</div>
							<div>
								<form action="" method="post">
									<input type="hidden" name="id"
										value="${currentReservation.getId()}">
									<textarea name="manager_contents" class="answer">${currentReservation.getManagerContents()}</textarea>
									<div>
										<button>답변/수정하기</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>