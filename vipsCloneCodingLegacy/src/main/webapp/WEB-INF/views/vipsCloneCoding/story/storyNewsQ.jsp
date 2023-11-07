<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새소식</title>
<link rel='stylesheet' href='/resources/styles/story/storyNewsQ.css' />
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
							<div class="table-total">
								<img src="/resources/images/story/storyNewsQ/tableTotalIcon.png"
									alt="" class="" />
								<div class="total-post-number">전체건수 -
									${newsBoardService.tableFinish()}건</div>
								<div class="search-area">
									<form class="search">
										<input type="text" />
										<button>검색</button>
									</form>
								</div>
								<div class="table-list-area">
									<div class="table-list-sub">
										<div class="table-list-id">글번호</div>
										<div class="table-list-title">제목</div>
										<div class="table-list-createdAt">등록일</div>
										<div class="table-list-view">조회수</div>
									</div>
									<c:if test="${newsBoardService!=null}">
										<c:forEach var="i" begin="0" end="9">
											<c:if
												test="${newsBoardService.getTitle(newsBoardService.tableFinish()-i)!=null}">

												<form action="/story/storyNewsPrt" class="table-text-area">
													<input type="hidden" name="currentPost"
														value=${newsBoardService.getId(newsBoardService.tableFinish()-i)}>
													<div class="table-list-id">${newsBoardService.getId(newsBoardService.tableFinish()-i)}</div>
													<div class="table-list-title-2">
														<button class="title-button">${newsBoardService.getTitle(newsBoardService.tableFinish()-i)}</button>
													</div>
													<div class="table-list-createdAt">${newsBoardService.getCreatedAt(newsBoardService.tableFinish()-i)}</div>
													<div class="table-list-view">${newsBoardService.getView(newsBoardService.tableFinish()-i)}</div>
												</form>

												<hr>
											</c:if>
										</c:forEach>
									</c:if>
								</div>
							</div>
							<c:if test="${member.equals('admin')||member.equals('subAdmin')}">
								<div>
									<a href="/story/storyNewsWrite">
										<button class="write-button">글쓰기</button>
									</a>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>