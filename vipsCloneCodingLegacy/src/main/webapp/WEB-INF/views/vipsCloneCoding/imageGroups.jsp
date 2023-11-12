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
							<li class="active"><a href="imageadmin"><img
									src="/resources/images/benefit/beCard/image_check.png"></a></li>
							<li class="active"><a href="imageGroups"><img
									src="/resources/images/benefit/beCard/card_admin_on.png"></a></li>
						</ul>
					</div>
					<div id="content-wrap" class="clfix">
						<div class="path">
							<a href="#" class="home">관리자</a><a href="#">ADMIN</a><strong>카드
								이미지 그룹</strong>
						</div>
						<div class="visual-sub benefit-visual">
							<h4 class="DB-info-title">이미지 그룹 조회/삭제</h4>

							<h5 class="DB-info-text">이미지 그룹을 관리합니다.</h5>

						</div>
						<div id="content">
							<ul class="discount-tab clfix" style="height: 500px">
								<li><a href="imageGroups"><h5>
											<img
												src="/resources/images/benefit/beCard/imageGroups_on.png">
										</h5></a>
									<div class="contents-box">
										<div class="DB-list">
											<div class="group-list">
												<h1>이미지 그룹 목록 조회</h1>

												<c:if test="${not empty groups}">
													<table>
														<thead>
															<tr>
																<th>그룹 제목</th>
																<th>삭제</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${groups}" var="group">
																<tr class="group-list">
																	<td>${group.groupTitle}</td>
																	<td>
																		<form
																			action="<c:url value='/deleteGroup/${group.groupId}' />"
																			method="post">
																			<input type="submit" value="삭제"
																				onclick="return confirm('이 그룹을 삭제하시겠습니까?');">
																		</form>
																	</td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</c:if>

												<!-- 이미지 그룹이 없을 경우 메시지 표시 -->
												<c:if test="${empty groups}">
													<p>생성된 이미지 그룹이 없습니다.</p>
												</c:if>
											</div>
											<div class="group-create-box">
												<!-- 이미지 그룹 생성 폼 -->
												<h2>새 이미지 그룹 생성</h2>
												<form action="<c:url value='/createGroup' />" method="post">
													<label for="groupTitle">그룹 제목:</label> <input type="text"
														id="groupTitle" name="groupTitle" required> <input
														type="submit" value="생성">
												</form>
												<form action="/addGroupImage" method="post">
													<label for="groupId">그룹 선택:</label> <select id="groupId"
														name="groupId">
														<c:forEach items="${groups}" var="group">
															<ul>
																<li>
																	<option value="${group.groupId}">${group.groupTitle}</option>
																</li>
														</c:forEach>
													</select> <label for="imageId">이미지 선택:</label> <select id="imageId"
														name="imageId">
														<c:forEach items="${images}" var="image">
															<option value="${image.imageId}">${image.imageName}</option>
														</c:forEach>
													</select> <label for="orderIndex">이미지 순서:</label> <input
														type="number" id="orderIndex" name="orderIndex"> <input
														type="submit" value="이미지 그룹에 추가">
												</form>
											</div>
										</div>
									</div></li>
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