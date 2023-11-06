<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Salad Table</title>
<script src='/resources/scripts/tempCommon.js'></script>
<link rel='stylesheet' href='/resources/styles/mainSaladbar.css' />
</head>
<body>
	<div id="template-root">
		<div class="template-padding-box">
			<div class="template-background-area">
				<div class="template-background-inner-area">
				<div class="headerLocation"><jsp:include page="template/templateHeaderFirst.jsp"></jsp:include></div>
				<div class="mainContent02">
					<div class="sidebar02">
						<div class="sidebarMain">
							<a href="/mainSaladbar">
								<img src="/resources/images/templet_saladMain/h3_sallad.gif">
							</a>
						</div>
						<ul class="sidebarList">
							<li>
								<a href="/saladbar">
									<img src="/resources/images/templet_saladMain/lnb03_01.gif">
								</a>
							</li>
							<li>
								<a href="/saladBeverage01">
									<img src="/resources/images/templet_saladMain/lnb03_02.gif">
								</a>
							</li>
							<li>
								<a href="/togomenu01">
									<img src="/resources/images/templet_saladMain/lnb03_06.gif">
								</a>
							</li>
							<li>
								<a href="/ingredientInfo">
									<img src="/resources/images/templet_saladMain/lnb03_04.gif">
								</a>
							</li>
							<li>
								<a href="/allergy">
									<img src="/resources/images/templet_saladMain/lnb03_05.gif">
								</a>
							</li>
							<li>
								<a href="/allergyDelivery">
									<img src="/resources/images/templet_saladMain/lnb03_07.gif">
								</a>
							</li>
						</ul>					
					</div>
					<div class="content02">
						<div class="content-top02">
							<div class="path02">
								<a href="https://www.ivips.co.kr/intro/230918/intro.asp">
									<img src="/resources/images/templet_saladMain/ico_home.png">
								</a>
								<a href="https://www.ivips.co.kr/intro/230918/intro.asp" class="link01">Home</a>								
								<span class="arrow02">
									<img src="/resources/images/templet_saladMain/ico_arr.png">
								</span>
								<span class="link03">SALAD BAR</span>
							</div>
							<div class="contentText">
								<div class="text01">								
									<img src="/resources/images/templet_saladMain/h4_salladbar.png">
								</div>
								<div class="text02">
									<img src="/resources/images/templet_saladMain/h4_txt_salladbar.png">
								</div>
							</div>							
							<div class="sns-Link" onclick="snsLink_1()">
								<img src="/resources/images/templet_saladMain/ico_link.png">								
							</div>
						</div>
						<div class="content-bottom02">
							<div class="menuImg">
								<img src="/resources/images/templet_saladMain/saladmainImg.jpg">
							</div>
							<div class="menuTextbg">
								<img src="/resources/images/templet_saladMain/bg_salladmain_cont.gif" 
									style=" position:absolute; width: 750px; height: 394px;">
								<hr class="line">
								<table class="priceList">
									<colgroup>
										<col style="width:auto">
										<col style="width:30%">
										<col style="width:30%">
									</colgroup>
									<tbody class="listInfo">
										<tr class="firstList">
											<td></td>
											<td>런치</td>
											<td>디너/주말/공휴일</td>
										</tr>
										<tr>
											<td>
												<span>성인</span> (만 18세 이상)
											</td>
											<td>37,900</td>
											<td>47,900</td>
										</tr>
										<tr>
											<td>
												<span>청소년</span> (중학생 이상 청소년)
											</td>
											<td>37,900</td>
											<td>42,900</td>
										</tr>
										<tr>
											<td>
												<span>초등학생</span> (초등학교 입학 후 ~ 중학생 입학 전)
											</td>
											<td colspan="2">19,500</td>											
										</tr>
										<tr>
											<td>
												<span>미취학 어린이</span> (생후 36개월 이상 ~ 초등학교 입학 전)
											</td>
											<td colspan="2">10,500</td>											
										</tr>
										
									</tbody>
								</table>
								<div class="finishBg">
									<img src="/resources/images/templet_saladMain/bg_salldguide_foot.gif">
								</div>
							</div>							
							<div class="checkMenu">
								<img src="/resources/images/templet_saladMain/btn_storeType06.jpg">
							</div>
						</div>
						<div class="caution">
							<div class="lookList">
								<img src="/resources/images/templet_saladMain/tit_look.png">
							</div>
							<div class="cautionList">
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									모든 메뉴 가격은 10% VAT가 포함된 금액입니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									샐러드 바는 고객 1인당 1주문이 원칙입니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									미취학 어린이, 초등학생, 청소년 요금 적용은 나이 기준이 아닌 취학 당해년도 3월 1일 기준으로 적용됩니다.
								</div>														
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									35개월 이하 어린이는 무료이며, 디너 및 매장 영업시간은 매장 별로 상이할 수 있습니다.
								</div>														
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									샐러드 바 이용은 최대 2시간 30분까지 가능하며, 16시 이후 퇴점 시, 디너 요금 적용됩니다. (매장 별 상이)
								</div>														
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									청소년을 포함한 미성년자는 주류 이용이 불가하며, 청소년 보호법에 따라 주류 이용은 막 19세
									가 되는 해 1월 1일 이후부터 가능합니다.
								</div>														
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									나이 확인을 위해 신분증 등 증빙서류를 요청드릴 수 있습니다. 
									(미성년자는 등본, 건강보험증(사본), 학생증, 청소년증 등으로 인증 가능)
								</div>														
							</div>
						</div>
					</div>
				</div>
				<div class="contentFinish">
					<img src="/resources/images/templet_saladMain/bg_contents_bottom.gif">
				</div>
				<div class="footerLocation"><jsp:include page="template/templateFooterFirst.jsp"></jsp:include></div>
				</div>								
			</div>
		</div>
	</div>
</body>
</html>