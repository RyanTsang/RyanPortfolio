$(function() {
	var current = location.pathname;
	$('#navbarSupportedContent li a').each(function() {
		var $this = $(this);

		// if the current path is like this link, make it active
		if ($this.attr('href') == current || ($this.attr('href').indexOf('projects') !== -1 && current.indexOf('projects') !== -1)) {
			$this.parent().addClass('active');
			$this.parent().siblings().first().removeClass('active');
		}
	});
	if (current.indexOf('contact.html') !== -1) {
		var clipboard = new Clipboard('#copyToClipboardBtn');
		clipboard.on('success', function(e) {
			e.clearSelection();
		});
		$("#copyToClipboardBtn").popover();
	} else if (current.indexOf('projectsdemonstration.html') !== -1 || current.indexOf('projects') !== -1) {
		//set #daysDifference1
		var updatedDate  = new Date("November 18, 2017");;
		var today= new Date();
		var res = Date.daysBetween(new Date(updatedDate.getFullYear(), updatedDate.getMonth(), updatedDate.getDate()), today);
		$('#daysDifference1').text(res);
		
		//set #daysDifference2
		var updatedDate  = new Date("November 18, 2017");;
		var today= new Date();
		var res = Date.daysBetween(new Date(updatedDate.getFullYear(), updatedDate.getMonth(), updatedDate.getDate()), today);
		$('#daysDifference2').text(res);
		
		$(document).ready(function() {
			  $('pre code').each(function(i, block) {
			    hljs.highlightBlock(block);
			  });
			});
	} else if (current.indexOf('comment.html') !== -1) {
		$('.btnReply').each(function(){
			$(this).click(function() {
				$(this).parent().siblings("form").show(500);
				$(this).hide();
			})
		});
		$('.btnCancel').each(function(){
			$(this).click(function() {
				$(this).parent().parent().hide(500);
				$(this).parent().parent().next().children().show();
			})
		});
	} else {
		setTimeout(function() {
			$('#navbar-side').css({
				'opacity' : 0.2
			});
			$('#navbar-side').hover(function() {
				$(this).css({
					'opacity' : 1
				});
			}, function() {
				$(this).css({
					'opacity' : 0.2
				});
			});
		}, 1500);

		$('.scrollDownButton').click(function() {
			$('html, body').animate({
				scrollTop : $(window).scrollTop() + 200
			}, 50);
		});

		// preventDefault of narbar-side guide a tag
		$("#navbar-side > a").click(function(e) {
			e.preventDefault();
		});

		// animation of welcomeWord
		var myTimer = setInterval(function() {
			// generate random number 0 - 9999
			var num = Math.floor(Math.random() * 10000);
			$("#numOfVisitor").html(num);
		}, 50);

		// use ajax receive data
		setTimeout(function() {
			// send ajax, set number and stop timer
			var url = "user/requestNum.do";
			$.ajax({
				"url" : url,
				"data" : null,
				"type" : "POST",
				"success" : function(data) {
					clearInterval(myTimer);
					$("#numOfVisitor").html(data.num);
				},
				"dataType" : "json"
			});
		}, 3000);

		// 1. Show and hide scroll down button
		// 2. Trigger animation of circle progress
		// 3. Add div when scroll to the bottom of the page
		var c = $('.circle');
		var circleWidth = c.width();
		// c.css({"top": circleWidth*0.05 + "px"});
		var isCircleProgressLoaded = false;
		var myPageHeight = $('.myPage').height();
		var additionalDivCount = 0;
		$(window)
				.scroll(
						function() {
							var scrollDistance = $(window).scrollTop();

							// 1
							if ((scrollDistance - 56) % myPageHeight < myPageHeight * 0.3) {
								$('.scrollDownButton').show(300);
							} else {
								$('.scrollDownButton').hide(300);
							}
							;

							// 2
							if ((scrollDistance - 56) / myPageHeight > 1.6
									&& !isCircleProgressLoaded == true) {
								c.circleProgress({
									startAngle : -Math.PI / 4 * 3,
									value : 1,
									size : circleWidth,
									lineCap : 'round',
								});

								$('.skillName').css({
									"top" : "-" + circleWidth / 1.7 + "px"
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
									- $(window).height() < 100) {
								// add myPage
								additionalDivCount += 1;
								var word = "";
								switch (additionalDivCount % 4) {
								case 1:
									word = "End of Home Page...";
									break;
								case 2:
									word = "Nothing below...";
									break;
								case 3:
									word = "Really nothing below...";
									break;
								case 0:
									word = "Told you nothing below...";
									break;
								default:
									word = "End of Home Page...";
								}
								var newDiv = "<div class='myPage row align-items-center'><div class='col'><div class='row justify-content-center'><div class='col-8 text-center text-white'><h3>"
										+ word
										+ "</h3></div></div></div></div>";
								$('.container').append(newDiv);
							}
						})
	}
})

//reference: 
//		https://www.htmlgoodies.com/html5/javascript/calculating-the-difference-between-two-dates-in-javascript.html
Date.daysBetween = function( date1, date2 ) {
  //Get 1 day in milliseconds
  var one_day=1000*60*60*24;

  // Convert both dates to milliseconds
  var date1_ms = date1.getTime();
  var date2_ms = date2.getTime();

  // Calculate the difference in milliseconds
  var difference_ms = date2_ms - date1_ms;
    
  // Convert back to days and return
  return Math.round(difference_ms/one_day) - 1; 
}