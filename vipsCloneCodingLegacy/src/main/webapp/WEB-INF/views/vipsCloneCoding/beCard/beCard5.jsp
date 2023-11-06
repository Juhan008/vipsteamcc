<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청구서 차감 | 제휴/할인카드 - VIPS</title>
<link rel='stylesheet' href='/resources/styles/commonEx.css' />
<link rel='stylesheet' href='/resources/styles/becard.css' />
</head>
<body>
	<div id="root">
		<div class="background-area">
			<div class="wrapall">
				<!-- 이 사이에 내용을 적으면 추가 됩니다. -->
				<div class="header"><jsp:include
						page="../template/templateHeaderFirst.jsp"></jsp:include>
				</div>
				<div id="container" class="clfix">
					<div id="lnb">
						<h3>
							<img src="/resources/images/benefit/beCard/BENEFIT.gif"
								alt="BENEFIT">
						</h3>
						<ul style="height: 600px;">
							<li class="active"><a href="beCard"><img
									src="/resources/images/benefit/beCard/affiliatediscountcard.gif"
									alt="제휴할인"></a></li>
							<li class="active"><a href="beGiftCard"><img
									src="/resources/images/benefit/beCard/beGiftCard.gif" alt="상품권"></a></li>
							<li class="active"><a href="giftCard"><img
									src="/resources/images/benefit/beCard/GiftCard.gif" alt="기프트카드"></a></li>
						</ul>
					</div>
					<div id="content-wrap" class="clfix">
						<div class="path">
							<a href="#" class="home">Home</a><a href="#">BENEFIT</a><strong>제휴/할인
								카드</strong>
						</div>
						<div class="visual-sub benefit-visual">
							<h4>
								<img src="/resources/images/benefit/beCard/discountcard_top.png"
									alt="제휴할인카드">
							</h4>
							<p>
								<img src="/resources/images/benefit/beCard/beCard_top_text.png">
							</p>
						</div>
						<div id="content">
							<ul class="discount-tab clfix" style="height: 500px">
								<li><a href="beCard"><h5>
											<img src="/resources/images/benefit/beCard/tab_beCard1.gif"
												alt="10~30% 할인">
										</h5></a></li>
								<li><a href="beCard2"><h5>
											<img src="/resources/images/benefit/beCard/tab_beCard2.gif"
												alt="매장별제휴할인">
										</h5></a></li>
								<li><a href="beCard3"><h5>
											<img src="/resources/images/benefit/beCard/tab_beCard3.gif"
												alt="통신사할인">
										</h5></a></li>
								<li><a href="beCard4"><h5>
											<img src="/resources/images/benefit/beCard/tab_beCard4.gif"
												alt="포인트결제">
										</h5></a></li>
								<li><a href="beCard5"><h5>
											<img
												src="/resources/images/benefit/beCard/tab_beCard5_on.gif"
												alt="청구서차감">
										</h5></a>
									<div class="contents-box">
										<ul class="bill clfix">
											<li><img
												src="/resources/images/benefit/beCard/img_billbank01.png"
												alt="비씨카드"></li>
											<li><img
												src="/resources/images/benefit/beCard/img_billbank02.png"
												alt="광주은행"></li>
											<li><img
												src="/resources/images/benefit/beCard/img_billbank03.png"
												alt="제주은행"></li>
											<li><img
												src="/resources/images/benefit/beCard/img_billbank04.png"
												alt="하나카드"></li>
											<li class="last"><img
												src="/resources/images/benefit/beCard/img_billbank05.png"
												alt="우리카드"></li>
											<li><img
												src="/resources/images/benefit/beCard/img_billbank06.png"
												alt="기업은행"></li>
											<li><img
												src="/resources/images/benefit/beCard/img_billbank07.png"
												alt="NH카드"></li>
											<li><img
												src="/resources/images/benefit/beCard/img_billbank08.png"
												alt="신한카드"></li>
											<li><img
												src="/resources/images/benefit/beCard/img_billbank09.png"
												alt="KB국민카드"></li>
											<li class="last"><img
												src="/resources/images/benefit/beCard/img_billbank10.png"
												alt="씨티은행"></li>
											<li><img
												src="/resources/images/benefit/beCard/img_billbank11.png"
												alt="현대카드"></li>
											<li><img
												src="/resources/images/benefit/beCard/img_billbank12.png"
												alt="삼성카드"></li>
											<li></li>
											<li></li>
											<li class="last"></li>
										</ul>
										<dl class="caution">
											<dt>
												<img src="/resources/images/benefit/beCard/tit_look.png">
											</dt>
											<dd>
												<ul class="contents-txt">
													<li>청구서 할인은 결제한 카드사에서 고객님이 대금청구서를 받을 때 차감할인을 제공하는
														서비스입니다.</li>
													<li>각 카드사마다 제공되는 할인혜택, 전월 실적 제한, 추가 변경되는 사항(카드)은 서로 다를
														수 있으니, 방문 전 카드사에 반드시 확인해 주시기 바랍니다.</li>
													<li>일부 매장에서는 제휴 할인 적용이 불가하오니, 방문 전 문의 부탁드립니다.</li>
													<li>모바일 결제수단에 따라 제휴혜택 적용이 불가할 수 있습니다.</li>
												</ul>
											</dd>
										</dl>
									</div></li>
						</div>
					</div>
				</div>

				<div class="footer">
					<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
</body>
</html>