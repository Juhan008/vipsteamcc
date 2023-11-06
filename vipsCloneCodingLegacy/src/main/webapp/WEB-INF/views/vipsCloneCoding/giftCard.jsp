<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기프트카드 - VIPS</title>
<link rel='stylesheet' href='/resources/styles/commonEx.css' />
<link rel='stylesheet' href='/resources/styles/giftcard.css' />
</head>
<body>
	<div id="root">
		<div class="background-area">
			<div class="wrapall">
				<!-- 이 사이에 내용을 적으면 추가 됩니다. -->
				<div class="header"><jsp:include
						page="../vipsCloneCoding/template/templateHeaderFirst.jsp"></jsp:include>
				</div>
				<div id="container" class="clfix">
					<div id="lnb">
						<h3>
							<img src="/resources/images/benefit/beCard/BENEFIT.gif"
								alt="BENEFIT">
						</h3>
						<ul style="min-height: 1000px;">
							<li class="active"><a href="beCard"><img
									src="/resources/images/benefit/giftcard/affiliatediscountcard_in.gif"
									alt="제휴할인"></a></li>
							<li class="active"><a href="beGiftCard"><img
									src="/resources/images/benefit/giftcard/beGiftCard.gif"
									alt="상품권"></a></li>
							<li class="active"><a href="giftCard"><img
									src="/resources/images/benefit/giftcard/GiftCard_on.gif"
									alt="기프트카드"></a></li>
						</ul>
					</div>
					<div id="content-wrap" class="clfix">
						<div class="path">
							<a href="#" class="home">Home</a><a href="#">BENEFIT</a><strong>기프티
								카드</strong>
						</div>
						<div class="visual-sub benefit-visual">
							<h4>
								<img src="/resources/images/benefit/giftcard/gift_banner.png"
									alt="제휴할인카드">
							</h4>
							<p>
								<img src="/resources/images/benefit/giftcard/gift_top_text.png">
							</p>
						</div>
						<div id="content">
							<div class="discount-tab clfix" style="height: 1100px">
								<div class="contents-box">
									<div class="gift-card-intro">
										<img src="/resources/images/benefit/giftcard/txt_giftcard.png">

										<p class="sub">
											<img
												src="/resources/images/benefit/giftcard/subtxt_giftcard.png">
										</p>
										<p class="img-card">
											<img
												src="/resources/images/benefit/giftcard/img_giftcard.png">
										</p>
									</div>
									<h5 class="info">
										<img src="/resources/images/benefit/giftcard/tit_gift1.png">
									</h5>
									<div class="giftcard-list kind">
										<ul>
											<li class="vips">
												<p class="description">
													<img
														src="/resources/images/benefit/giftcard/txt_giftinfo1.png"
														alt="빕스 매장에서 기프트카드를 구매할 수 있어요.">
												</p> <a href="#"><img
													src="/resources/images/benefit/giftcard/btn_store.png"
													alt="매장 확인하기"></a>
											</li>
											<li class="cjone">
												<p class="description">
													<img
														src="/resources/images/benefit/giftcard/txt_giftinfo2.png"
														alt="CJ ONE 홈페이지에서 기프트카드를 구매할 수 있어요.">
												</p> <a href="#"><img
													src="/resources/images/benefit/giftcard/btn_online.png"
													alt="온라인 구매하기"></a>
											</li>
											<li class="kakao">
												<p class="description">
													<img
														src="/resources/images/benefit/giftcard/txt_giftinfo3.png"
														alt="카카오톡 선물하기에서 기프트카드를 구매할 수 있어요.">
												</p>
											</li>
										</ul>
									</div>
									<div class="bottom_bar"></div>
								</div>
								<dl class="caution">
									<dt>
										<img src="/resources/images/benefit/beCard/tit_look.png">
									</dt>
									<dd>
										<ul class="list02">
											<li><img class="dot"><strong>이용 안내</strong>
												<ul class="list03">
													<li>사용 매장<br> 빕스, 더플레이스, 제일제면소, CJ푸드월드, 셰프고<br>
														* 일부 특수매장 제외 : 백화점, 마트, 휴게소, 공항 등 <a href="#">사용불가
															매장안내</a>
													</li>
												</ul></li>
											<li><img class="dot"><strong>단체 및 대량 구매</strong>
												<ul class="list03">
													<li>기프트카드는 이벤트 혹은 선물용으로 구매 가능합니다. <a href="#">주문
															상담 요청하기</a></li>
													<li>법인카드 구입시 별도의 구비서류가 필요하며 자세한 상담은 고객센터로 연락주시기 바랍니다.<br>
														나이스정보통신 : 1644-9760<br> 올리브네트웍스 : 1577-8888<br>
														상담시간 : 평일 09:00~18:00(토,일, 공휴일 휴무)
													</li>
												</ul></li>
											<li><img class="dot"><strong>구매 유의사항</strong>
												<ul class="list03">
													<li>빕스 매장과 CJ ONE 홈페이지, 카카오톡 선물하기에서 구매 가능한 무기명 선불카드
														입니다.</li>
													<li>지류 상품권, 기타 제휴 상품권, 디지털 상품권 등으로 기프트카드를 구매하실 수 없습니다.</li>
													<li>기프트카드 구매 시 할인 및 적립 적용되지 않습니다.</li>
													<li>기프트카드의 유효기간은 5년이며, 소멸 전 총 3회 이메일로 소멸 안내를 드리고 있습니다.</li>
													<li>카드 플레이트만 별도로 판매하지 않습니다.</li>
												</ul></li>
										</ul>
									</dd>
								</dl>
							</div>
						</div>
					</div>
				</div>
				<div class="footer"><jsp:include
						page="../vipsCloneCoding/template/templateFooterFirst.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
</body>
</html>