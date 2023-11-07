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
							<a href="./storeFirstBirthdayQ"> <img
									src="/resources/images/store/firstBirthdayParty.gif" alt="돌잔치"
									class="VIPS-story" />
							</a>
						</div>
					</div>

					<div class="info-area">
						<div class="path">
							<span>
								<a href="/intro"> <img
										src="/resources/images/story/storyBrandStory/homeIcon.png"
										alt="홈으로" /> Home
								</a>
							</span>
							<span>
								<a href="./storeFirstBirthdayQ"> <img
										src="/resources/images/story/storyBrandStory/arrowIcon.png"
										alt="화살표" /> STORE
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
						<c:when test="${userId==null}">
							<div>
								<form action="/store/reservationAdd" method="get">
									<input type="hidden" name="user_id" value="${userId}">
									성함
									<input type="text" name="name">
									연락처
									<input type="text" name="phone_number">
									날짜/시간
									<input type="text" name="">
									희망매장
									<input type="text" name="desired_store">
									인원
									<input type="text" name="how_many_people">
									기타문의
									<input type="text" name="question">
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