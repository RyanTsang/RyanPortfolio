<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ryan's Portfolio</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/main.css">
<link rel="icon" href="${pageContext.request.contextPath }/images/icon/icon.jpg">
</head>
<body data-spy="scroll" data-target="#navbar-side" data-offset="0">
	<%@include file="common/nav.jsp"%>
	<div class="container">
		<div class="row align-items-center myPage" id="welcomePage">
			<div class="col">
				<div class="row justify-content-center">
					<div class="col-lg-10 col-sm-12">
						<img id="background" class="lateLoad500" src="${pageContext.request.contextPath }/images/bg.png"
							alt="Ryan">
					</div>
				</div>
				<div
					class="row justify-content-around welcomeWords text-center lateLoad1500">
					<div class="col-6">
						<p>Thanks for your visit.</p>
					</div>
					<div class="col-6">
						<p>
							You are the No. <strong id="numOfVisitor"></strong> visitor.
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="row align-items-center myPage" id="aboutMePage">
			<div class="col">
				<div class="row justify-content-center">
					<div class="card text-center text-white bg-dark col-12">
						<div class="card-header">
							<p>About me</p>
						</div>
						<div class="card-body">
							<p class="card-text text-justify">Firstly, I have one-year
								experience in Accenture China Delivery Center as a Software
								Engineer Analyst. I contributed to the development of products
								through the software lifecycle, including providing customizable
								solutions, requirements definition, technical design, successful
								deployment, processing UT, SIT and UAT, system maintaining and
								more.</p>
							<p class="card-text text-justify">Furthermore, I have
								recently completed (all required work for) my diploma of
								software development at TAFE. Those courses included Java, C#,
								ASP.NET, LUA and project management skills.</p>
							<p class="card-text text-justify">
								Last but not least, my self-learning has provided me with a
								variety of software development practical skills as well.
								Primarily in Java stack. For example, this website is made by
								Spring, SpringMVC and MyBatis. For more information about my
								skills, please go to <a
									href="${pageContext.request.contextPath }/projectsdemonstration.html">Project
									Demonstration Page</a>.
							</p>
							<a href="#" class="btn btn-secondary" data-toggle="modal"
								data-target="#myModal">My Pictures</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row align-items-center myPage" id="skillsPage">
			<div class="col">
				<div class="row text-center text-white">
					<div class="col">
						<p style="font-size: 5vw">Skills</p>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col">
						<div
							class="card-deck text-white text-center row justify-content-center">
							<div class="card col-4 col-md-3 bg-dark p-2">
								<div class="circle"></div>
								<div class="skillName">Java</div>
								<div class="card-body">
									<p class="card-text">
										CAP: 7/10<br /> <small>Confident</small>
									</p>
								</div>
							</div>
							<div class="card col-4 col-md-3 bg-dark p-2">
								<div class="circle"></div>
								<div class="skillName">JavaScript</div>
								<div class="card-body">
									<p class="card-text">
										CAP: 5/10<br /> <small>Functional</small>
									</p>
								</div>
							</div>
							<div class="card col-4 col-md-3 bg-dark p-2">
								<div class="circle"></div>
								<div class="skillName">Bootstrap</div>
								<div class="card-body">
									<p class="card-text">
										CAP: 5/10<br /> <small>Functional</small>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav id="navbar-side"
		class="navbar navbar-light bg-light flex-column d-none d-lg-block text-center lateLoad">
	<a class="navbar-brand mr-0" href="#">Guide</a> <nav
		class="nav nav-pills flex-column"> <a class="nav-link"
		href="#welcomePage">Welcome</a> <a class="nav-link"
		href="#aboutMePage">About me</a> <a class="nav-link"
		href="#skillsPage">Skills</a> </nav> </nav>
	<div class="modal fade" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<p class="modal-title">My Pictures</p>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div>
					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-100" src="images/me1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="images/me2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="images/me3.png"
									alt="Third slide">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<a href="#" class="scrollDownButton"><span></span></a>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath }/js/circle-progress.js"></script>
	<script src="${pageContext.request.contextPath }/js/myJs.js"></script>
	<script src="${pageContext.request.contextPath }/js/lateLoad.js"></script>
</body>
</html>