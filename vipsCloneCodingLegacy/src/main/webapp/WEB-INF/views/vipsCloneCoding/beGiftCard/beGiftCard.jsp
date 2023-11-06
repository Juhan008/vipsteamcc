<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CJ 패밀리 상품권 | 상품권 - VIPS</title>
<link rel='stylesheet' href='/resources/styles/commonEx.css' />
<link rel='stylesheet' href='/resources/styles/begiftcard.css' />
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
						<ul style="min-height: 1000px;">
							<li class="active"><a href="beCard"><img
									src="/resources/images/benefit/beGiftCard/affiliatediscountcard_in.gif"
									alt="제휴할인"></a></li>
							<li class="active"><a href="beGiftCard"><img
									src="/resources/images/benefit/beGiftCard/beGiftCard_on.gif"
									alt="상품권"></a></li>
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
								<img
									src="/resources/images/benefit/beGiftCard/beGiftCard_top.png">
							</h4>
							<p>
								<img
									src="/resources/images/benefit/beGiftCard/beGiftCard_explanation.png">
							</p>
						</div>
						<div id="content">
							<ul class="discount-tab clfix" style="height: 900px">
								<li><a href="beGiftCard">
										<h5>
											<img
												src="/resources/images/benefit/beGiftCard/tab_CJ_family_on.gif"
												alt="CJ 패밀리 상품권">
										</h5>
								</a>
									<div class="contents-box">
										<h6 class="giftcard01">
											<img
												src="/resources/images/benefit/beGiftCard/CJ_beGiftCard.png">
										</h6>
										<dl class="giftcard img01">
											<div class="giftcard_img"></div>
											<dt>
												<img src="/resources/images/benefit/beGiftCard/notice01.png">
											</dt>
											<dd class="notice01">
												<p>뚜레쥬르, 빕스, 더플레이스, 계절밥상, 제일제면소, CJ푸드월드에서 사용 가능합니다. (단,
													일부 매장 제외)</p>
												<ul class="clfix">
													<li><img
														src="/resources/images/benefit/beGiftCard/brand01.jpg"
														alt="cj푸드빌"></li>
													<li><img
														src="/resources/images/benefit/beGiftCard/brand02.gif"
														alt="뚜레주르"></li>
													<li><img
														src="/resources/images/benefit/beGiftCard/brand03.gif"
														alt="빕스"></li>
													<li><img
														src="/resources/images/benefit/beGiftCard/brand04.gif"
														alt="더플레이스"></li>
													<li><img
														src="/resources/images/benefit/beGiftCard/brand05.jpg"
														alt="계절밥상"></li>
													<li><img
														src="/resources/images/benefit/beGiftCard/brand06.jpg"
														alt="제일제면소"></li>
													<li><img
														src="/resources/images/benefit/beGiftCard/brand07.jpg"
														alt="CJ푸드월드"></li>
												</ul>
											</dd>
											<dt class="notice02_top">
												<img src="/resources/images/benefit/beGiftCard/notice02.png">
											</dt>
											<dd class="notice02">
												<ul class="contents-txt">
													<li>상품권은 액면가액이 1만원 초과 시 60%, 1만원 이하 시 80% 이상을 사용하시는 경우
														잔액을 현금으로 지급 받을 수 있으며,<br>상품권을 2매 이상 사용하시는 경우 액면가액의
														총합계 금액 기준으로 적용됩니다.
													</li>
													<li>잔액 지급 기준 미만으로 상품권 사용 시 잔액에 대해 현금 또는 상품권으로 지급하지
														않습니다.</li>
													<li>상품권은 현금으로 교환되지 않습니다.</li>
													<li>상품권이 심하게 훼손되어 상품권의 액면가액 및 발행 번호의 파악이 불가능 하거나, 발행사
														상품권임을 식별할 수 없는 경우는<br>사용할 수 없습니다.
													</li>
													<li>이 상품권의 유효기간은 발행일로부터 5년이며, 유효기간이 경과한 상품권은 사용이
														불가합니다.</li>
													<li>CJ상품권은 5천원, 1만원권, 5만원권, 10만원권 4종이 있습니다.</li>
												</ul>
											</dd>
										</dl>
									</div></li>
								<li><a href="beGiftCard2"><h5>
											<img
												src="/resources/images/benefit/beGiftCard/tab_beGiftCard2.gif"
												alt="제휴 상품권">
										</h5></a></li>
							</ul>
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