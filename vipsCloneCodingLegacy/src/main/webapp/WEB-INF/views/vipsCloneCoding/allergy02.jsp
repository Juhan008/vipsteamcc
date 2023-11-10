<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알레르기 정보</title>
<script src='/resources/scripts/tempCommon.js'></script>
<link rel='stylesheet' href='/resources/styles/allergy02.css' />
</head>
<body>	
	<div id="root">
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
									<img src="/resources/images/templet_allergy/알레르기 정보.gif">
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
								<span class="link03">알레르기 정보</span>
							</div>
							<div class="contentText">
								<div class="text01">								
									<img src="/resources/images/templet_allergy/알레르기 정보.png">
								</div>
								<div class="text02">
									<img src="/resources/images/templet_allergy/text02.png">
								</div>
							</div>
							<div class="contentImage">
								<img src="/resources/images/templet_salad/templet_salad_bgmain.png">
							</div>							
						</div>
						<!-- <div class="line">
							<img src="/resources/images/templet_ingredientInfo/line.png">
						</div> -->
						<div class="content-bottom02">
							<ul class="rawMaterial">
								<li class="firstList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/난류.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy02">
										<img src="/resources/images/templet_allergy/txt_material02_on.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy03">
										<img src="/resources/images/templet_allergy/메밀.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy04">
										<img src="/resources/images/templet_allergy/땅콩.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy05">
										<img src="/resources/images/templet_allergy/대두.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/밀.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/고등어.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/게.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/새우.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/돼지고기.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/복숭아.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/토마토.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/아황산류.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/호두.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/쇠고기.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/닭고기.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/오징어.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/조개류.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/잣.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/txt_material20.gif">
									</a>
								</li>
							</ul>
						</div>
						<div class="bottomLine"></div>
						<div class="line01">
							<img src="/resources/images/templet_ingredientInfo/line.png">
						</div>
						<div class="material-header">
							<div class="header-division">구분</div>
							<div class="header-menu">메뉴</div>
							<div class="header-info">정보</div>
						</div>
						<div class="line02"></div>
						<div class="material-infoBox">
							<div class="infoBox-01">
								<div class="division-01">${allergyService.getDivision01()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division01}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division01}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-02">${allergyService.getDivision16()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division02}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division02}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-03">${allergyService.getDivision02()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division03}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division03}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-04">${allergyService.getDivision03()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division04}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division04}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-05">${allergyService.getDivision06()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division05}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division05}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-06">${allergyService.getDivision07()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division06}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division06}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-07">${allergyService.getDivision08()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division07}">
									<div class="menu-02">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division07}">
									<div class="info-02">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-08">${allergyService.getDivision09()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division08}">
									<div class="menu-02">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division08}">
									<div class="info-02">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-09">${allergyService.getDivision10()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division09}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division09}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-10">${allergyService.getDivision12()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division10}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division10}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-11">${allergyService.getDivision13()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division11}">
									<div class="menu-02">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division11}">
									<div class="info-02">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-12">${allergyService.getDivision14()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division12}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division12}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-01">
								<div class="division-13">${allergyService.getDivision15()}</div>
							</div>
							<div class="infoBox-02">
								<c:forEach var="item" items="${division13}">
									<div class="menu-01">${item.getMenu()}</div>
								</c:forEach>
							</div>
							<div class="infoBox-03">
								<c:forEach var="item" items="${division13}">
									<div class="info-01">${item.getInfo()}</div>
								</c:forEach>
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
									주요 메뉴 중 식품위생법 상 표기 대상 원료에 대한 안내사항입니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									알레르기는 개인 체질 등에 따라 발생하는 식품이 다를 수 있으니, 해당 여부를 꼭 확인하여 주시기 바랍니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									상기 메뉴는 매장별로 상이할 수 있습니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									전체보기로 보시면 가나다순으로 표기됩니다.
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
</body>
</html>