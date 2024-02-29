<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Board List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<style>
.pc td {
	height: 100px;
	padding-top: 24px;
}
</style>
<body>
	<!-- 
		피시방 사장이 되어, 손님을 받는다.
		1) 손님이 이용할 PC를 선택하고 이름, 이용시간을 설정 후 등록을 진행한다.
			> 이때, 이용 시간으로 설정되어 있는 시간만큼 타이머가 해당 PC자리에 설정된다.
		2) 이용중인 PC를 종료 버튼을 클릭 하면 타이머가 설정되어 있는 PC가 종료되고
			아래 매출현황에 이용시간 만큼의 매출이 기록된다.
		
		*** 손님을 받을 때마다 PC 이용 현황판은 이용 시간만큼 타이머가 동시에 동작해야한다.
	 -->
	<div class="container">
		<h3 class="mt-3">피시방 카운터</h3>
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header"></div>
					<div class="card-body">
						<table class="table table-bordered">
							<tr>
								<td width="30%">PC번호</td>
								<td>PC-2</td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input type="text" class="form-control" /></td>
							</tr>
							<tr>
								<td>시간</td>
								<td><input type="text" class="form-control" /></td>
							</tr>
						</table>
					</div>
					<div class="card-footer">
						<button type="button" class="btn btn-primary">등록</button>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<table class="table table-bordered pc">
					<tr align="center">
						<td>PC-1<br />59:20<br />
						<button type="button" class="btn btn-sm btn-danger">종료</button></td>
						<td>PC-2<br /></td>
						<td>PC-3<br />22:20
						</td>
						<td>PC-4<br /></td>
						<td>PC-5<br />24:20
						</td>
						<td>PC-6<br />12:20
						</td>
						<td>PC-7<br />9:20
						</td>
						<td>PC-8<br /></td>
					</tr>
					<tr align="center">
						<td>PC-9<br />11:20
						</td>
						<td>PC-10<br /></td>
						<td>PC-11<br />67:20
						</td>
						<td>PC-12<br /></td>
						<td>PC-13<br />112:20
						</td>
						<td>PC-14<br />24:20
						</td>
						<td>PC-15<br />54:20
						</td>
						<td>PC-16<br /></td>
					</tr>
					<tr align="center">
						<td>PC-17<br /></td>
						<td>PC-18<br /></td>
						<td>PC-19<br /></td>
						<td>PC-20<br /></td>
						<td>PC-21<br />59:20
						</td>
						<td>PC-22<br />25:20
						</td>
						<td>PC-23<br />59:20
						</td>
						<td>PC-24<br /></td>
					</tr>
					<tr align="center">
						<td>PC-25<br /></td>
						<td>PC-26<br /></td>
						<td>PC-27<br /></td>
						<td>PC-28<br /></td>
						<td>PC-29<br />59:20
						</td>
						<td>PC-30<br />59:20
						</td>
						<td>PC-31<br />59:20
						</td>
						<td>PC-32<br /></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header">이용 안내</div>
					<div class="card-body">
						<ul>
							<li>1시간 이용 시 1,000원 입니다.</li>
							<li>이용 후, 의자를 꼭 넣어주세요.</li>
							<li>화장실은 입구 오른쪽 끝입니다.</li>
							<li>각 흡연실, 비흡연실 구역이 나뉘어져있습니다.</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">매출 현황</div>
					<div class="card-body">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>번호</th>
									<th>PC 번호</th>
									<th>이용 시간</th>
									<th>금액</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>PC-21</td>
									<td>2시간 30분</td>
									<td>2,500원</td>
								</tr>
								<tr>
									<td>2</td>
									<td>PC-9</td>
									<td>3시간 30분</td>
									<td>3,500원</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="card-footer">
						<h5>총 매출 : 45,980,500원</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>