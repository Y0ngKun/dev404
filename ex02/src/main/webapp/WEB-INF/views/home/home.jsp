<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<!-- RWD -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9" />

</head>
<body>

<%@ include file="../include/header.jsp"%>


<div class="container mt-4" id="mainContent">
	<div class="row">
		<div class="col-md-4">
			<h2>About Me</h2>
			<h5>Photo of me:</h5>
			<div class="fakeimg">
				<img src="../images/strawberry.png"
					style="width: 100%; height: 100%">
			</div>
			<p>Some text about me in culpa qui officia deserunt mollit
				anim..</p>
			<h3>Some Links</h3>
			<h4 class="wordArtEffect text-success pl-4">메뉴</h4>
			<ul class="nav nav-pills flex-column">
				<li class="nav-item"><a class="nav-link active" href="#">Menu
						1</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Menu 2</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Menu 3</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Menu 4</a></li>
			</ul>
		</div>
		<div class="col-md-8">

			<div class="container mt-3 mb-5 p-0 m-0 mx-auto">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<!-- Indicators -->
					<ul class="carousel-indicators ">
						<li data-target="#myCarousel" data-slide-to="0"
							class="active bg-danger"></li>
						<li data-target="#myCarousel" data-slide-to="1"
							class=" bg-danger"></li>
						<li data-target="#myCarousel" data-slide-to="2"
							class=" bg-danger"></li>
						<li data-target="#myCarousel" data-slide-to="3"
							class=" bg-danger"></li>
					</ul>

					<!-- The slideshow -->
					<div class="carousel-inner ">
						<div class="carousel-item active">
							<img src="../images/p1.jpg" alt="Los Angeles" class="d-block mx-auto">
							<div class="carousel-caption">
								<h3>programming language</h3>
								<p>Learn Java Course</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="../images/p2.jpg" alt="Chicago" class="d-block mx-auto ">
							<div class="carousel-caption">
								<h3>programming language</h3>
								<p>Learn Angular JS Course</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="../images/p3.jpg" alt="New York" class="d-block mx-auto ">
							<div class="carousel-caption">
								<h3>programming language</h3>
								<p>Learn Jquery Course</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="../images/p4.jpg" alt="New York" class="d-block mx-auto ">
							<div class="carousel-caption">
								<h3>programming language</h3>
								<p>Learn Oracle Course</p>
							</div>
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="carousel-control-prev bg-primary" href="#myCarousel"
						data-slide="prev"> <span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next bg-primary" href="#myCarousel"
						data-slide="next"> <span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>


			<h2>TITLE HEADING</h2>
			<h5>Title description, Dec 7, 2017</h5>
			<div class="fakeimg">
				<img src="../images/beach.png" class="w-100 h-100" />
			</div>
			<p>Some text..</p>
			<p>Some text.. Some text.. Some text..</p>
			<br />
			<h2>TITLE HEADING</h2>
			<h5>Title description, Dec 7, 2017</h5>
			<div class="fakeimg">
				<img src="../images/Desert.png" class="w-100 h-100" />
			</div>
			<p>Some text..</p>
			<p>Some text.. Some text.. Some text..</p>
			<br />
		</div>
		<!-- md-8 -->
	</div>
	<!-- row -->
</div>
<!-- main -->

<%@ include file="../include/footer.jsp"%>

<div id="homeModal" class="modal fade">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">
				<div class="avatar">
					<img src="../images/avatar.png" alt="Avatar">
				</div>
				<h4 class="modal-title">Member Login</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<form action="#" method="post">
					<div class="form-group">
						<input type="text" class="form-control" name="username"
							placeholder="Username" required="required">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="password"
							placeholder="Password" required="required">
					</div>
					<div class="form-group">
						<button type="submit"
							class="btn btn-primary btn-lg btn-block login-btn">Login</button>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<a href="#">Forgot Password?</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>