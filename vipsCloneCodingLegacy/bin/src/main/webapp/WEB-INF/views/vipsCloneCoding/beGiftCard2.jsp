<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CJ 패밀리드 | 제휴/할인카드 - VIPS</title>
<link rel='stylesheet' href='/resources/styles/commonEx.css' />
<link rel='stylesheet' href='/resources/styles/begiftcard.css' />
</head>
<div id="root">
	<div class="padding-box">
		<div class="background-area">
			<div class="background-inner-area">
				<div class="wrapall">
					<!-- 이 사이에 내용을 적으면 추가 됩니다. -->
					<div class="header"><jsp:include
							page="../vipsCloneCoding/header.jsp"></jsp:include>
					</div>
					<div id="container" class="clfix">
						<div id="lnb">
							<h3>
								<img src="/resources/images/benefit/beCard/BENEFIT.gif" alt="BENEFIT">
							</h3>
							<ul style="min-height: 1000px;">
								<li class="active"><a href="beCard"><img
										src="/resources/images/benefit/beGiftCard/affiliatediscountcard_in.gif"
										alt="제휴할인"></a></li>
								<li class="active"><a href="beGiftCard"><img
										src="/resources/images/benefit/beGiftCard/beGiftCard_on.gif" alt="상품권"></a></li>
								<li class="active"><a href="giftCard"><img
										src="/resources/images/benefit/beCard/GiftCard.gif" alt="기프트카드"></a></li>
							</ul>
						</div>
						<div id="content-wrap" class="clfix">
							<div class="path">
								<a href="#" class="home">Home</a><a href="#">BENEFIT</a><strong>상품권</strong>
							</div>
							<div class="visual-sub benefit-visual">
								<h4>
									<img src="/resources/images/benefit/beGiftCard/beGiftCard_top.png">
								</h4>
								<p>
									<img
										src="/resources/images/benefit/beGiftCard/beGiftCard_explanation.png">
								</p>
							</div>
							<div id="content">
								<ul class="discount-tab clfix" style="height: 1000px">
									<li><a href="beGiftCard">
											<h5>
												<img src="/resources/images/benefit/beGiftCard/tab_CJ_family.gif"
													alt="CJ 패밀리 상품권">
											</h5>
									</a></li>
									<li><a href="beGiftCard2"><h5>
												<img src="/resources/images/benefit/beCard/tab_beCard2.gif"
													alt="매장별제휴할인">
											</h5></a></li>
							</div>
						</div>
					</div>
				</div>
				<div class="footer"></div>
				<jsp:include page="../vipsCloneCoding/bottomt.jsp"></jsp:include>
			</div>
		</div>
	</div>
</div>
</body>
</html>