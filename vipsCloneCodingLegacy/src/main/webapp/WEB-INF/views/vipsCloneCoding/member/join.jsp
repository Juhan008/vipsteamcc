<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel='stylesheet' href='/resources/styles/member/join.css' />
</head>
<body>
	<div id="root">
		<div class="background-shadow">
			<jsp:include page="../template/templateHeaderFirst.jsp"></jsp:include>
			<div class="padding-box">
				<div class="wrap">
					<div class="side-menu-area">
						<img src="/resources/images/member/join/sideJoin.jpg" alt="로그인" />

						<div class="side-button-area">
							<a href="./join">
								<img src="/resources/images/member/join/sideJoinButton.jpg"
									alt="회원가입" />
							</a>
						</div>
					</div>

					<div class="info-area">
						<div class="path">
							<span>
								<a href="/intro">
									<img src="/resources/images/story/storyBrandStory/homeIcon.png"
										alt="홈으로" />
									Home
								</a>
							</span>
							<span>
								<img src="/resources/images/story/storyBrandStory/arrowIcon.png"
									alt="화살표" />
								<strong> 회원가입</strong>
							</span>
						</div>

						<div class="join-area">
							<form action="join" method="post">
								<div>
									<input type="text" name="name" placeholder="이름"
										class="text-box" maxlength="5" />
								</div>
								<div>
									<input type="text" name="phone_number" placeholder="전화번호"
										class="text-box" maxlength="12" />
								</div>
								<div>
									<input type="text" name="user_id" placeholder="아이디"
										class="text-box" maxlength="20" />
								</div>
								<div>
									<input type="password" name="pw" placeholder="비밀번호"
										class="text-box" maxlength="20" />
								</div>
								<div>
									<input type="text" name="address" placeholder="주소"
										class="text-box" />
								</div>
								<div>
									<input type="date" name="birth" class="text-box" />
								</div>
								<button class="join-button">회원가입</button>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
		<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
	</div>

</body>
</html>