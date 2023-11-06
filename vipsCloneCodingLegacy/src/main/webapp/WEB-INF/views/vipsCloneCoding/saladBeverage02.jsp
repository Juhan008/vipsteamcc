<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beverage | Wine</title>
<script src='/resources/scripts/tempCommon.js'></script>
<link rel='stylesheet' href='/resources/styles/beverage02.css' />
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
									<img src="/resources/images/templet_beverage/templet_beverage_mainBeverage.gif">
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
								<a href="/mainSaladbar" class="arrow01">
									<img src="/resources/images/templet_saladMain/ico_arr.png">
								</a>
								<a href="/mainSaladbar" class="link02">SALAD BAR</a>
								<span class="arrow02">
									<img src="/resources/images/templet_saladMain/ico_arr.png">
								</span>
								<span class="link03">Beverage</span>
							</div>
							<div class="contentText">
								<div class="text01">								
									<img src="/resources/images/templet_beverage/text01.png">
								</div>
								<div class="text02">
									<img src="/resources/images/templet_beverage/text02.png">
								</div>
							</div>
							<div class="contentImage">
								<img src="/resources/images/templet_salad/templet_salad_bgmain.png">
							</div>
							<div class="sns-Link" onclick="snsLink_4()">								
								<img src="/resources/images/templet_saladMain/ico_link.png">								
							</div>
						</div>
						<div class="content-bottom02">
							<ul class="content03-menus">
								<li>
									<a href="/saladBeverage01">
										<img src="/resources/images/templet_beverage/Special Drinks (1).gif">
									</a>
								</li>
								<li>
									<a href="/saladBeverage02">
										<img src="/resources/images/templet_beverage/Wine (1).gif">
									</a>
								</li>
								<li>
									<a href="/saladBeverage03">
										<img src="/resources/images/templet_beverage/Beers.gif">
									</a>
								</li>								
							</ul>
							<hr class="line">
							<div class="mainContent01">
								<div class="wineList">
									<img src="/resources/images/templet_beverage/wine_list_image.jpeg">
								</div>
								<div class="wineService">
									<div class="wineServiceImage"></div>
								</div>
								<div class="wineTip">
									<div class="wineTipImg">
										<div class="wineTipText"></div>
									</div>
									<div class="explanation">
										와인의 맛을 제대로 감지하려면 와인을 한 모금 물고 입술을 오므리며 입 안으로 공기를 가볍게 들이켜서
										잠시 동안 와인을 혀의 중간에 두고 와인의 특성을 느껴야 합니다. 그러면 와인 속에 함유되어 있는 여러
										요소들을 혀와 잇몸의 서로 다른 곳에서 감미 하기 때문에 와인의 진정한 맛을 느끼실 수 있습니다.
									</div>
									<div class="wineElement">
										<div class="elementList">
											<div class="wineTxtImage">
												<img src="/resources/images/templet_saladMain/bul_4dot.png">
											</div>
											<div class="element">산도</div>										
											<div class="enElement">(Acidity)</div>
											<div class="elementMean01">와인이나 음식에서 느끼는 상큼한 맛의 정도</div>											
										</div>
										<div class="elementList">
											<div class="wineTxtImage">
												<img src="/resources/images/templet_saladMain/bul_4dot.png">
											</div>
											<div class="element">당도</div>										
											<div class="enElement">(Sweetness)</div>
											<div class="elementMean02">와인이나 음식에서 느끼는 단맛의 정도로 특히 화이트 와인에서 중요함</div>											
										</div>
										<div class="elementList">
											<div class="wineTxtImage">
												<img src="/resources/images/templet_saladMain/bul_4dot.png">
											</div>
											<div class="element">바디</div>										
											<div class="enElement">(Body)</div>
											<div class="elementMean03">입 안에 머금었을 때 느껴지는 무게감으로 와인 성분의 농도에 의해 정해짐</div>											
										</div>
										<div class="elementList">
											<div class="wineTxtImage">
												<img src="/resources/images/templet_saladMain/bul_4dot.png">
											</div>
											<div class="element">탄닌</div>										
											<div class="enElement">(Tannin)</div>
											<div class="elementMean04">떫은 맛을 느끼게 하는 성분으로 와인 숙성에 중요</div>											
										</div>
										<div class="elementList">
											<div class="wineTxtImage">
												<img src="/resources/images/templet_saladMain/bul_4dot.png">
											</div>
											<div class="element">균형</div>										
											<div class="enElement">(Balance)</div>
											<div class="elementMean05">산도, 당도, 탄닌, 알코올 성분의 적절한 배합</div>											
										</div>
										<div class="elementList">
											<div class="wineTxtImage">
												<img src="/resources/images/templet_saladMain/bul_4dot.png">
											</div>
											<div class="element">여운</div>										
											<div class="enElement">(Finish)</div>
											<div class="elementMean06">와인을 맛본 후 입안에 머무는 느낌의 길이</div>											
										</div>
										
									</div>
								</div>
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
									모든 메뉴 가격은 부가세 포함된 가격입니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									만 19세 미만의 청소년에게는 주류판매가 불가능합니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									매장별로 판매되는 와인이 다를 수 있습니다.
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