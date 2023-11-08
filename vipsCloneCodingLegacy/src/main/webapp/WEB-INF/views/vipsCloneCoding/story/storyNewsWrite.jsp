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
							<form action="" method="post">
								<input type="hidden" name="userId" value="${userId}">
								제목
								<input type="file">
								파일
								<input type="text" name="title">
								내용
								<input type="text" name="boardContents">
								<button>글쓰기</button>
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