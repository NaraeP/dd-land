<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#main h1 {
	font-size: 2rem !important;
	margin-top: 45px !important;
	margin-left: 10px;
}

.d-md-block {
	margin-right: 15px;
}

.pagetitle {
	margin-top: 10px;
}

.breadcrumb {
	margin: 10px 15px 10px 0;
}

.breadcrumb a {
	color: #012970;
}

.breadcrumb a:hover {
	color: #ce1212;
}

.card-body {
	min-height: 600px;
}

.table {
	text-align: center;
}

th {
	background-color: #f2f2f2 !important;
}

.pagination {
	justify-content: center;
	margin-top: 40px;
}

#page-bar {
	margin-top: 50px;
}

.page-link {
	color: #CE1212;
}

.active>.page-link, .page-link.active {
	z-index: 3;
	color: var(- -bs-pagination-active-color);
	background-color: #CE1212;
	border-color: #CE1212;
}
</style>

<main id="main" class="main">

	<div class="pagetitle">
		<h1>DD 월드컵</h1>
	</div>

	<nav class="d-flex justify-content-end">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">추가</a></li>
			<li class="breadcrumb-item"><a href="#">수정</a></li>
			<li class="breadcrumb-item active"><a href="#">삭제</a></li>
		</ol>
	</nav>

	<section class="section">
		<div class="row">
			<div class="col-lg-6">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">어트랙션</h5>

						<table class="table">
							<thead>
								<tr>
									<th>No</th>
									<th>이름</th>
									<th>테스트 채택</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listAttraction}" var="dto">
									<tr>
										<td>${dto.attraction_seq}</td>
										<td>${dto.name}</td>
										<td>
											<div class="d-flex justify-content-center">
												<div class="form-check form-switch">
													<c:choose>
														<c:when test="${dto.is_test eq 'Y'}">
															<input class="form-check-input" type="checkbox"
																id="flexSwitchCheckDefault" checked>
														</c:when>
														<c:otherwise>
															<input class="form-check-input" type="checkbox"
																id="flexSwitchCheckDefault">
														</c:otherwise>
													</c:choose>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>

								<%-- 
								<tr>
									<td>
										<div class="item" data-attraction-id="${dto.attraction_seq}">
											<div
												style="background-image: url('/dd/resources/assets/img/${dto.imgList[0].img}');"></div>
											<div>${dto.name}</div>
											<div class="hidden-div">${dto.info}</div>
										</div>
									</td>
								</tr>
								--%>

							</tbody>
						</table>

						<nav id="page-bar" aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<c:forEach begin="1" end="${map.totalPages}"
									varStatus="pageStatus">
									<c:choose>
										<c:when test="${pageStatus.index == currentPage}">
											<li class="page-item active"><span class="page-link">${pageStatus.index}</span></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="/dd/admin/test/worldcup/view.do?page=${pageStatus.index}">${pageStatus.index}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</ul>
						</nav>

					</div>
				</div>

			</div>

			<div class="col-lg-6">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">코스</h5>

						<table class="table">
							<thead>
								<tr>
									<th>No</th>
									<th>이름</th>
									<th>버튼</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td></td>
									<td>
										<div class="d-flex justify-content-center">
											<div class="form-check form-switch">
												<input class="form-check-input" type="checkbox"
													id="flexSwitchCheckDefault">
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>

						<ul class="pagination pagination-sm">
							<li class="page-item active" aria-current="page"><span
								class="page-link">1</span></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
						</ul>

					</div>
				</div>

			</div>
		</div>
	</section>

</main>

<script>
	$(document).ready(function () {
		// 체크박스에 클릭 이벤트 리스너 추가
		$('.form-check-input').on('change', function () {
			// 체크박스의 값 (Y 또는 N) 가져오기
			var isChecked = $(this).is(':checked') ? 'Y' : 'N';

			// 해당 어트랙션 일련번호 가져오기
			var attractionSeq = $(this).closest('tr').find('td:first-child').text();

			// 데이터베이스 업데이트를 위한 Ajax 요청
			$.ajax({
				type: 'POST',
				url: '/admin/test/worldcup/updateStatus.do',
				data: {
					attractionSeq: attractionSeq,
					isChecked: isChecked,
					${_csrf.parameterName}: '${_csrf.token}' // Include CSRF token
				},
				success: function (response) {
					// 필요한 경우 응답 처리
					console.log(response);
				},
				error: function (error) {
					// 오류 처리
					console.error(error);
				}
			});
		});
	});
</script>
