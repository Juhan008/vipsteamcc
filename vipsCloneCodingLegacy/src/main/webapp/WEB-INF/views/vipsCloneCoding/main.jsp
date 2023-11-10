<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>My No.1 스테이크하우스 빕스 - VIPS</title>
<script src='/resources/scripts/main.js'></script>
<link rel='stylesheet' href='/resources/styles/main.css' />
</head>
<body>
	<div id="root">
		<div class="background-shadow">
			<jsp:include page="./template/templateHeaderFirst.jsp"></jsp:include>
			<div class="padding-box">

				<div class="wrap">
					<div class="mainBannerAd-area">
						<img src="/resources/images/main/mainBannerAd.jpg" alt="메인광고"
							class="mainBannerAd" />
					</div>
					<div class="bottom-info-area">
						<div class="bottom-info-area-inner">
							<div class="bottom-info-area-inner-faceBook">
								<a href="/event/evtHotEventQ">
									<img src="/resources/images/main/bannerHotEvent.png" alt="핫이벤트"
										class="bannerHotEvent" />
								</a>
							</div>

							<div class="bottom-info-area-inner-news">
								<img src="/resources/images/main/vipsNewsLogo.png" alt="빕스 뉴스" />
								<div class="inner-ul">
									<c:if test="${lastPost!=null}">
										<c:forEach var="post" items="${lastPost}">
											<div class="table-text-area">
												<div class="db-title">
													<form action="/story/storyNewsPrt">
														<input type="hidden" name="currentPost"
															value=${post.getId()}>
														<button>
															<strong>${post.getTitle()}</strong>
														</button>
													</form>
												</div>
												<div class="db-created-at">${post.getCreatedAt()}</div>
											</div>
											<hr>
										</c:forEach>
									</c:if>
								</div>
							</div>
							<div class="bottom-info-area-inner-steak">
								<div class="bottom-info-area-move-steak">
									<div>
										<img src="/resources/images/main/howToEnjoySteak.png"
											alt="메인광고" />
									</div>
									<div>
										<a href="/steak/premiumSteak">
											<img src="/resources/images/main/enjoySteakText.png"
												alt="스테이크페이지로" />
										</a>
									</div>
									<div>
										<img src="/resources/images/main/deliveryBanner.jpg"
											alt="딜리버리배너" />
									</div>
									<div class="move-to-beGiftCard3">
										<a href="/benefit/beGiftCard">
											<img src="/resources/images/main/vipsMobileBanner.gif"
												alt="모바일식사권" />
										</a>
									</div>
									<div class="quick-link">
										<div>
											<img src="/resources/images/main/quickLinkBanner.png"
												alt="퀵링크" />
										</div>
										<div class="quick-link-icon-area">
											<div>
												<a href="/benefit/beCard">
													<img src="/resources/images/main/quickiconbeCard.png"
														alt="제휴카드" />
												</a>
											</div>
											<div>
												<a href="/store/storeFirstBirthdayQ">
													<img
														src="/resources/images/main/quickiconstoreFirstBirthdayQ.png"
														alt="돌잔치" />
												</a>
											</div>
											<!-- 
											<div>
												<img src="/resources/images/main/quickiconmylogin.png"
													alt="고객센터" />
											</div>
											<div>
												<img src="/resources/images/main/quickiconFAQ.png" alt="FAQ" />
											</div>
											 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="./template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>