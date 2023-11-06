<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel='stylesheet' href='/resources/styles/adminPage.css' />
</head>
<body>
	<div class="root">
		<div class="background-Area">
			<div class="header">
				관리자 권한 설정
			</div>
				<div class="content01">
					<div class="content01-header">관리자 목록</div>
					<div class="adminAdd">추가</div>
					<div class="adminRemove">제거</div>
					<hr class="line01">
					<div class="adminList">
						<ul class="firstAdmin">총괄 관리자(?)</ul>
						<ul class="secondAdmin">상위 관리자(?)</ul>
						<ul class="thirdAdmin">일반 관리자(?)</ul>
					</div>
				</div>
				<div class="content02">
					<div class="content02-header">총괄 관리자(모든 권한)</div>
					<div class="searchImage">
						<img src="/resources/images/templet_admin/search.png">
					</div>
					<form action="">
						<div class="search">						
							<input type="text" name="search" value="">
							<button type="submit">검색</button>
						</div>
					</form>
					<hr class="line02">
					<div class="results">
						<table class="searchResults">
							<colgroup>
								<col style="width:20%">
								<col style="width:20%">
								<col style="width:20%">
								<col style="width:40%">
							</colgroup>
							<thead>
								<tr>
									<th>등급</th>
									<th>지역</th>
									<th>이름</th>
									<th>아이디</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>일반 관리자</td>
									<td>서울특별시 강남구</td>
									<td>홍길동</td>
									<td>abc1234@gmail.com</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			
		</div>
	</div>
</body>
</html>