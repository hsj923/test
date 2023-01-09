<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Spring Framework</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" 
		integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" 
		crossorigin="anonymous">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>	
</head>
<body>
	<div class="container" align="center">
		<div class="mt-4 p-5 bg-primary text-white rounded">
			<h3>게시판등록</h3>
			<p>상세설명.................</p>
		</div>
	</div>
	
	<div class="container mt-5 justify-content-center">
		<form action="insertBoard.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="writer" value="${sessionScope.user.getId()}"> 
			<div class="modal-content">				
				<div class="modal-header bg-primary text-white">
					<h1 class="motal-title fs-5" id="staticBackdropLabel">게시판등록하기</h1>
				</div> <!-- modal-header -->
				
				<div class="modal-body">
					<div class="input-group mb-3">
						<div class="input-group-text"><i class="fas fa-pen"></i></div>
						<input type="text" name="title" class="form-control" id="title" required placeholder="board title....">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-text"><i class="fas fa-user"></i></div>
						<input type="text" name="writer" class="form-control" id="writer" value="${sessionScope.user.getId()}" disabled placeholder="board writer...">
					</div>
					
					<div class="input-group mb-3">
					  <span class="input-group-text"><i class="fas fa-clipboard"></i></span>
					  <textarea class="form-control"  name="content" rows="15" placeholder="글 상세내용...."></textarea>
					</div>
					
					
					<div class="input-group mb-3">
					  <label class="input-group-text" for="uploadFile"><i class="fas fa-file"></i></label>
					  <input type="file" class="form-control" name="uploadFile" id="uploadFile" aria-describedby="uploadFile" aria-label="Upload">
					</div>
				</div> 
					
				<div class="modal-footer">
					<input type="hidden" name="fileName" value=""/>		
				    <input type="submit" class="btn btn-primary" value=" 새글등록 " />
				    <button type="button" class="btn btn-primary" onclick="history.go(-1)">글목록가기</button>					
				</div> 
			</div> 
		</form>	
	</div>
		
</body>
</html>		