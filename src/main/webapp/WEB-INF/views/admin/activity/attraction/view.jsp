<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  	.col-12 {
    	margin-top: 15px;
  	}
  	.col-lg-8 {
    	width: 100%;
  	}
  	.card-body {
    	min-height: 600px;
  	}
  	div.header {
    	height: 60px;
    	border-radius: 5px;
  	}
  	#search {
    	margin-bottom: 15px;
    	padding: 7px;
  	}
  	.search-form {
    	width: 100%;
    	margin: 0;
  	}
  	.header .search-form input {
    	border: 0;
   		height: 50px;
  	}
  	.header .search-form input:focus, .header .search-form input:hover {
    	outline: none;
    	border: none;
    	box-shadow: none;
    	transition: none;
  	}
  	.card-body .header {
    	display: flex;
    	align-items: center;
    	justify-content: space-between;
  	}
  	.breadcrumb {
    	margin-right: 15px;
    	margin-top: 30px;
   	 	margin-bottom: 10px;
  	}
  	.breadcrumb a {
    	color: #012970;
  	}
  	.breadcrumb a:hover {
      	color: #ce1212;
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
  	
  	/* 목록 커서 CSS */
  	table td:nth-child(3) a {
		cursor: pointer;
	}
  	table td:nth-child(5) i {
		cursor: pointer;
	}
  	table td:nth-child(6) i {
		cursor: pointer;
	}
</style>

<!-- ======= Main ======= -->
<main id="main" class="main">

    <div class="pagetitle">
		<h1>어트랙션 관리</h1>
    </div>

	<section class="section">
		<div class="row">
			<div class="col-lg-8">
				<div class="row">
					<div class="col-12">

              			<div id="search" class="header">
                  			<form class="search-form d-flex align-items-center" method="POST" action="#">
                    			<input type="text" name="query" placeholder="Search" title="Enter search keyword">
                    			<button type="submit" title="Search"><i class="bi bi-search"></i></button>
                    			
                    			<!-- 토큰 -->
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                  			</form>
              			</div>

						<div class="card">
                			<div class="card-body">

                  				<nav class="d-flex justify-content-end">
                    				<ol class="breadcrumb">
                      					<li class="breadcrumb-item"><a href="/dd/admin/activity/attraction/add.do">추가</a></li>
                      					<li class="breadcrumb-item"><a href="javascript:void(0);" onclick="edit()">수정</a></li>
                      					<li class="breadcrumb-item active"><a href="javascript:void(0);" onclick="del()">삭제</a></li>
                    				</ol>
								</nav>
                  
                  				<form id="del-form" method="POST" action="/dd/admin/activity/attraction/del.do">
	                  				<table class="table">
	                    				<thead>
	                      					<tr>
	                        					<th></th>
	                        					<th>No</th>
	                        					<th>이름</th>
	                        					<th>수용인원</th>
	                        					<th>이미지</th>
	                        					<th>위치</th>
	                      					</tr>
	                    				</thead>
	                    				<tbody>
	                    					<c:forEach items="${list}" var="dto" varStatus="status">
		                      					<tr>
		                        					<td><input type="checkbox" name="attraction_seq" value="${dto.attraction_seq}"></td>
		                        					<td>${map.totalPosts - status.index - map.startIndex + 1}</td>
		                        					<td><a><c:out value="${dto.name}" /></a></td>
		                        					<td>${dto.capacity}</td>
		                        					<c:if test="${dto.img == 'attraction.png'}">
		                        						<td></td>
		                        					</c:if>
		                        					<c:if test="${dto.img != 'attraction.png'}">
		                        						<td><i class="bi bi-image"></i></td>
		                        					</c:if>
		                        					<td><i class="bi bi-geo-alt"></i></td>
		                      					</tr>
	                      					</c:forEach>
	                   					</tbody>
	                  					</table>
	                  					
	                  					<!-- 토큰 -->
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                  					</form>

<!-- 페이징 -->
	<nav id="page-bar" aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<c:forEach begin="1" end="${map.totalPages}" varStatus="pageStatus">
				<c:choose>
					<c:when test="${pageStatus.index == currentPage}">
						<li class="page-item active"><span class="page-link">${pageStatus.index}</span></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link"
							href="/dd/admin/activity/attraction/view.do?page=${pageStatus.index}">${pageStatus.index}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</ul>
	</nav>


                  					<!-- <ul class="pagination pagination-sm">
					                    <li class="page-item active" aria-current="page">
					                    	<span class="page-link">1</span>
					                    </li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">4</a></li>
										<li class="page-item"><a class="page-link" href="#">5</a></li>
                  					</ul> -->
                				</div>

              				</div>
            			</div>

 					</div>
				</div>

			</div>
	</section>

</main>

<!-- attraction > view JavaScript -->
<script>

	/* 수정 시, 체크 박스 1개만 선택 하여 seq 전달 하기 */
	function edit() {
		
		/* 선택된 체크박수 개수 확인 */
		let checkedCount = $('input[type="checkbox"]:checked').length;
		
		/* 1개 이상? out! */
		if (checkedCount > 1 || checkedCount < 1) {
			alert('1개의 어트랙션을 선택 후, 수정 버튼을 눌러주세요.');
		} else {

			const seq = $('input[type="checkbox"]:checked').val();
			
			location.href='/dd/admin/activity/attraction/edit.do?seq=' + seq;
						
		}
		
	}//function
	
	/* 삭제 시, 체크 박스 1개 이상 선택 하여 seq 전달하기 */
	/* 1. 체크박스 1개 2. 체크박스 1개 이상 */
	function del() {
		
		/* 선택된 체크박수 개수 확인 */
		let checkedCount = $('input[type="checkbox"]:checked').length;
		
		if (checkedCount == 0) {
			alert('1개 이상의 어트랙션을 선택 후, 삭제 버튼을 눌러주세요.');
		} else {
			
			if (confirm('선택한 어트랙션을 삭제하시겠습니까?')) {
				
				$('#del-form').submit();

			}
			
			
			
		} 
		
	}//function


</script>