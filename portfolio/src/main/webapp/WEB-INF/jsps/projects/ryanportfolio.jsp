<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/pdPage.css">
<link rel="stylesheet"
      href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/default.min.css">
<link rel="icon"
	href="${pageContext.request.contextPath }/images/icon/icon.jpg">
</head>
<body>
	<%@include file="/WEB-INF/jsps/common/nav.jsp"%>
	<div class="container lateLoad500 mt-5">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-10">
				<p>
					Source code of this project is on <a
						href="https://github.com/RyanTsang/RyanPortfolio" target="_blank">My
						GitHub</a>.
				</p>
				<h4>Project Structure:</h4>
					<pre>
						<code>
+---src
|   \---main
|       +---java
|       |   \---pers
|       |       \---ryan
|       |           \---portfolio
|       |               +---controller
|       |               |       BaseController.java
|       |               |       CommentController.java
|       |               |       ProjectController.java
|       |               |       UserController.java
|       |               |       
|       |               +---dao
|       |               |       CommentMapper.java
|       |               |       CommentMapper.xml
|       |               |       UserMapper.java
|       |               |       UserMapper.xml
|       |               |       
|       |               +---domain
|       |               |       Comment.java
|       |               |       User.java
|       |               |       
|       |               \---service
|       |                       CommentService.java
|       |                       UserService.java
|       |                       
|       +---resources
|       |       jdbc.properties
|       |       log4j.properties
|       |       spring-mvc.xml
|       |       spring-mybatis.xml
|       |       
|       \---webapp
|           +---css
|           |       commentPage.css
|           |       main.css
|           |       pdPage.css
|           |       
|           +---CV
|           |       Zhiyi_ZENG_resume.pdf
|           |       
|           +---images
|           |   |   bg.png
|           |   |   guesticon.png
|           |   |   hosticon.png
|           |   |   me1.png
|           |   |   me2.png
|           |   |   me3.png
|           |   |   
|           |   \---icon
|           |           email.svg
|           |           facebook.svg
|           |           github.svg
|           |           icon.jpg
|           |           linkedin.svg
|           |           
|           +---js
|           |       circle-progress.js
|           |       clipboard.min.js
|           |       lateLoad.js
|           |       myJs.js
|           |       
|           \---WEB-INF
|               |   web.xml
|               |   
|               \---jsps
|                   |   comment.jsp
|                   |   contact.jsp
|                   |   index.jsp
|                   |   projectsdemonstration.jsp
|                   |   
|                   +---common
|                   |       nav.jsp
|                   |       
|                   \---projects
|                           ryanportfolio.jsp
|                           template.jsp
|
|   pom.xml
						</code>
					</pre>
					<br />
					<h4>Spring + SpringMVC</h4>
					<p>Version:</p>
					<pre><code class="xml hljs">&lt;spring.version&gt;4.0.2.RELEASE&lt;/spring.version&gt;</code></pre>
					<p>For more information about Spring + SpringMVC please see my source code on <a
						href="https://github.com/RyanTsang/RyanPortfolio" target="_blank">My
						GitHub</a>.</p>
					<br />
					<h4>Mybatis</h4>
					<p>Version:</p>
					<pre><code class="xml hljs">&lt;mybatis.version&gt;3.2.6&lt;/mybatis.version&gt;</code></pre>
					<p>For more information about MyBatis please see my source code on <a
						href="https://github.com/RyanTsang/RyanPortfolio" target="_blank">My
						GitHub</a>.</p>
					<br />
					<h4>JSP(Java Server Page)</h4>
					<p>Code in comment.jsp:</p>
					<pre><code class="xml hljs">
