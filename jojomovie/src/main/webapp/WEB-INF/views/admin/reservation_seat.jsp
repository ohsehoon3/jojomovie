<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="javatime" uri="http://sargue.net/jsptags/time"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 user-scalable=no">
<title>조조무비 - 예매</title>
<style>
.background {
	margin-top: 20px;
	background-color: #2D2D2D;
	padding: 10px 13%;
}

.white {
	color: white;
}

.tit {
	padding: 20px 0 20px 0;
	background-color: #555555;
	border: 1px, solid, #E2E2E2;
	font-size: 22px;
	font-weight: bold;
	color: white;
}

.res-seat {
	background-color: #FFFFFF;
	color: #000000;
}
</style>
</head>
<body>
	<%-- top 영역  --%>
	<jsp:include page="/WEB-INF/views/include/top.jsp" />

	<div class="container">
		<div class="row">
			<div class="col-md-12 tit" align="center">
				좌석 선택<br>
				<div align="center" class="col-md-12 res-seat">
					<div>screen</div>
					<div id="seatDiv" align="center"></div>
				</div>
			</div>
		</div>
		<br>
		<div style="margin-top: 50px;" align="right">
			<button
				style="width: 100px; height: 100px; background-color: #555555; border: 3px solid; border-radius: 10px;"
				class="glyphicon glyphicon-hand-up white" type="button"
				data-toggle="modal" data-target="#reservationModal">
				<br>
				<br>예매하기
			</button>
		</div>
	</div>

	<!-- 	<div class="background"> -->

	<!-- 	</div> -->
	<!--모달 영역 (결제)  -->
<form action="/reservation/doreserve" name ="test1" method="get">
	<div class="modal fade" id="reservationModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="background-color: black;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title text-center" id="myModalLabel" style="color: white;">예매 확인</h4>
				</div>
				
				<div class="modal-body">
					<div class="row">
						<div class="col-sm-5"></div>
						<div class="col-sm-5">조조무비</div>
						<div class="col-sm-6"></div>
					</div>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">영화명</div>
						<div class="col-sm-6"><input type="text" name="movieName" value="다만 악에서 구하오소서" style="border: none;"></div>
					</div>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">지점</div>
						<div class="col-sm-6"><input type="text"  name="theaterName" value="사상점" style="border: none;"></div>
					</div>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">상영관</div>
						<div class="col-sm-6"><input type="text" name="sygId" value="2관" style="border: none;"></div>
					</div>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">상영일</div>
						<div class="col-sm-6">상영일 어디에 낑구지</div>
					</div>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">상영시간</div>
						<div class="col-sm-6">스타트 데이터 ~ 앤드 데이터</div>
					</div>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">에약자 수</div>
						<div class="col-sm-5"><input type="number" name="userSeat" value="1" style="border: none;"></div>
					</div>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">좌석</div>
						<div class="col-sm-6"><input type="text"  name="seat" value="F10" style="border: none;"></div>
					</div>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-3">결제 금액</div>
					</div>
					<div class="row">
						<div class="col-sm-5"></div>
						<div class="col-sm-3"><input type="text" name="howmany" value="12000" style="border: none;"></div>
					</div>
					<div class="row">
						<div class="col-sm-4">사용포인트</div>
						<div class="col-sm-1">-</div>
						<div class="col-sm-3"><input type="text"  name="usepoint" value="1000" style="border: none;"></div>
					</div>
					<div class="row">
						<div class="col-sm-4">총 금액</div>
						<div class="col-sm-1">=</div>
						<div class="col-sm-3"><input type="text"  name="totalPrice" value="11000" style="border: none;"></div>
					</div>
				</div>
				<div class="modal-footer">
					<input type="hidden" name="movieId" value="1">
					<input type="hidden" name="userId" value="testUser">
					<input type="hidden" name="tf" value="t">
					<input type="hidden" name="payId" value="TESTPAYID">
					
					<button type="button" class="btn btn-primary" onclick="test()">결제하기</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			
			</div>
		</div>
	</div>
</form>











	<%-- footer 영역  --%>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<script>
		function test(){

			test1.submit();

		}


	
	</script>

</body>
</html>
