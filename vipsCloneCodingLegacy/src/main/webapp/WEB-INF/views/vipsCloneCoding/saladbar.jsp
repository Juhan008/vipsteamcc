<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SALAD BAR SALAD</title>
<script src='/resources/scripts/tempCommon.js'></script>
<link rel='stylesheet' href='/resources/styles/saladbar.css' />
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
									<img src="/resources/images/templet_salad/Salad bar (1).gif">
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
								<a href="/mainSaladbar" class="arrow01">
									<img src="/resources/images/templet_saladMain/ico_arr.png">
								</a>
								<a href="/mainSaladbar" class="link02">SALAD BAR</a>
								<span class="arrow02">
									<img src="/resources/images/templet_saladMain/ico_arr.png">
								</span>
								<span class="link03">SALAD BAR</span>
							</div>
							<div class="contentText">
								<div class="text01">								
									<img src="/resources/images/templet_salad/templet_salad_contentText01.png">
								</div>
								<div class="text02">
									<img src="/resources/images/templet_salad/templet_salad_contentText02.png">
								</div>
							</div>
							<div class="contentImage">
								<img src="/resources/images/templet_salad/templet_salad_bgmain.png">
							</div>
							<div class="sns-Link" onclick="snsLink_2()">							
								<img src="/resources/images/templet_saladMain/ico_link.png">								
							</div>
						</div>
						<div class="content-bottom02">
							<ul class="content02-menus">
								<li>
									<img src="/resources/images/templet_salad/templet_salad_menu01.jpeg">
								</li>
								<li class="secondList">
									<img src="/resources/images/templet_salad/templet_salad_menu02.jpeg">
								</li>
								<li>
									<img src="/resources/images/templet_salad/templet_salad_menu03.jpeg">
								</li>
								<li class="secondList">
									<img src="/resources/images/templet_salad/templet_salad_menu04.jpeg">
								</li>
								<li>
									<img src="/resources/images/templet_salad/templet_salad_menu05.jpeg">
								</li>
								<li class="secondList">
									<img src="/resources/images/templet_salad/templet_salad_menu06.jpeg">
								</li>
								<li>
									<img src="/resources/images/templet_salad/templet_salad_menu07.jpeg">
								</li>
								<li class="secondList">
									<img src="/resources/images/templet_salad/templet_salad_menu08.jpeg">
								</li>
								<li>
									<img src="/resources/images/templet_salad/templet_salad_menu09.jpeg">
								</li>
							</ul>
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
									상기 메뉴는 VIPS TASTE UP PLUS와 PREMIER 기준입니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									상기 이미지는 실제와 다를 수 있습니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									매장별 메뉴는 다를 수 있으며, 최상의 샐러드 바를 위하여 삭제 또는 메뉴는 변경될 수 있습니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									평일 런치와 평일디너/주말/공휴일에 제공되는 메뉴는 다를 수 있습니다.
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