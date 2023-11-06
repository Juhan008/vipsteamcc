<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원산지 정보</title>
<script src='/resources/scripts/tempCommon.js'></script>
<link rel='stylesheet' href='/resources/styles/ingredientInfo.css' />
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
									<img src="/resources/images/templet_ingredientInfo/원산지 정보.gif">
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
								<span class="link03">원산지 정보</span>
							</div>
							<div class="contentText">
								<div class="text01">								
									<img src="/resources/images/templet_ingredientInfo/원산지 정보.png">
								</div>
								<div class="text02">
									<img src="/resources/images/templet_ingredientInfo/text02.png">
								</div>
							</div>
							<div class="contentImage">
								<img src="/resources/images/templet_salad/templet_salad_bgmain.png">
							</div>							
						</div>
						<div class="line">
							<img src="/resources/images/templet_ingredientInfo/line.png">
						</div>
						<div class="content-bottom02">
							<table class="ingredientList">
								<colgroup>
									<col style="width:18%">
									<col style="width:46%">
									<col style="width:36%">
								</colgroup>
								<thead>
									<tr>
										<th class="listHead">
											<img src="/resources/images/templet_ingredientInfo/구분.gif">
										</th>
										<th class="listHead">
											<img src="/resources/images/templet_ingredientInfo/메뉴명.gif">
										</th>
										<th class="listHead">
											<img src="/resources/images/templet_ingredientInfo/원산지.gif">
										</th>
									</tr>
								</thead>
								<tbody>
									<!-- list01 -->
									<tr>
										<th rowspan="43">To-Go & DELIVERY</th>
										<td>잠발라야라이스</td>
										<td>[쌀-외국산, 햄(닭고기-국내산,돼지고기-국내산)]</td>
									</tr>
									<!-- list02 -->
									<tr>
										<td>불고기라이스</td>
										<td>[쇠고기-호주산, 쌀-국내산]</td>
									</tr>
									<!-- list03 -->
									<tr>
										<td>감바스라이스</td>
										<td>[쌀-외국산]</td>
									</tr>
									<!-- list04 -->
									<tr>
										<td>폭립&잠발라야라이스</td>
										<td>[돼지고기-외국산] + 잠발라야라이스</td>
									</tr>
									<!-- list05 -->
									<tr>
										<td>폭립&불고기라이스</td>
										<td>[돼지고기-외국산] + 불고기라이스</td>
									</tr>
									<!-- list06 -->
									<tr>
										<td>폭립&감바스라이스</td>
										<td>[돼지고기-외국산] + 감바스라이스</td>
									</tr>
									<!-- list07 -->
									<tr>
										<td>스테이크&불고기라이스</td>
										<td>[쇠고기-미국산] + 불고기라이스</td>
									</tr>
									<!-- list08 -->
									<tr>
										<td>스테이크&감바스라이스</td>
										<td>[쇠고기-미국산] + 감바스라이스</td>
									</tr>
									<!-- list09 -->
									<tr>
										<td>그릴드치킨&잠발라야라이스</td>
										<td>[닭고기-브라질산] + 잠발라야라이스</td>
									</tr>
									<!-- list10 -->
									<tr>
										<td>그릴드치킨&불고기라이스</td>
										<td>[닭고기-브라질산] + 불고기라이스</td>
									</tr>
									<!-- list11 -->
									<tr>
										<td>그릴드치킨&감바스라이스</td>
										<td>[닭고기-브라질산] + &감바스라이스</td>
									</tr>
									<!-- list12 -->
									<tr>
										<td>블랙 페퍼 채끝 스테이크</td>
										<td>[쇠고기-호주산]</td>
									</tr>
									<!-- list13 -->
									<tr>
										<td>빕스1997스테이크</td>
										<td>[쇠고기-호주산]</td>
									</tr>
									<!-- list14 -->
									<tr>
										<td>빕스안심스테이크</td>
										<td>[쇠고기-호주산]</td>
									</tr>
									<!-- list15 -->
									<tr>
										<td>시그니처 바비큐 폭립</td>
										<td>[돼지고기-외국산]</td>
									</tr>
									<!-- list16 -->
									<tr>
										<td>채끝 스테이크 샐러드</td>
										<td>[쇠고기-호주산]</td>
									</tr>
									<!-- list17 -->
									<tr>
										<td>그릴드 치킨 시저 샐러드</td>
										<td>[베이컨(돼지고기-미국산)], [닭고기-국내산]</td>
									</tr>
									<!-- list18 -->
									<tr>
										<td>그릴드 발사믹 치킨 샐러드</td>
										<td>[닭고기-국내산]</td>
									</tr>
									<!-- list19 -->
									<tr>
										<td>그릴드 치킨 두부면 샐러드</td>
										<td>[닭고기-국내산, 두부(콩 - 외국산)]</td>
									</tr>
									<!-- list20 -->
									<tr>
										<td>얌까르보 페투치니 파스타</td>
										<td>[베이컨(돼지고기-미국산)]</td>
									</tr>
									<!-- list21 -->
									<tr>
										<td>수란톡 명란 까르보나라 파스타</td>
										<td>[베이컨(돼지고기-미국산), 명란-러시아산]</td>
									</tr>
									<!-- list22 -->
									<tr>
										<td>할라피뇨 베이컨오일 파스타</td>
										<td>[베이컨(돼지고기-미국산), 소시지(돼지고기-국내산)]</td>
									</tr>
									<!-- list23 -->
									<tr>
										<td>토마토 마레 파스타</td>
										<td>[오징어-칠레산]</td>
									</tr>
									<!-- list24 -->
									<tr>
										<td>토마토 마레 리조또</td>
										<td>[쌀-외국산, 오징어-칠레산]</td>
									</tr>
									<!-- list25 -->
									<tr>
										<td>콤비네이션 피자</td>
										<td>[베이컨(돼지고기-미국산), 소시지(돼지고기-국내산)]</td>
									</tr>
									<!-- list26 -->
									<tr>
										<td>티본 다이닝팩/파티팩 - 티본스테이크</td>
										<td>[쇠고기-미국산, 폭립(돼지고기-외국산)]</td>
									</tr>
									<!-- list27 -->
									<tr>
										<td>파티팩 - 잠발라야라이스</td>
										<td>[쌀-외국산, 햄(닭고기-국내산, 돼지고기-국내산)]</td>
									</tr>
									<!-- list28 -->
									<tr>
										<td>파티팩 - 콥샐러드</td>
										<td>[베이컨(돼지고기-미국산)]</td>
									</tr>
									<!-- list29 -->
									<tr>
										<td>치킨윙(regular)</td>
										<td>[닭고기-태국산]</td>
									</tr>
									<!-- list30 -->
									<tr>
										<td>치킨윙(small)</td>
										<td>[닭고기-태국산]</td>
									</tr>
									<!-- list31 -->
									<tr>
										<td>치킨 텐더</td>
										<td>[닭고기-태국산]</td>
									</tr>
									<!-- list32 -->
									<tr>
										<td>그릴드 치킨 & 매쉬포테이토</td>
										<td>[닭고기-브라질산]</td>
									</tr>
									<!-- list33 -->
									<tr>
										<td>치킨김치라이스</td>
										<td>[쌀-국내산, 닭고기-국내산, 배추김치(배추-국내산, 고춧가루-중국산)]</td>
									</tr>
									<!-- list34 -->
									<tr>
										<td>스테이크&잠발라야라이스</td>
										<td>[쇠고기-미국산] + 잠발라야라이스</td>
									</tr>
									<!-- list35 -->
									<tr>
										<td>스테이크 고르곤 까르보나라</td>
										<td>[쇠고기-미국산, 베이컨(돼지고기-외국산)]</td>
									</tr>
									<!-- list36 -->
									<tr>
										<td>BBQ파티팩 - 폭립</td>
										<td>[돼지고기-외국산]</td>
									</tr>
									<!-- list37 -->
									<tr>
										<td>BBQ파티팩 - 풀드포크</td>
										<td>[돼지고기-외국산]</td>
									</tr>
									<!-- list38 -->
									<tr>
										<td>BBQ파티팩 - 치킨윙</td>
										<td>[닭고기-태국산]</td>
									</tr>
									<!-- list39 -->
									<tr>
										<td>학센 플래터</td>
										<td>[돼지고기-외국산]</td>
									</tr>
									<!-- list40 -->
									<tr>
										<td>스테이크&잠발라야라이스</td>
										<td>[햄(닭고기-국내산, 돼지고기-국내산)]</td>
									</tr>
									<!-- list41 -->
									<tr>
										<td>쉬림프&잠발라야라이스</td>
										<td>[햄(닭고기-국내산, 돼지고기-국내산)]</td>
									</tr>
									<!-- list42 -->
									<tr>
										<td>스테이크 고르곤 까르보나라</td>
										<td>[베이컨(돼지고기-미국산)]</td>
									</tr>
									<!-- list43 -->
									<tr>
										<td class="listLast">멕시칸 BBQ 피자</td>
										<td class="listLast">[돼지고기-미국산]</td>
									</tr>																	
								</tbody>
							</table>							
						</div>
						<div class="bottomLine"></div>
						<div class="addInfo">
							<div>
								스테이크 싱글플래터/스테이크 고르곤 까르보나라 메뉴는
							</div>
							<div>
								식재 수급에 따라 호주산 또는 미국산 쇠고기로 조리되어 제공됩니다.
							</div>
							<div class="lastInfo">
								메뉴 제공 시 사용된 식재의 원산지 정보는 영수증에 체크하여 제공해드리고 있습니다.
							</div>
							<div class></div>
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
									빕스 딜리버리 메뉴에 대한 원산지 정보입니다.
								</div>
								<div class="listImage">
									<img src="/resources/images/templet_saladMain/bul_4dot.png">
								</div>
								<div class="listText">
									식재 수급 상황에 따라 원산지는 변경될 수 있으며, 원산지 정보는 배달 App,
									셰프고 또는 영수증 내 원산지 확인 부탁드립니다.
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