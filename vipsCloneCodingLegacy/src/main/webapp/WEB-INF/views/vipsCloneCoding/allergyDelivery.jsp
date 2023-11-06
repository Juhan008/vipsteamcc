<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알레르기 정보 (딜리버리)</title>
<script src='/resources/scripts/tempCommon.js'></script>
<link rel='stylesheet' href='/resources/styles/allergyDelivery.css' />
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
									<img src="/resources/images/templet_allergyDelivery/알레르기 정보(딜리버리).gif">
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
								<span class="link03">알레르기 정보(딜리버리)</span>
							</div>
							<div class="contentText">
								<div class="text01">								
									<img src="/resources/images/templet_allergyDelivery/알레르기 정보(딜리버리).png">
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
										<img src="/resources/images/templet_allergy/txt_material01_on.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/우유.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/메밀.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
										<img src="/resources/images/templet_allergy/땅콩.gif">
									</a>
								</li>
								<li class="otherList">
									<a href="/allergy">
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
						<div class="line54">
							<img src="/resources/images/templet_ingredientInfo/line.png">
						</div>
						<table class="material01-info">
							<colgroup>
								<col style="width:20%;">
								<col style="width:30%;">
								<col style="width:50%;">
							</colgroup>
							<thead>
								<tr>
									<th>구분</th>
									<th>메뉴</th>
									<th>정보</th>
								</tr>								
							</thead>
							<tbody>
								<tr>
									<th rowspan="7">PASTA RICE</th>
									<td class="material-menu">수란톡 명란 까르보나라</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 닭고기</td>
								</tr>
								<tr>
									<td class="material-menu">쉬림프 로제 파스타</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기</td>
								</tr>
								<tr>
									<td class="material-menu">스테이크 고르곤 까르보나라</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 고등어, 돼지고기, 토마토, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">얌까르보 페투치니</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 닭고기</td>
								</tr>
								<tr>
									<td class="material-menu">얌새우 알리오올리오 파스타</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">토마토 마레 리조또</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 쇠고기, 닭고기, 오징어, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">토마토 마레 파스타</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 아황산류, 닭고기, 오징어, 조개류</td>
								</tr>
								<tr>
									<th rowspan="3">PIZZA</th>
									<td class="material-menu">멕시칸 BBQ 피자</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 토마토, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">멜팅 콰트로 치즈 피자</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 호두, 닭고기</td>
								</tr>
								<tr>
									<td class="material-menu">콤비네이션 피자</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 토마토, 닭고기</td>
								</tr>						
								<tr>
									<th rowspan="3">SALAD MEAL</th>
									<td class="material-menu">그릴드 치킨 시저 샐러드</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 오징어</td>
								</tr>
								<tr>
									<td class="material-menu">미주라도너츠</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀</td>
								</tr>
								<tr>
									<td class="material-menu">시저드레싱 추가</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 아황산류, 쇠고기</td>
								</tr>								
								<tr>
									<th rowspan="3">SET</th>
									<td class="material-menu">티본 다이닝팩 2~3인 세트</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 고등어, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">티본 파티팩 3~4인 세트</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 고등어, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">BBQ 파티팩 2~3인 세트</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 오징어, 조개류</td>
								</tr>								
								<tr>
									<th rowspan="9">SIDE</th>
									<td class="material-menu">그린샐러드</td>
									<td class="material-menuInfo">난류, 우유, 대두, 토마토, 아황산류</td>
								</tr>
								<tr>
									<td class="material-menu">그릴드치킨&메쉬포테이토</td>
									<td class="material-menuInfo">난류, 우유, 대두, 토마토, 닭고기</td>
								</tr>
								<tr>
									<td class="material-menu">망고듬뿍 치즈케이크</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 아황산류</td>
								</tr>
								<tr>
									<td class="material-menu">빕스 감바스</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">시즈널스프</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">얌블랙브레드</td>
									<td class="material-menuInfo">난류, 우유, 밀, 오징어</td>
								</tr>
								<tr>
									<td class="material-menu">치킨 텐더</td>
									<td class="material-menuInfo">난류, 대두, 밀, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">치킨윙regular</td>
									<td class="material-menuInfo">난류, 대두, 밀, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">콘립 프라이즈</td>
									<td class="material-menuInfo">난류, 우유</td>
								</tr>
								<tr>
									<th rowspan="4">SINGLE PLATTER</th>
									<td class="material-menu">그릴드치킨&잠발라야라이스</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">쉬림프&잠발라야라이스</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">스테이크&잠발라야라이스</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 토마토, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">폭립&잠발라야라이스</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>								
								<tr>
									<th rowspan="6">STEAK GRILL</th>
									<td class="material-menu">블랙 페퍼 채끝 스테이크</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 고등어, 돼지고기, 토마토, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">빕스 1997 스테이크</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 고등어, 돼지고기, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">빕스 안심 스테이크</td>
									<td class="material-menuInfo">난류, 우유, 대두, 토마토, 쇠고기</td>
								</tr>
								<tr>
									<td class="material-menu">시그니처 바비큐 폭립</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 토마토, 아황산류, 쇠고기, 닭고기, 조개류</td>
								</tr>
								<tr>
									<td class="material-menu">폭립 프라이즈</td>
									<td class="material-menuInfo">난류, 우유, 대두, 밀, 돼지고기, 쇠고기</td>
								</tr>
								<tr>
									<td class="material-menu">학센 플래터</td>
									<td class="material-menuInfo">난류, 우유, 밀, 돼지고기, 오징어</td>
								</tr>								
							</tbody>
						</table>
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
			</div>
		</div>
	</div>			
</body>
</html>