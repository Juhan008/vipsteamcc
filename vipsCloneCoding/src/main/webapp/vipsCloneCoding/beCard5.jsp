<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10~30% 할인 | 제휴/할인카드 - VIPS</title>
<link rel='stylesheet' href='../styles/commonEx.css' />
<link rel='stylesheet' href='../styles/becard.css' />
</head>
<body>
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
									<img src="../images/benefit/beCard/BENEFIT.gif" alt="BENEFIT">
								</h3>
								<ul style="height: 600px;">
									<li class="active"><a href="beCard.jsp"><img
											src="../images/benefit/beCard/affiliatediscountcard.gif"
											alt="제휴할인"></a></li>
									<li class="active"><a href="beGiftCard"><img
											src="../images/benefit/beCard/beGiftCard.gif" alt="상품권"></a></li>
									<li class="active"><a href="giftCard.jsp"><img
											src="../images/benefit/beCard/GiftCard.gif" alt="기프트카드"></a></li>
								</ul>
							</div>
							<div id="content-wrap" class="clfix">
								<div class="path">
									<a href="#" class="home">Home</a><a href="#">BENEFIT</a><strong>제휴/할인
										카드</strong>
								</div>
								<div class="visual-sub benefit-visual">
									<h4>
										<img src="../images/benefit/beCard/discountcard_top.png"
											alt="제휴할인카드">
									</h4>
									<p>
										<img src="../images/benefit/beCard/beCard_top_text.png">
									</p>
								</div>
								<div id="content">
									<ul class="discount-tab clfix" style="height: 700px">
										<li><a href="beCard.jsp"><h5>
													<img src="../images/benefit/beCard/tab_beCard1.gif"
														alt="10~30% 할인">
												</h5></a></li>
										<li><a href="beCard2.jsp"><h5>
													<img src="../images/benefit/beCard/tab_beCard2.gif"
														alt="매장별제휴할인">
												</h5></a></li>
										<li><a href="beCard3.jsp"><h5>
													<img src="../images/benefit/beCard/tab_beCard3.gif"
														alt="통신사할인">
												</h5></a></li>
										<li><a href="beCard4.jsp"><h5>
													<img src="../images/benefit/beCard/tab_beCard4.gif"
														alt="포인트결제">
												</h5></a></li>
										<li><a href="beCard5.jsp"><h5>
													<img src="../images/benefit/beCard/tab_beCard5_on.gif"
														alt="청구서차감">
												</h5></a><ul class="bill clfix">
										<li><img src="../images/benefit/beCard/img_billbank01.png" alt="비씨카드"></li>
										<li><img src="/images/benefit/beCard/img_billbank02.png" alt="광주은행"></li>									
										<li><img src="/images/benefit/beCard/img_billbank03.png" alt="제주은행"></li>
										<li><img src="/images/benefit/beCard/img_billbank04.png" alt="하나카드"></li>
										<li class="last"><img src="/images/benefit/beCard/img_billbank05.png" alt="우리카드"></li>
										<li><img src="/images/benefit/beCard/img_billbank06.png" alt="기업은행"></li>
										<li><img src="/images/benefit/beCard/img_billbank07.png" alt="NH카드"></li>
										<li><img src="/images/benefit/beCard/img_billbank08.png" alt="신한카드"></li>
										<li><img src="/images/benefit/beCard/img_billbank09.png" alt="KB국민카드"></li>
										<li class="last"><img src="/images/benefit/beCard/img_billbank10.png" alt="씨티은행"></li>
										<li><img src="/images/benefit/beCard/img_billbank11.png" alt="현대카드"></li>
										<li><img src="/images/benefit/beCard/img_billbank12.png" alt="삼성카드"></li>
										<li></li>
										<li></li>
										<li class="last"></li>
									</ul></li>
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