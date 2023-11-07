<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<div class="header">관리자 권한 설정</div>
			<div class="content01">
				<div class="content01-header">관리자 목록</div>
				<form action="/admin/deleteAdmin">
					<button class="adminRemove">제거</button>
					<hr class="line01">
					<div class="adminList">
						<div class="secondAdmin">
							상위 관리자

							<c:forEach var="subAd" items="${subAdmin}">
								<li><input type="checkBox" name="adminChoice"
										value="${subAd.getId() }"> <label> <c:out
											value="${subAd.getName() }" /> <c:out
											value="${subAd.getLotation() }" />
								</label></li>
							</c:forEach>

						</div>
						<div>
							일반 관리자
							<c:forEach var="lowAd" items="${lowAdmin}">
								<li><input type="checkBox" name="adminChoice"
										value="${lowAd.getId() }"> <label> <c:out
											value="${lowAd.getName() }" /> <c:out
											value="${lowAd.getLotation() }" />
								</label></li>
							</c:forEach>
						</div>
					</div>
				</form>
			</div>
			<div class="content02">
				<div class="content02-header">검색페이지</div>
				<div class="searchImage">
					<img src="/resources/images/templet_admin/search.png">
				</div>
				<form action="/admin/addAdmin">
					<div class="search">
						<input type="text" name="user_id">
						<button type="submit">검색</button>
					</div>
				</form>
				<hr class="line02">
				<div class="results">
					<form action="/admin/adminAdd" method="post">
						<button class="adminAdd">추가/변경</button>
						<input type="radio" name="member" value="sub_admin">상위 관리자
						<input type="radio" name="member" value="low_admin">하위 관리자
						<input type="hidden" name="id" value="${searchResult.getId()}">
						<table class="searchResults">
							<thead>
								<tr>
									<th>이름</th>
									<th>아이디</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${searchResult.getName()}</td>
									<td>${searchResult.getUserId()}</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>