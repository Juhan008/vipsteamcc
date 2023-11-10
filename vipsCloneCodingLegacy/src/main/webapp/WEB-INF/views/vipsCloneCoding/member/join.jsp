<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src='/resources/scripts/join.js'></script>
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
							<a href="./join"> <img
									src="/resources/images/member/join/sideJoinButton.jpg"
									alt="회원가입" />
							</a>
						</div>
					</div>

					<div class="info-area">
						<div class="path">
							<span>
								<a href="/intro"> <img
										src="/resources/images/story/storyBrandStory/homeIcon.png"
										alt="홈으로" /> Home
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
										class="text-box" maxlength="5" minlength="1" />
								</div>
								<div>
									<input type="text" onkeyup="onlyNumber(event)" name="phone_number" placeholder="전화번호"
										class="text-box" maxlength="12" minlength="10" />
								</div>
								<div class="id-check-area">
									<input type="text" id="user_id" name="user_id"
										placeholder="아이디" class="text-box-id" maxlength="20"
										minlength="5" />
									<div onclick="chechRepeat()" class="check-area">중복체크</div>
								</div>
								<div>
									<input type="password" name="pw" placeholder="비밀번호"
										class="text-box" maxlength="20" minlength="5" />
								</div>

								<div class="address-area">
									<div class="search-address" onclick="searchAddress()">
										<input type="text" id="postal-code" name="postal-code"
											placeholder="우편번호" class="search-address-text-box"
											readonly="readonly" />
										<div class="search-address-button">우편번호 찾기</div>
									</div>
									<input type="text" id="road-address" name="road-address"
										placeholder="도로명주소" class="address-text-box"
										readonly="readonly" />
									<input type="text" name="detail-address" placeholder="상세주소"
										class="address-text-box" />
									<script
										src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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