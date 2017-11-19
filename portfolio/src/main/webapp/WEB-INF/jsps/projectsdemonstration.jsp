<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ryan's Portfolio</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/pdPage.css">
	<link rel="icon" href="${pageContext.request.contextPath }/images/icon/icon.jpg">
</head>
<body>
	<%@include file="common/nav.jsp"%>
	<div class="container lateLoad500" >
		<div class="row justify-content-center">
			<div class="col-12 col-lg-10">
				<ul class="list-unstyled text-white">
					<li>
						<div class="card text-center bg-dark">
							<div class="card-header">
								Ryan's Portfolio
							</div>
							<div class="card-body">
								<h4 class="card-title">Utilized Skills</h4>
								<p class="card-text">SpringMVC, MyBatis, JSP, jQuery, AJAX, JSON, Bootstrap and Maven</p>
								<a href="${pageContext.request.contextPath }/projects/ryanportfolio.html" class="btn btn-primary">More Details</a>
							</div>
							<div class="card-footer text-muted">
								Uploaded <span id="daysDifference1"></span> days ago
							</div>
						</div>
					</li>
					<li>
						<div class="card text-center bg-dark">
							<div class="card-header">
								More are coming
							</div>
							<div class="card-body">
								<h4 class="card-title">A SSH project is coming soon</h4>
								<p class="card-text">If you want to know more about my project, please click below button to my GitHub.</p>
								<a href="https://github.com/RyanTsang" target="_blank" class="btn btn-primary">My GitHub</a>
							</div>
							<div class="card-footer text-muted">
								Uploaded <span id="daysDifference2"></span> days ago
							</div>
						</div>
					</li>
				</ul>		
			</div>
		</div>
		
	</div>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	<script src="js/myJs.js"></script>
	<script src="js/lateLoad.js"></script>
</body>
</html>