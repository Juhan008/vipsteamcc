<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel='stylesheet' href='/resources/styles/member/login.css' />
</head>
<body>
	<div id="root">
		<div class="background-shadow">
			<jsp:include page="../template/templateHeaderFirst.jsp"></jsp:include>
			<div class="padding-box">
				<div class="wrap">
					<div class="side-menu-area">
						<img src="/resources/images/member/login/sideLogin.gif" alt="로그인" />

						<div class="side-button-area">
							<a href="./login">
								<img src="/resources/images/member/login/sideLoginButton.gif"
									alt="로그인" />
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
								<strong> 로그인</strong>
							</span>
						</div>


						<div class="info-top-area">
							<div class="login-banner">
								<img src="/resources/images/member/login/loginBanner.png"
									alt="로그인" />
							</div>
							<div class="login-img">
								<img src="/resources/images/member/login/loginImg.png" alt="로그인" />
							</div>
							<div class="login-text">
								<img src="/resources/images/member/login/loginText.png"
									alt="로그인" />
							</div>

						</div>

						<div class="login-area">
							<form action="login" method="post" class="login-box">
								<div>
									<div class="id-area">
										아이디
										<input type="text" name="user_id" class="user-id" />
									</div>
									<div class="pw-area">
										비밀번호
										<input type="password" name="pw" class="pw"/>
									</div>
								</div>
								<div class="login-button-area">
									<button class="login-button">로그인</button>
								</div>
							</form>
						</div>
						<div>
							<a href="join">회원가입</a>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../template/templateFooterFirst.jsp"></jsp:include>
		</div>
	</div>


</body>
</html>