&lt;c:forEach items=&quot;\${comments}&quot; var=&quot;comment&quot;&gt;
	&lt;li class=&quot;media mt-3&quot;&gt;
	&lt;img src=&quot;images/\${comment.isHost?'hosticon':'guesticon'}.png&quot; class=&quot;d-flex mr-3 rounded-circle&quot; width=&quot;64&quot; height=&quot;64&quot; alt=&quot;\${comment.isHost?'host':'guest'}&quot;&gt;
	&lt;div class=&quot;media-body&quot;&gt;
		&lt;h5 class=&quot;mt-0&quot;&gt;\${comment.name }&lt;/h5&gt;
		\${comment.comment }
		&lt;ul class=&quot;list-unstyled&quot;&gt;
			&lt;c:forEach items=&quot;\${comment.replies }&quot; var=&quot;reply&quot;&gt;
				&lt;li class=&quot;media mt-3&quot;&gt;
				&lt;img src=&quot;images/\${reply.isHost?'hosticon':'guesticon'}.png&quot;
					class=&quot;d-flex mr-3 rounded-circle&quot; width=&quot;64&quot; height=&quot;64&quot;
					alt=&quot;\${reply.isHost?'host':'guest'}&quot;&gt;
					&lt;div class=&quot;media-body&quot;&gt;
						&lt;h5 class=&quot;mt-0&quot;&gt;\${reply.name }&lt;/h5&gt;
						\${reply.comment }
					&lt;/div&gt;
				&lt;/li&gt;
			&lt;/c:forEach&gt;
			&lt;form style=&quot;display: none&quot; method=&quot;post&quot;
				action=&quot;\${pageContext.request.contextPath }/comment/create.do&quot;&gt;
				&lt;li class=&quot;media mt-3&quot;&gt;
					&lt;img src=&quot;images/guesticon.png&quot;
					class=&quot;d-flex mr-3 rounded-circle&quot; width=&quot;64&quot; height=&quot;64&quot;
					alt=&quot;guest&quot;&gt;
					&lt;div class=&quot;media-body&quot;&gt;
						&lt;input type=&quot;text&quot; class=&quot;d-none&quot; name=&quot;id&quot;
							value=&quot;\${comment.id }&quot;&gt;
						&lt;h5 class=&quot;mt-0&quot;&gt;
							&lt;input type=&quot;text&quot; class=&quot;form-control form-control-lg&quot;
								name=&quot;name&quot; placeholder=&quot;Your Name&quot;&gt;
						&lt;/h5&gt;
						&lt;input type=&quot;text&quot; class=&quot;form-control&quot; name=&quot;comment&quot;
							placeholder=&quot;Your Comment&quot;&gt;
					&lt;/div&gt;
				&lt;/li&gt;
				&lt;li class=&quot;mt-3&quot;&gt;
					&lt;input type=&quot;submit&quot; class=&quot;btn btn-secondary&quot; value=&quot;Submit&quot; /&gt;
					&lt;a class=&quot;btn btn-secondary btnCancel ml-2&quot;&gt;Cancel&lt;/a&gt;
				&lt;/li&gt;
			&lt;/form&gt;
			&lt;li class=&quot;mt-3&quot;&gt;
				&lt;a class=&quot;btn btn-secondary btnReply&quot;&gt;Replythis theme&lt;/a&gt;
			&lt;/li&gt;
		&lt;/ul&gt;
		&lt;/div&gt;
	&lt;/li&gt;
&lt;/c:forEach&gt;
					</code></pre>
					<br />
					<h4>jQuery</h4>
					<p>Infinite home page. Code in myJs.js</p>
					<pre>
						<code>
