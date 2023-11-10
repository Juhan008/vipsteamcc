<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지데이터 조회 - VIPS</title>
<link rel='stylesheet' href='/resources/styles/commonEx.css' />
<link rel='stylesheet' href='/resources/styles/becard.css' />
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
							<img src="/resources/images/benefit/beCard/ADMINTab.png"
								alt="BENEFIT">
						</h3>
						<ul style="min-height: 1000px;">
							<li class="active"><a href="beCard"><img
									src="/resources/images/benefit/beCard/image_check_on.png"></a></li>
							<li class="active"><a href="addimage"><img
									src="/resources/images/benefit/beCard/card_admin.png"></a></li>
						</ul>
					</div>
					<div id="content-wrap" class="clfix">
						<div class="path">
							<a href="#" class="home">관리자</a><a href="#">ADMIN</a><strong>이미지
								조회</strong>
						</div>
						<div class="visual-sub benefit-visual">
							<h4 class="DB-info-title">이미지 데이터 조회/삭제</h4>
							
							<h5 class="DB-info-text">데이터베이스의 이미지를 관리합니다.</h5>
							
						</div>
						<div id="content">
							<ul class="discount-tab clfix" style="height: 500px">
								<li><a href="/imageadmin"><h5>
											<img
												src="/resources/images/benefit/beCard/image_check_on.png">
										</h5></a>
									<div class="contents-box">
										<div class="DB-list">
											<c:if test="${not empty images}">
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
																	<div>
																		<form
																			action="<c:url value='/deleteimage/${image.imageId}' />"
																			method="post">
																			<input type="submit" value="삭제"
																				onclick="return confirm('이 이미지를 삭제하시겠습니까?');" />
																		</form>
																	</div>
																</td>
															</tr>
															<tr class="last"></tr>
														</tbody>
													</c:forEach>
												</table>
											</c:if>
										</div>
									</div></li>
								<li><a href="beCard2"><h5>
											<img src="/resources/images/benefit/beCard/card_admin.png">
										</h5></a></li>
							</ul>
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