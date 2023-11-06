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
									이름
									<input type="text" name="name" />
								</div>
								<div>
									전화번호
									<input type="text" name="phone_number" />
								</div>
								<div>
									아이디
									<input type="text" name="user_id" />
								</div>
								<div>
									비밀번호
									<input type="password" name="pw" />
								</div>
								<div>
									주소
									<input type="text" name="address" />
								</div>
								<div>
									생년월일
									<input type="text" name="birth" />
								</div>
								<button>회원가입</button>
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