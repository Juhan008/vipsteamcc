<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Exception</title>
<link rel='stylesheet' href='/resources/styles/exception.css' />

</head>
<body>
	<div class="root">
		<div class="wrap">
			<div class="errorText">
				<h1 class="text">Error...</h1>
				<div class="textFinish">
					죄송합니다.페이지를 찾을 수 없습니다.
				</div>
				<div class="textFinish">
					존재하지 않는 주소를 입력하셧거나
				</div>
				<div class="textFinish">
					요청하신 페이지의 주소가 변경, 삭제되어 찾을 수 없습니다.
				</div>
				<div class="home">
					<a href="/intro">Home</a>					
				</div>
			</div>
			<div class="errorImage">
				<img src="/resources/images/exception/errorImage.png">
			</div>
		</div>
	</div>
</body>
</html>