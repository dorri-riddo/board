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
      <div class="collapse navbar-collapse" id="navbarResponsive">
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <h2 class="my-4"> 게시판  </h2>
        <div>
        <a href="/update/${detail.bno }" class="btn btn-primary">수정</a>
        <a href="/delete/${detail.bno }" class="btn btn-primary">삭제</a>
        <a href="/list" class="btn btn-primary">목록으로 이동</a>
	     
	     <div class="card mb-4">
	          <div class="card-body">
	          	<label> 제목 </label>
	          	<div> ${detail.title} </div>
	          </div>
	          <div class="card-body">
	          	<label>작성 시간 </label>
	          	<div> ${detail.reg_date}</div>
	         </div>
	          <div class="card-body">
	          	<label> 작성자 </label>
	          	<div>${detail.writer} </div>
	          </div>	          
	          <div class="card-body">
	          	<label> 내용 </label>
	          	<div>${detail.content} </div>
	          </div>
	          <input type="hidden" value="${detail.bno }" name="bno" />
	        </div>
	     </div>
      </div>
    </div>

    <!-- /.row -->
  <!-- /.container -->

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

</html>
