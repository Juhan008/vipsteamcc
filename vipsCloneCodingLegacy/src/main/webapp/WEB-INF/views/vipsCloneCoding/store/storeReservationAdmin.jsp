<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 신청 확인 페이지</title>
<link rel='stylesheet'
	href='/resources/styles/store/storeReservationAdmin.css' />
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
							<c:choose>
								<c:when
									test="${member.equals('admin')||member.equals('sub_admin')}">
								관리자 페이지 입니다.
								<c:forEach var="reservation" items="${reservationTable}">
										<form action="/store/storePrintAdmin">
											<input type="hidden" name="id"
												value="${reservation.getId() }">
											<div class="reservation-bundle-area">
												<div>신청자 ${reservation.getName()}</div>
												<div>접수시간 ${reservation.getCreatedAt() }</div>
												<div>예약날짜 ${reservation.getSimpleDate() }</div>
												<div>
													<c:if test="${reservation.getManagerContents()==null}">확인 필요
												 </c:if>
													<c:if test="${reservation.getManagerContents()!=null}">확인 완료
												 </c:if>
												</div>
												<button>자세히보기</button>
											</div>
										</form>
									</c:forEach>


								</c:when>
								<c:when test="${member.equals('low_admin')}">
								지역 관리자 페이지 입니다.
								<c:forEach var="reservation" items="${reservationTable}">
										<form action="/store/storePrintAdmin">
											<input type="hidden" name="id"
												value="${reservation.getId() }">
											<div class="reservation-bundle">
												<div>신청자 ${reservation.getName()}</div>
												<div>접수시간 ${reservation.getCreatedAt() }</div>
												<div>예약날짜 ${reservation.getSimpleDate() }</div>
												<div>
													<c:if test="${reservation.getManagerContents()==null}">확인 필요
												 </c:if>
													<c:if test="${reservation.getManagerContents()!=null}">확인 완료
												 </c:if>
												</div>
												<button>자세히보기</button>
											</div>
										</form>
									</c:forEach>
								</c:when>
								<c:otherwise>
								잘못된 접근 입니다.
							</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>