// 1. Show and hide scroll down button
// 2. Trigger animation of circle progress
// 3. Add div when scroll to the bottom of the page
var c = $('.circle');
var circleWidth = c.width();
// c.css({&quot;top&quot;: circleWidth*0.05 + &quot;px&quot;});
var isCircleProgressLoaded = false;
var myPageHeight = $('.myPage').height();
var additionalDivCount = 0;
$(window)
.scroll(
	function() {
		var scrollDistance = $(window).scrollTop();

					// 1
					if ((scrollDistance - 56) % myPageHeight &lt; myPageHeight * 0.3) {
						$('.scrollDownButton').show(300);
					} else {
						$('.scrollDownButton').hide(300);
					}
					;

					// 2
					if ((scrollDistance - 56) / myPageHeight &gt; 1.6
						&amp;&amp; !isCircleProgressLoaded == true) {
						c.circleProgress({
							startAngle : -Math.PI / 4 * 3,
							value : 1,
							size : circleWidth,
							lineCap : 'round',
						});

					$('.skillName').css({
						&quot;top&quot; : &quot;-&quot; + circleWidth / 1.7 + &quot;px&quot;
					});
						// set circle value here
						setTimeout(function() {
							c.eq(0).circleProgress('value', 0.7);
						}, 1000);
						setTimeout(function() {
							c.eq(1).circleProgress('value', 0.5);
						}, 1000);
						setTimeout(function() {
							c.eq(2).circleProgress('value', 0.5);
						}, 1000);
						isCircleProgressLoaded = true;
					}
					;

					// 3
					if ($(document).height() - $(document).scrollTop()
						- $(window).height() &lt; 100) {
						// add myPage
					additionalDivCount += 1;
					var word = &quot;&quot;;
					switch (additionalDivCount % 4) {
						case 1:
						word = &quot;End of Home Page...&quot;;
						break;
						case 2:
						word = &quot;Nothing below...&quot;;
						break;
						case 3:
						word = &quot;Really nothing below...&quot;;
						break;
						case 0:
						word = &quot;Told you nothing below...&quot;;
						break;
						default:
						word = &quot;End of Home Page...&quot;;
					}
					var newDiv = &quot;&lt;div class='myPage row align-items-center'&gt;&lt;div class='col'&gt;&lt;div class='row justify-content-center'&gt;&lt;div class='col-8 text-center text-white'&gt;&lt;h3&gt;&quot;
					+ word
					+ &quot;&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&quot;;
					$('.container').append(newDiv);
				}
			})
						</code>
					</pre>
					<br />
					<h4>AJAX, JSON</h4>
					<p>Send request. Code in myJs.js</p>
					<pre><code class="javascript hljs">
var url = &quot;user/requestNum.do&quot;;
$.ajax({
	&quot;url&quot; : url,
	&quot;data&quot; : null,
	&quot;type&quot; : &quot;POST&quot;,
	&quot;success&quot; : function(data) {
		clearInterval(myTimer);
		$(&quot;#numOfVisitor&quot;).html(data.num);
	},
	&quot;dataType&quot; : &quot;json&quot;
});
					</code></pre>
					<br />
					<p>Receive request and send response. Code in UserController.java</p>
					<pre><code class="java hljs">
@RequestMapping(&quot;requestUser.do&quot;)	
public @ResponseBody Map&lt;String, String&gt; requestJson(HttpServletRequest request) {
	String clientIp = &quot;&quot;;
	String xForwardedForHeader = request.getHeader(&quot;X-Forwarded-For&quot;);
	if (xForwardedForHeader == null) {
		clientIp = request.getRemoteAddr();
	} else {
		clientIp = new StringTokenizer(xForwardedForHeader, &quot;,&quot;).nextToken().trim();
	}
	Map json = new HashMap&lt;String, String&gt;();
	json.put(&quot;num&quot;, userService.getNumById(clientIp));
	return json;
					</code></pre>
					<br />
					<h4>Bootstrap</h4>
					<p>For more information abount Bootstrap please see my source code on <a
						href="https://github.com/RyanTsang/RyanPortfolio" target="_blank">My
						GitHub</a>.</p>
					<br />
					<h4>Maven</h4>
					<p>For more information of Maven please see pom.xml on<a
						href="https://github.com/RyanTsang/RyanPortfolio" target="_blank">My
						GitHub</a>.</p>
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
	<script src="${pageContext.request.contextPath }/js/myJs.js"></script>
	<script src="${pageContext.request.contextPath }/js/lateLoad.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
</body>
</html>