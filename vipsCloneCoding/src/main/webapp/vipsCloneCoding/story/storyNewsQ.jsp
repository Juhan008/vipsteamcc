<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새소식</title>
<link rel='stylesheet' href='../../styles/story/storyNewsQ.css' />
</head>
<body>
	<div id="root">
		<div class="background-shadow">
			<jsp:include page="../template/templateHeaderFirst.jsp"></jsp:include>
			<div class="padding-box">
				<div class="wrap">
					<div class="side-menu-area">
						<img src="../../images/story/storyBrandStory/VIPS_STORY.gif"
							alt="VIPS" class="VIPSSTORY" />

						<div class="side-button-area">
							<a href="./storyBrandStory.jsp">
								<img
									src="../../images/story/storyNewsQ/brandStorySideButton.gif"
									alt="VIPS" class="VIPS-story" />
							</a>
							<a href="./storyNewsQ.jsp">
								<img src="../../images/story/storyNewsQ/storyNewButton.gif"
									alt="새소식" class="new-story" />
							</a>
						</div>
					</div>

					<div class="info-area">
						<div class="path">
							<span>
								<a href="/vipsCloneCoding/intro.jsp">
									<img src="../../images/story/storyBrandStory/homeIcon.png"
										alt="홈으로" />
									Home
								</a>
							</span>
							<span>
								<a href="/vipsCloneCoding/story/storyBrandStory.jsp">
									<img src="../../images/story/storyBrandStory/arrowIcon.png"
										alt="화살표" />
									VIPS STORY
								</a>
							</span>
							<span>
								<img src="../../images/story/storyBrandStory/arrowIcon.png"
									alt="화살표" />
								<strong> 새소식</strong>
							</span>
						</div>

						<div class="big-title">
							<h4>
								<img src="../../images/story/storyNewsQ/newTitle.png" alt="새소식"
									class="new-title" />
							</h4>

							<img src="../../images/story/storyNewsQ/newTitleInfo.png"
								alt="설명" class="new-title-info" />

							<img
								src="../../images/story/storyBrandStory/bigTitleBackground.png"
								alt="그림" class="big-title-background" />
						</div>


						<div class="table-area-padding">
							<!-- 여기에선 db 연결해야된다 -->
							<div class="table-total">
								<img src="../../images/story/storyNewsQ/tableTotalIcon.png"
									alt="" class="" />
								전체건수 -
							</div>


						</div>

					</div>
				</div>
			</div>
			<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>