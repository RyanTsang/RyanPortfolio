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
<link rel="stylesheet" href="css/main.css">
<link rel="icon" href="${pageContext.request.contextPath }/images/icon/icon.jpg">
</head>
<body>
	<%@include file="common/nav.jsp"%>
	<div class="container">
		<div class="row align-items-center myPage">
			<div class="col">
				<div class="row justify-content-center">
					<div class="col">
						<div
							class="card-deck text-white text-center row justify-content-center lateLoad lateLoad500">
							<div class="card col-4 col-md-3 bg-dark p-2">
								<img class="card-img-top" src="images/icon/linkedin.svg"
									alt="Card image cap">
								<div class="card-body">
									<h3 class="card-title">Linkedin</h3>
									<a href="https://www.linkedin.com/in/zhiyi-zeng-291719149/" target="_blank" class="btn btn-primary">Link</a>
								</div>
							</div>
							<div class="card col-4 col-md-3 bg-dark p-2">
								<img class="card-img-top" src="images/icon/github.svg"
									alt="Card image cap">
								<div class="card-body">
									<h3 class="card-title">GitHub</h3>
									<a href="https://github.com/RyanTsang" class="btn btn-primary" target="_blank">Link</a>
								</div>
							</div>
							<div class="card col-4 col-md-3 bg-dark p-2">
								<img class="card-img-top" src="images/icon/email.svg"
									alt="Card image cap">
								<div class="card-body">
									<h3 class="card-title">Email</h3>
									<a tabindex="0" id="copyToClipboardBtn" class="btn btn-primary"
										role="button" data-toggle="popover" data-trigger="focus"
										data-clipboard-text="zyzeng713@gmail.com"
										data-content="Copied!">Copy</a>
								</div>
							</div>
						</div>
						<div class="row justify-content-center lateLoad lateLoad500 mt-3">
							<div class="col-12 col-md-10">
								<a href="${pageContext.request.contextPath }/CV/Zhiyi_ZENG_resume.pdf" target="_blank" class="btn btn-primary btn-lg btn-block">Click
									here to view my resume</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	<script src="js/lateLoad.js"></script>
	<script src="js/myJs.js"></script>
	<script src="js/clipboard.min.js"></script>
</body>
</html>