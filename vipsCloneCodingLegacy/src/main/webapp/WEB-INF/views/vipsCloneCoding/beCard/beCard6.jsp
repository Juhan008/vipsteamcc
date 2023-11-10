<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10~30% 할인 | 제휴/할인카드 - VIPS</title>
<link rel='stylesheet' href='/resources/styles/commonEx.css' />
<link rel='stylesheet' href='/resources/styles/becard.css' />
</head>
<body>
	<div id="root">
		<div class="background-area">
			<div class="wrapall">
				<!-- 이 사이에 내용을 적으면 추가 됩니다. -->
				<div class="header"><jsp:include
						page="../template/templateHeaderFirst.jsp"></jsp:include>
				</div>
				<div id="container" class="clfix">
					<div id="lnb">
						<h3>
							<img src="/resources/images/benefit/beCard/BENEFIT.gif"
								alt="BENEFIT">
						</h3>
						<ul style="min-height: 1000px;">
							<li class="active"><a href="beCard"><img
									src="/resources/images/benefit/beCard/affiliatediscountcard.gif"
									alt="제휴할인"></a></li>
							<li class="active"><a href="beGiftCard"><img
									src="/resources/images/benefit/beCard/beGiftCard.gif" alt="상품권"></a></li>
							<li class="active"><a href="giftCard"><img
									src="/resources/images/benefit/beCard/GiftCard.gif" alt="기프트카드"></a></li>
						</ul>
					</div>
					<div id="content-wrap" class="clfix">
						<div class="path">
							<a href="#" class="home">Home</a><a href="#">BENEFIT</a><strong>제휴/할인
								카드</strong>
						</div>
						<div class="visual-sub benefit-visual">
							<h4>
								<img src="/resources/images/benefit/beCard/discountcard_top.png"
									alt="제휴할인카드">
							</h4>
							<p>
								<img src="/resources/images/benefit/beCard/beCard_top_text.png">
							</p>
						</div>
					
						<div id="content">
							<ul class="discount-tab clfix" style="min-height: 1500px;">
								<li><a href="beCard">
										<h5>
											<img
												src="/resources/images/benefit/beCard/tab_beCard1_on.gif"
												alt="10~30% 할인">
										</h5>
								</a>
									<div class="contents-box">
										<c:forEach items="${imageGroups}" var="group">
											<h6 class="benefit-title">${group.groupTitle}</h6>
											<table class="benefit01-tbl" border="1">
												<colgroup>
													<col style="width: 28%">
													<col style="width: 18%">
													<col style="width: 54%">
												</colgroup>
												<thead>
													<tr class="last">
														<th scope="col"><img
															src="/resources/images/benefit/beCard/card-kind.gif"></th>
														<th scope="col"><img
															src="/resources/images/benefit/beCard/dis-kind.gif"></th>
														<th scope="col"><img
															src="/resources/images/benefit/beCard/dis-scale.gif"></th>
													</tr>
												</thead>
												<c:forEach items="${images}" var="image">
													<tbody>
														<tr>
															<th scope="row"><img
																src="${pageContext.request.contextPath}${image.imagePath}"
																alt="${image.imageName}" />
																<p class="mt10">${image.imageName}</p></th>
															<td class="mid-txt line">${image.description1}</td>
															<td class="at-txt">
																<ul class="contents-txt">
																	<li><img class="dot"><u><strong>
																				${image.description2}</strong></u></li>
																	<li><img class="dot">${image.description3}</li>
																	<li><img class="dot">${image.description4}</li>
																	<li><img class="dot">${image.description5}</li>
																	<li><img class="dot">${image.description6}</li>
																</ul>
															</td>
														</tr>
														<tr class="last"></tr>
													</tbody>
												</c:forEach>
											</table>
										</c:forEach>
										<dl class="caution">
											<dt>
												<img src="/resources/images/benefit/beCard/tit_look.png">
											</dt>
											<dd>
												<ul class="contents-txt">

													<li>제휴할인 카드 간 중복 할인은 적용되지 않습니다. <span class="f11">(단,
															청구서 할인은 중복 적용 가능)</span></li>
													<li>제휴사별로 카드 적용이 변경될 수 있으니, 자세한 사항은 방문 전 반드시 각 카드사
														홈페이지를 확인해주시기 바랍니다.</li>
													<li>중복할인이 가능한 쿠폰 사용 시, 쿠폰 할인 후 나머지 금액에 대해 제휴카드 할인이
														적용됩니다.</li>
													<li>할인 불가한 쿠폰일 경우, 제휴할인 혜택이 적용되지 않습니다.</li>
													<!--<li>브런치, 다이너 등 일부 매장에서는 제휴 할인 중복 적용 불가하니 이용에 참고 부탁드립니다.</li>-->
													<li>일부 매장에서는 제휴 할인 적용이 불가하오니, 방문 전 문의 부탁드립니다.</li>
													<li>제휴 카드(신용, 체크)의 경우 결제 시 금액에 한하여 제휴 할인 적용 가능합니다.</li>
													<li>주문금액에 대해 삼성카드 포인트 100% 결제 시, 포인트 결제 금액은 구매실적에 포함되지
														않습니다.</li>
													<li>모바일 결제수단에 따라 제휴혜택 적용이 불가할 수 있습니다.</li>

												</ul>
											</dd>
										</dl>
									</div></li>
								<li><a href="beCard2"><h5>
											<img src="/resources/images/benefit/beCard/tab_beCard2.gif"
												alt="매장별제휴할인">
										</h5></a></li>
								<li><a href="beCard3"><h5>
											<img src="/resources/images/benefit/beCard/tab_beCard3.gif"
												alt="통신사할인">
										</h5></a></li>
								<li><a href="beCard4"><h5>
											<img src="/resources/images/benefit/beCard/tab_beCard4.gif"
												alt="포인트결제">
										</h5></a></li>
								<li><a href="beCard5"><h5>
											<img src="/resources/images/benefit/beCard/tab_beCard5.gif"
												alt="청구서차감">
										</h5></a></li>
						</div>
					</div>
				</div>

				<div class="footer"><jsp:include
						page="../template/templateFooterFirst.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
</body>
</html>