<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10~30% 할인 | 제휴/할인카드 - VIPS</title>
<link rel='stylesheet' href='/resources/styles/commonEx.css' />
<link rel='stylesheet' href='/resources/styles/becard.css' />
</head>
<body>
	<div id="root">
		<div class="background-area">
			<div class="wrapall">
				<!-- 이 사이에 내용을 적으면 추가 됩니다. -->
				<div class="header"><jsp:include
						page="../vipsCloneCoding/template/templateHeaderFirst.jsp"></jsp:include>
				</div>
				<div id="container" class="clfix">
					<div id="lnb">
						<h3>
							<img src="/resources/images/benefit/beCard/BENEFIT.gif"
								alt="BENEFIT">
						</h3>
						<ul style="min-height: 1000px;">
							<li class="active"><a href="beCard"><img
									src="/resources/images/benefit/beCard/affiliatediscountcard.gif"
									alt="제휴할인"></a></li>
							<li class="active"><a href="beGiftCard"><img
									src="/resources/images/benefit/beCard/beGiftCard.gif" alt="상품권"></a></li>
							<li class="active"><a href="giftCard"><img
									src="/resources/images/benefit/beCard/GiftCard.gif" alt="기프트카드"></a></li>
						</ul>
					</div>
					<div id="content-wrap" class="clfix">
						<div class="path">
							<a href="#" class="home">Home</a><a href="#">BENEFIT</a><strong>제휴/할인
								카드</strong>
						</div>
						<div class="visual-sub benefit-visual">
							<h4>
								<img src="/resources/images/benefit/beCard/discountcard_top.png"
									alt="제휴할인카드">
							</h4>
							<p>
								<img src="/resources/images/benefit/beCard/beCard_top_text.png">
							</p>
						</div>
						<div id="content">
							<ul class="discount-tab clfix" style="height: 1300px">

								<h5>
									<img src="/resources/images/benefit/beCard/tab_beCard1_on.gif"
										alt="10~30% 할인">
								</h5>
								</a>
								<div class="contents-box">

									<form method="POST" action="/addCard"
										enctype="multipart/form-data">
										<div>
											<label for="image">Image:</label> <input type="file"
												id="image" name="image" accept="image/*" required>
										</div>
										<div>
											<label for="image_name">Image Name:</label> <input
												type="text" id="image_name" name="image_name" required>
										</div>
										<div>
											<label for="description1">Description 1:</label> <input
												type="text" id="description1" name="description1">
										</div>
										<div>
											<label for="description2">Description 2:</label> <input
												type="text" id="description2" name="description2">
										</div>
										<div>
											<label for="description3">Description 3:</label> <input
												type="text" id="description3" name="description3">
										</div>
										<div>
											<label for="description4">Description 4:</label> <input
												type="text" id="description4" name="description4">
										</div>
										<div>
											<label for="description5">Description 5:</label> <input
												type="text" id="description5" name="description5">
										</div>
										<div>
											<label for="description6">Description 6:</label> <input
												type="text" id="description6" name="description6">
										</div>
										<div>
											<button type="submit">Upload Image</button>
										</div>
									</form>
								</div>
							</ul>
						</div>
					</div>
				</div>

				<div class="footer"><jsp:include
						page="../vipsCloneCoding/template/templateFooterFirst.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
</body>
</html>