<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image List and Deletion</title>
<style>
.image-list {
	width: 100%;
	border-collapse: collapse;
}

.image-list th, .image-list td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

.image-list tr:nth-child(even) {
	background-color: #f2f2f2;
}

.image-list tr:hover {
	background-color: #ddd;
}
</style>
</head>
<body>
	<h2>Uploaded Images</h2>
	<table class="image-list">
		<tr>
			<th>Image Name</th>
			<th>Description</th>
			<th>Actions</th>
		</tr>

		<tr>
			<td>Image 1</td>
			<td>Description for Image 1</td>
			<td>
				<button onclick="location.href='/delete/1'">Delete</button>
			</td>
		</tr>
		<!-- 이미지 목록이 계속됩니다... -->
	</table>

	<script>
		// 실제 애플리케이션에서는 삭제 요청 전에 사용자에게 확인을 요청하는 것이 좋습니다.
		function deleteImage(imageId) {
			if (confirm("Are you sure you want to delete this image?")) {
				// 서버에 삭제 요청을 보내는 코드 구현
				location.href = '/delete/' + imageId;
			}
		}
	</script>
</body>
</html>