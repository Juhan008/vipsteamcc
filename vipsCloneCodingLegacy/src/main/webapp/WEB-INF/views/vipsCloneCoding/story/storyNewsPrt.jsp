<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새소식 - VIPS</title>
<link rel='stylesheet' href='/resources/styles/story/storyNewsPrt.css' />
</head>
<body>
	<div id="root">
		<div class="background-shadow">
			<jsp:include page="../template/templateHeaderFirst.jsp"></jsp:include>
			<div class="padding-box">
				<div class="wrap">
					<div class="side-menu-area">
						<img src="/resources/images/story/storyBrandStory/VIPS_STORY.gif"
							alt="VIPS" class="VIPSSTORY" />

						<div class="side-button-area">
							<a href="./storyBrandStory">
								<img
									src="/resources/images/story/storyNewsQ/brandStorySideButton.gif"
									alt="VIPS" class="VIPS-story" />
							</a>
							<a href="./storyNewsQ">
								<img src="/resources/images/story/storyNewsQ/storyNewButton.gif"
									alt="새소식" class="new-story" />
							</a>
						</div>
					</div>

					<div class="info-area">
						<div class="path">
							<span>
								<a href="/intro.jsp">
									<img src="/resources/images/story/storyBrandStory/homeIcon.png"
										alt="홈으로" />
									Home
								</a>
							</span>
							<span>
								<a href="/story/storyBrandStory">
									<img
										src="/resources/images/story/storyBrandStory/arrowIcon.png"
										alt="화살표" />
									VIPS STORY
								</a>
							</span>
							<span>
								<img src="/resources/images/story/storyBrandStory/arrowIcon.png"
									alt="화살표" />
								<strong> 새소식</strong>
							</span>
						</div>

						<div class="big-title">
							<h4>
								<img src="/resources/images/story/storyNewsQ/newTitle.png"
									alt="새소식" class="new-title" />
							</h4>
							<div>
								<img src="/resources/images/story/storyNewsQ/newTitleInfo.png"
									alt="설명" class="new-title-info" />
							</div>
							<img
								src="/resources/images/story/storyBrandStory/bigTitleBackground.png"
								alt="그림" class="big-title-background" />
						</div>


						<div class="table-area-padding">
							<!-- 여기에선 db 연결해야된다 -->
							<div class="table-print-area">
								<div class="table-print-title">
									<strong>${newsBoardService.getTitle(currentPost)}</strong>
								</div>
								<div class="table-print-sub">
									<div class="table-print-date">
										<strong>등록일</strong>
										${newsBoardService.getCreatedAt(currentPost)}
									</div>
									<div class="table-print-view">
										<strong>조회수</strong> ${newsBoardService.getView(currentPost)}
									</div>
								</div>
								<div>${newsBoardService.getContents(currentPost)}</div>
							</div>
							<div class="table-controll-area">
								<div class="table-controll-move">
									<img src="/resources/images/story/storyNewsPrt/previous.gif"
										alt="이전글">
									<c:choose>
										<c:when
											test="${newsBoardService.getTitle(currentPost-1)==null}">
										 이전 글이 없습니다.
										</c:when>
										<c:otherwise>
											<form action="" class="move-table-form">
												<input type="hidden" value=${currentPost-1
													}
													name="currentPost">
												<button>${newsBoardService.getTitle(currentPost-1)}</button>
											</form>
										</c:otherwise>
									</c:choose>

								</div>
								<hr />
								<div class="table-controll-move">

									<img src="/resources/images/story/storyNewsPrt/next.gif"
										alt="다음글">
									<c:choose>
										<c:when
											test="${newsBoardService.getTitle(currentPost+1)==null}">
											 다음 글이 없습니다.
										</c:when>

										<c:otherwise>
											<form action="" class="move-table-form">
												<input type="hidden" value=${currentPost+1
													}
													name="currentPost">
												<button>${newsBoardService.getTitle(currentPost+1)}</button>
											</form>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<a href="/story/storyNewsQ">
								<button class="table-controll-button">목록</button>
							</a>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>