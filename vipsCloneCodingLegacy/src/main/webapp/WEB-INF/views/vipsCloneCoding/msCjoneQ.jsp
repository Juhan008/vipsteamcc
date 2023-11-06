<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기프트카드 - VIPS</title>
<link rel='stylesheet' href='/resources/styles/commonEx.css' />
<link rel='stylesheet' href='/resources/styles/mscjoneq.css' />
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
							<img src="/resources/images/membership/msCjoneQ/MEMBERSHIP.gif"
								alt="MEMBERSHIP">
						</h3>
						<ul style="min-height: 1300px;">
							<li class="active"><a href="msCjoneQ"><img
									src="/resources/images/membership/msCjoneQ/CJ ONE.gif"
									alt="cjone"></a></li>
							<li class="active"><a href="msManiaQ"><img
									src="/resources/images/membership/msCjoneQ/vipsmenia.gif"
									alt="빕스매니아"></a></li>
						</ul>
					</div>
					<div id="content-wrap" class="clfix">
						<div class="path">
							<a href="#" class="home">Home</a><a href="#">MEMBERSHIP</a><strong>CJ
								ONE</strong>
						</div>
						<div class="visual-sub benefit-visual">
							<h4>
								<img src="/resources/images/membership/msCjoneQ/CJ ONE.png">
							</h4>
							<p>
								<img src="/resources/images/membership/msCjoneQ/CJ_top_text.png">
							</p>
						</div>
						<div id="content">
							<h5>
								<img src="/resources/images/membership/msCjoneQ/tit_cjone.png"
									alt="CJ ONE 혜택안내">
							</h5>
							<div class="cjone-benefit">
								<ul>
									<li class="cj-bnf1">
										<div class="cont-wrap">
											<h6 class="tit">
												<img
													src="/resources/images/membership/msCjoneQ/txt_cjone_bnf01.png"
													alt="혜택01 생일 축하 쿠폰">
											</h6>
											<p class="description">
												설정된 생일 정보를 확인하세요! <br> <strong>1년 1회, 1만원 할인
													쿠폰 증정</strong>
											</p>
										</div>
										<div class="btn-area">
											<span><a href="#"><img
													src="/resources/images/membership/msCjoneQ/btn_member.png"
													alt="회원정보 확인"></a></span> <span><a href="#"><img
													src="/resources/images/membership/msCjoneQ/btn_coupon.png"
													alt="쿠폰 사용 조건"></a></span>
										</div>
									</li>
									<li class="cj-bnf2">
										<div class="cont-wrap">
											<h6 class="tit">
												<img
													src="/resources/images/membership/msCjoneQ/txt_cjone_bnf02.png"
													alt="혜택02 포인트 적립">
											</h6>
											<p class="description">
												CJ ONE 포인트 <strong>0.5% 적립</strong><br>제휴 및 할인 시 <strong>0.5%
													적립</strong>
											</p>
										</div>
										<div class="btn-area">
											<span><a href="#cjoneBenefit2" id="returnBtn2"
												class="btn-layer"><img
													src="/resources/images/membership/msCjoneQ/btn_savept.png"
													alt="포인트 적립 조건"></a></span>
										</div>
									</li>
									<li class="cj-bnf3">
										<div class="cont-wrap">
											<h6 class="tit">
												<img
													src="/resources/images/membership/msCjoneQ/txt_cjone_bnf03.png"
													alt="혜택03 포인트 사용">
											</h6>
											<p class="description">
												1,000포인트 이상 보유 시,<br>10포인트 단위로 <strong>현금처럼 사용</strong>
											</p>
										</div>
										<div class="bnf-btn">
											<span><a href="#cjoneBenefit3" id="returnBtn3"
												class="btn-layer"><img
													src="/resources/images/membership/msCjoneQ/btn_usept.png"
													alt="포인트 사용 조건"></a></span>

										</div>
									</li>
									<li class="cj-bnf4">
										<div class="cont-wrap">
											<h6 class="tit">
												<img
													src="/resources/images/membership/msCjoneQ/txt_cjone_bnf04.png"
													alt="혜택04 보너스포인트 추가 적립">
											</h6>
											<p class="description">
												매월 CJ ONE 제휴 브랜드 <strong>4개 이용 시 50%<br>5개 이용
													시 100%
												</strong> 추가 포인트 적립
											</p>
											<div class="btn-area">
												<a href="#" target="_blank" title="새창 열림"><img
													src="/resources/images/membership/msCjoneQ/btn_mypt.png"
													alt="나의 보너스포인트 확인하기"></a>
											</div>
										</div>
									</li>
									<li class="cj-bnf5">
										<div class="cont-wrap">
											<h6 class="tit">
												<img
													src="/resources/images/membership/msCjoneQ/txt_cjone_bnf05.png"
													alt="혜택05 포인트 선물하기">
											</h6>
											<p class="description">
												가족, 친구에게 포인트 선물하고 <br> <strong>행복을 나누세요</strong>
											</p>
											<div class="btn-area">
												<a href="#"><img
													src="/resources/images/membership/msCjoneQ/btn_giftpt.png"
													alt="포인트 선물 바로가기"></a>
											</div>
										</div>
									</li>
								</ul>

							</div>
							<div class="notice-box-div">
								<div class="notice-box mt30">
									<img
										src="/resources/images/membership/msCjoneQ/txt_already.png"
										alt="잠깐! cj one 카드가 없으시다구요??">
								</div>
								<dl class="notice-bot cjone">
									<dt>CJ ONE 제휴 브랜드의 각 매장에서 카드를 발급 받으실 수 있습니다.</dt>
									<dd>
										매장에서 발급받으신 카드는 CJ ONE 홈페이지에서 회원가입 후 카드 등록하세요!<br> 홈페이지에
										등록되지 않은 카드는 포인트를 사용하실 수 없습니다.
										<div class="btn-ac">
											<a href="#"><img
												src="/resources/images/membership/msCjoneQ/btn_cjonecard_join.gif"
												alt="CJ ONE 카드가입"></a> <a href="#"><img
												src="/resources/images/membership/msCjoneQ/btn_cjonecard_mobile.gif"
												alt="CJ ONE 모바일 카드 발급"></a> <a href="#" target="_blank"
												title="CJ ONE 카드등록 새창으로 열기"><img
												src="/resources/images/membership/msCjoneQ/btn_cjonecard_regist.gif"
												alt="CJ ONE 카드등록"></a>
										</div>
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