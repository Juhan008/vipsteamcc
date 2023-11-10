<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새소식 관리자 페이지</title>
<link rel='stylesheet' href='/resources/styles/story/storyNewsWrite.css' />
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
						<div class="path-area">
							<div class="path">
								<span>
									<a href="/intro.jsp">
										<img
											src="/resources/images/story/storyBrandStory/homeIcon.png"
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
									<img
										src="/resources/images/story/storyBrandStory/arrowIcon.png"
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
						</div>
						<div class="table-area-padding">
							<form action="" method="post" enctype="multipart/form-data">
								<div>
									<input type="hidden" name="currentPost" value="${currentPost}">
									<input type="hidden" name="userId" value="${userId}">
									<input type="file" name="file">
								</div>
								<div class="text-title-area">
									<input type="text" name="title" placeholder="제목"
										class="text-title"
										value="${newsBoardService.getTitle(currentPost)}">
								</div>
								<div class="text-boardContents-area">
									<textarea name="boardContents" placeholder="내용"
										class="text-boardContents">${newsBoardService.getContents(currentPost)}</textarea>
								</div>
								<div class="button-area">
									<button>수정</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>