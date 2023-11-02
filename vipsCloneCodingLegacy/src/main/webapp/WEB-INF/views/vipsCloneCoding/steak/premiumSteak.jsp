<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My No.1 스테이크하우스 빕스 - VIPS</title>
<link rel='stylesheet'
	href='../../styles/premiumSteak/premiumSteak.css' />
</head>
<body>

	<div id="root">
		<div class="background-shadow">
			<jsp:include page="../template/templateHeaderFirst.jsp"></jsp:include>
			<div class="padding-box">

				<div class="wrap">

					<div class="side-menu-area">
						<img src="../../images/premiumSteak/sideSteak.gif"
							alt="스테이크" class="VIPSSTORY" />

						<div class="side-button-area">
							<a href="./premiumSteak.jsp">
								<img
									src="../../images/premiumSteak/premiumSteakSideButton.gif"
									alt="프리미엄 스테이크" class="VIPS-story" />
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
								<a href="/vipsCloneCoding/steak/premiumSteak.jsp">
									<img src="../../images/story/storyBrandStory/arrowIcon.png"
										alt="화살표" />
									STEAK
								</a>
							</span>
							<span>
								<img src="../../images/story/storyBrandStory/arrowIcon.png"
									alt="화살표" />
								<strong> Premium Steak</strong>
							</span>
						</div>
						
						<div class="preminum-steak-info">
						<img src="../../images/premiumSteak/premiumSteakInfo.jpg"
									alt="스테이크 소개" />
						</div>
						
						
					</div>
				</div>
			</div>
			<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>