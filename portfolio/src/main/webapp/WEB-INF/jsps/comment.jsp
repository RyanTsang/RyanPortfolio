<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="css/commentPage.css">
<link rel="icon" href="${pageContext.request.contextPath }/images/icon/icon.jpg">
</head>
<body>
	<%@include file="common/nav.jsp"%>
	<div class="container lateLoad500">
		<div class="row">
			<div class="col">
				<ul class="list-unstyled text-white">
					<form style="display:none" method="post"
						action="${pageContext.request.contextPath }/comment/save.do">
						<li class="media"><img src="images/guesticon.png"
							class="d-flex mr-3 rounded-circle" width="64" height="64"
							alt="guest">
							<div class="media-body">
								<h5 class="mt-0">
									<input type="text" class="form-control form-control-lg"
										name="name" placeholder="Your Name">
								</h5>
								<input type="text" class="form-control" name="comment"
									placeholder="Your Comment">
							</div></li>
						<li class="mt-3"><input type="submit"
							class="btn btn-secondary" value="Submit" /><a
							class="btn btn-secondary btnCancel ml-2">Cancel</a></li>
					</form>
					<li class="mt-3"><a class="btn btn-secondary btn-block btnReply">Create
							a new threme</a></li>
					<c:forEach items="${comments}" var="comment">
						<li class="media mt-3"><img
							src="images/${comment.isHost?'hosticon':'guesticon'}.png"
							class="d-flex mr-3 rounded-circle" width="64" height="64"
							alt="${comment.isHost?'host':'guest'}">
							<div class="media-body">
								<h5 class="mt-0">${comment.name }</h5>
								${comment.comment }
								<ul class="list-unstyled">
									<c:forEach items="${comment.replies }" var="reply">
										<li class="media mt-3"><img
											src="images/${reply.isHost?'hosticon':'guesticon'}.png"
											class="d-flex mr-3 rounded-circle" width="64" height="64"
											alt="${reply.isHost?'host':'guest'}">
											<div class="media-body">
												<h5 class="mt-0">${reply.name }</h5>
												${reply.comment }
											</div></li>
									</c:forEach>
									<form style="display: none" method="post"
										action="${pageContext.request.contextPath }/comment/save.do">
										<li class="media mt-3"><img src="images/guesticon.png"
											class="d-flex mr-3 rounded-circle" width="64" height="64"
											alt="guest">
											<div class="media-body">
												<input type="text" class="d-none" name="id"
													value="${comment.id }">
												<h5 class="mt-0">
													<input type="text" class="form-control form-control-lg"
														name="name" placeholder="Your Name">
												</h5>
												<input type="text" class="form-control" name="comment"
													placeholder="Your Comment">
											</div></li>
										<li class="mt-3"><input type="submit"
											class="btn btn-secondary" value="Submit" /><a
											class="btn btn-secondary btnCancel ml-2">Cancel</a></li>
									</form>
									<li class="mt-3"><a class="btn btn-secondary btnReply">Reply
											this theme</a></li>
								</ul>
							</div></li>
					</c:forEach>
				</ul>
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
</body>
</html>