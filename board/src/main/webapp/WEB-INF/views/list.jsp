<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Blog Home - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/blog-home.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Start Bootstrap</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <h1 class="my-4"> 게시판  </h1>
        <div class="card mb-4">
			<a href="/write" class="btn btn-primary"> 글쓰기  </a>
     	</div>

        <!-- Blog Post -->
        <c:forEach var="item" items="${list }">
	        <div class="card mb-4">
	          <div class="card-body">
	            <h2 class="card-title">${item.title } </h2>	  
				<small> 작성자 : ${item.writer }</small>
				<br />         
	            <a href="/detail/${item.bno }" class="btn btn-primary" style="float:right">더 읽기 &rarr;</a>
	          </div>
	          <div class="card-footer text-muted">
	            ${item.reg_date }
	          </div>
	        </div>
	     </c:forEach>

        <!-- Pagination -->
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		  <c:if test="${pagination.prev}">
			    <li class="page-item">     
			      <a class="page-link" href="#" aria-label="Previous" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">
			        <span aria-hidden="true">&laquo;</span>
			        <span class="sr-only">Previous</span>
			      </a>
			    </li>
		    </c:if>
		    
		    <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
		   	 	<li class="page-item <c:out value="${pagination.page == idx ? 'active' : '' }" />">    	 	
		   	 		<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx }</a>
		   	 	</li>
		    </c:forEach>
		    
		    <c:if test="${pagination.next}">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">
		        <span aria-hidden="true">&raquo;</span>
		        <span class="sr-only">Next</span>
		      </a>
		    </li>
		    </c:if>
		  </ul>
		</nav>

      </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
  </div>
  


  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

<script type="text/javascript">
//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		
		var url = "/list";
		url = url + "?page=" + page;
		url = url + "&range=" + range;		

		location.href = url;
	}

  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize) {
		var url = "/list";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}

	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;		

		var url = "/list";
		url = url + "?page=" + page;
		url = url + "&range=" + range;		

		location.href = url;
	}

</script>

</html>
