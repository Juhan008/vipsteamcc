<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 추가</title>
<link rel='stylesheet' href='/resources/styles/adminAdd.css' />
</head>
<body>
	<div class="root">
		<div class="background-Area">
			<div class="header">관리자 추가</div>
			<div class="searchImage">
				<img src="/resources/images/templet_admin/search.png">
			</div>
			<form action="">
				<div class="search">						
					<input type="text" name="search" value="">
					<button type="submit">검색</button>
				</div>
			</form>
			<hr class="line01">
			<div class="">
				<table>
					<colgroup>
						<col style="width:40%">
						<col style="width:60%">
					</colgroup>
					<thead>
						<tr>
							<th>이름</th>
							<th>아이디</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>홍길동</td>
							<td>abc1234@gmail.com</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>