<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 user-scalable=no">
<title>조조무비</title>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/bootstrap-theme.css" rel="stylesheet">
<link href="/css/admin.css" rel="stylesheet">

</head>

<body>
	<!--관리자 페이지 제목  -->
	<div class="container" style="background-color:#1e272e">
		<h1 style="color: white;">관리자 페이지</h1>
		<ul class="nav navbar-nav">
	      <li class="active"><a href="#"><span class="glyphicon glyphicon-plus"> 관리자 추가하기</span></a></li>
	      <li><a href="#"><span class="glyphicon glyphicon-log-out"> 관리자 모드 나가기</span></a></li>
	    </ul>
	</div>
	
	
	<div class="container" style="padding: 0px;">
		<div class="jumbotron text-center" style="background-color:#485460;">
			<h1>정말로 삭제하시겠습니까</h1>
			<h4><strong>비밀번호를 입력해주세요</strong></h4>
			<input type="text" value="비밀번호">
			<button>삭제하기</button>
			<button>돌아가기</button>
		</div>
	</div>
	





	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script type="text/javascript" src="/script/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="/script/bootstrap.js"></script>
	<script type="text/javascript"></script>
</body>
</html>