<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SALAD BAR VIPS</title>
<script src='../scripts/main.js'></script>
<link rel="stylesheet" href="../styles/common.css">
<link rel="stylesheet" href="../styles/saladbar.css">
</head>
<body>
	<div id="wrapAll">
		<div id="wrapper">
			<div id="wrap">
				<div class="top-head" id="top-head">
						<div class="english-button-area">
							<div class="english-button">ENGLISH</div>
						</div>

						<div class="VIPS-logo-area">
							<div class="VIPS-logo">
								<a href="intro.jsp">
									<img src="../images/main/VIPS.png" alt="VIPS" class="VIPS-logo" />
								</a>
							</div>
						</div>

						<div class="head-menu-area">
							<div class="head-menu">로그인</div>
							<div class="head-menu">회원가입</div>
							<div class="head-menu-finish">고객센터</div>
						</div>

						<div class="move-menu-area" onmouseleave="close_hidden_menu()">
							<div class="move-menu-button" onmouseover="open_hidden_menu()">VIPS STORY</div>

							<div class="move-menu-button" onmouseover="open_hidden_menu()">STEAK</div>

							<div class="move-menu-button" onmouseover="open_hidden_menu()">SALAD BAR</div>

							<div class="move-menu-button" onmouseover="open_hidden_menu()">STORE</div>

							<div class="move-menu-button" onmouseover="open_hidden_menu()">EVENT</div>

							<div class="move-menu-button" onmouseover="open_hidden_menu()">BENEFIT</div>

							<div class="move-menu-button" onmouseover="open_hidden_menu()">MEMBERSHIP</div>

							<div class="hidden-move-area" id="hidden-move-area">
								<div class="hidden-move-button">
									<div>브랜드 스토리</div>
									<br>
									<div>새소식</div>
								</div>

								<div class="hidden-move-button">Premium Steak</div>
								<div class="hidden-move-button">
									<div>Salad Bar</div>
									<br>
									<div>Beverage</div>
									<br>
									<div>픽업&딜리버리</div>
									<br>
									<div>원산지 정보</div>
									<br>
									<div>알레르기 정보</div>
									<br>
									<div>
										알레르기 정보
										<br>
										(딜리버리)
									</div>
								</div>
								<div class="hidden-move-button">
									<div>매장안내</div>
									<br>
									<div>돌잔치</div>
								</div>
								<div class="hidden-move-button">HOT 이벤트</div>
								<div class="hidden-move-button">
									<div>제휴/할인카드</div>
									<br>
									<div>상품권</div>
									<br>
									<div>기프트카드</div>
								</div>
								<div class="hidden-move-button">
									<div>CJ ONE</div>
									<br>
									<div>빕스 매니아</div>
								</div>
							</div>
						</div>
					</div>				
				<div id="container">
					<div><jsp:include page="sidebar.jsp"></jsp:include></div>					
					<div id="content-wrap">
						<div class="path">
							<a href="" class="home">Home</a>
							<strong>SALAD BAR</strong>
						</div>
						<div class="contentText">
							<h4>
								<img src="../images/templet/h4-SaladBar1.png" alt="VIPS salladbar">
							</h4>
							<div class="contentText02">
								<img src="../images/templet/h4-text-SaladBar1.png" alt="Unbelievable Taste, VIPS SUMMER TABLE! 신선함이 가득한 빕스 샐러드바를 마음껏 즐기세요.">
							</div>
							<div class="sns-group">
								<a href="">
									<img src="../images/templet/sns-link1.png">
								</a>
							</div>
						</div>
						<div id="content">
							<h5 class="content-top">
								<img src="../images/templet/content-topImage1.jpg" alt="content-top">
							</h5>
							<div id="saladInfo">
								<div class="storeIntroduction">
									<table class="tb-list">							
										<colgroup>
											<col style="width:auto;">
											<col style="width:30%;">
											<col style="width:30%;">
										</colgroup>
										<thead>
											<tr class="list-head">
												<td class="type"></td>
												<td class="type">런치</td>
												<td class="type">디너/주말/공휴일</td>
											</tr>
										</thead>
										<tbody>
											<tr class="list-body">
												<td class="temp1">
													<span>성인</span>
													(만 18세 이상)
												</td>
												<td>37,900</td>
												<td>47,900</td>
											</tr>
											<tr class="list-body">
												<td class="temp1">
													<span>청소년</span>
													(중학생 이상 청소년)
												</td>
												<td>37,900</td>
												<td>42,900</td>
											</tr>
											<tr class="list-body">
												<td class="temp1">
													<span>초등학생</span>
													(초등학교 입학 후 ~ 중학생 입학 전)
												</td>												
												<td colspan="2">19,500</td>
											</tr>
											<tr class="list-body">
												<td class="temp1">
													<span>미취학 어린이</span>
													(생후 36개월 이상 ~ 초등학교 입학 전)
												</td>												
												<td colspan="2">10,500</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="content-bottom"></div>
							<div class="checkMenu">
								<a href="" >
									<img src="../images/templet/newMenuCheck1.jpg"
									alt="시즌 신메뉴 확인하기">
								</a>
							</div>
							<div class="caution">
								<div class="lookList"></div>
								<ul class="list01">
									<li>모든 메뉴 가격은 10% VAT가 포함된 금액입니다.</li>
									<li>샐러드 바는 고객 1인당 1주문이 원칙입니다.</li>
									<li>미취학 어린이, 초등학생, 청소년 요금적용은 나이 기준이 아닌 취학 당해년도 3월 1일 기준으로 적용됩니다.</li>
									<li>35개월 이하 어린이는 무료이며, 디너 및 매장 영업시간은 매장 별로 상이할 수 있습니다.</li>
									<li>샐러드 바 이용은 최대 2시간 30분까지 가능하며, 16시 이후 퇴점 시, 디너 요금 적용됩니다. (매장 별 상이)</li>
									<li>청소년을 포함한 미성년자는 주류 이용이 불가하며, 청소년 보호법에 따라 주류 이용은 막 19세가 되는 해 1월 1일 이후부터 가능합니다.</li>
									<li>나이 확인을 위해 신분증 등 증빙서류를 요청드릴 수 있습니다. (미성년자는 등본, 건강보험증(사본), 학생증, 청소년증 등으로 인증 가능)</li>
								</ul>
							</div>
						</div>
					</div>
					<div id="template-root">
						<div class="template-padding-box">
							<div class="template-background-area">
								<div class="template-background-inner-area">
									<div class="template-foot">
										<div class="template-foot-site">
											<div class="template-foot-site-icon-area">
												<img src="../images/main/foot-cj-icon.gif" alt="cj"
													class="template-foot-site-icon" />
												<img src="../images/main/foot-touslesjours-icon.gif"
													alt="뚜레주르" class="template-foot-site-icon" />
												<img src="../images/main/foot-the-place-icon.gif" alt="더플레이스"
													class="template-foot-site-icon" />
												<img src="../images/main/foot-jeil-icon.gif" alt="제일제면소"
													class="template-foot-site-icon" />
												<img src="../images/main/foot-ngrill-icon.gif" alt="엔그릴"
													class="template-foot-site-icon" />
												<img src="../images/main/foot-nseoul-tower-icon.gif"
													alt="엔서울타워" class="template-foot-site-icon" />
											</div>
										</div>
										<div class="template-foot-menu">
											<div class="template-foot-menu-icon-area">
												<img src="../images/main/foot-company-info.png" alt="회사소개"
													class="template-foot-menu-icon" />
												<img src="../images/main/foot-sitemap.png" alt="사이트맵"
													class="template-foot-menu-icon" />
												<img src="../images/main/terms-and-conditions-of-use.png"
													alt="이용약관" class="template-foot-menu-icon" />
												<img
													src="../images/main/location-terms-and-conditions-of-use.png"
													alt="이용약관" class="template-foot-menu-icon" />
												<img src="../images/main/foot-personal-information.png"
													alt="개인정보" class="template-foot-menu-icon" />
												<img src="../images/main/foot-video.png" alt="영상정보처리기기운영방침"
													class="template-foot-menu-icon" />
												<img src="../images/main/foot-email.png" alt="이메일무단수집거부"
													class="template-foot-menu-icon" />
												<img src="../images/main/foot-legal.png" alt="법적고지"
													class="template-foot-menu-icon" />
											<img src="../images/main/foot-ethics.png" alt="윤리신고센터"
													class="template-foot-menu-icon" />
											</div>

											<div class="template-foot-text-area">

												<img src="../images/main/foot-text-address.png" alt="주소"
													class="template-foot-text" />
												<img src="../images/main/foot-text-representative.png"
													alt="대표이사" class="template-foot-text" />
												<img src="../images/main/foot-text-customer-service.png"
													alt="고객센터" class="template-foot-text" />
												<img src="../images/main/foot-text-fax.png" alt="팩스"
													class="template-foot-text" />
												<img src="../images/main/foot-text-registration-number.png"
													alt="사업자등록번호" class="template-foot-text" />
												<img src="../images/main/foot-text-personal -information.png"
													alt="개인정보보호" class="template-foot-text" />
												<img src="../images/main/foot-text-email.png" alt="대표이메일"
													class="template-foot-text" />
												<img src="../images/main/foot-text-copyright.png" alt="대표이메일"
													class="template-foot-text-finish" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				</div>				
			</div>
		</div>
	</div>	
</body>
</html>