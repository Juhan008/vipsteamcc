<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SALAD BAR MAIN</title>
<link rel="stylesheet" href="../styles/common.css">
<link rel="stylesheet" href="../styles/mainSaladbar.css">
</head>
<body>
	<div id="wrapAll">
		<div id="wrapper">
			<div id="wrap">
				<div class="headForm"><jsp:include page="template/templateHeaderFirst.jsp"></jsp:include></div>									
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
					<div class="footForm"><jsp:include page="template/templateFooterFirst.jsp"></jsp:include></div>					
				</div>				
			</div>
		</div>
	</div>	
</body>
</html>