function breath(){
	var nowimg=0;
	var mytimer;

	mytimer = window.setInterval(huxi, 5000);
	$("#banner").mouseenter(
		function(){
			 window.clearInterval(mytimer);
		}
	);
	$("#banner").mouseleave(
		function(){
			 window.clearInterval(mytimer);
			 mytimer = window.setInterval(huxi, 5000);
		}
	);
	function huxi(){
		if(!$("#banner .banner_img li").is(":animated")){
			$("#banner .banner_img li").eq(nowimg).fadeOut(1500);
			if(nowimg < 3){
				nowimg++;
			}else{
				nowimg = 0;
			}
			$("#banner .banner_img li").eq(nowimg).fadeIn(1500);
			$("#banner .circle li").eq(nowimg).addClass("cur").siblings().removeClass("cur");
		}
	}

	$("#banner .circle li").mouseenter(
		function(){
			if(!$("#banner .banner_img li").is(":animated")){
				if($(this).index() != nowimg){

					$("#banner .banner_img li").eq(nowimg).fadeOut(1500);
					nowimg = $(this).index();
					$("#banner .banner_img li").eq(nowimg).fadeIn(1500);
					$("#banner .circle li").eq(nowimg).addClass("cur").siblings().removeClass("cur");
				}
			}
		}
	);
}
function nav(){
	$(".header .nav .fuli").mouseenter(
		function(){
			if(!$(this).children(".menu").is(":animated")){
				$(this).children(".menu").slideDown();
				$(this).addClass("cur");
				}

		}
	);
	$(".header .nav .fuli").mouseleave(
		function(){
			$(this).removeClass("cur");
			$(this).children(".menu").slideUp();
		}
	);
}
// 成功借款的效果
function wufeng01() {
	var nowtop = 0;	//信号量
	var mytimer1;
	var sum = 0;	//总和0

	$(".slider_loan ul li").each(
		function(){
			sum = sum + $(this).outerHeight(true);
		}
	);

	//复制一倍结点
	$(".slider_loan ul").html($(".slider_loan ul").html() + $(".slider_loan ul").html());

	//调用gun函数
	gun();

	//gun函数：
	function gun(){
		window.clearInterval(mytimer1);
		mytimer1 = window.setInterval(
			function(){
				if(nowtop == -sum){
					nowtop = 0;
				}else{
					nowtop = nowtop - 1;	//往上边跑。
				}
				$(".slider_loan ul").css("top",nowtop);
			}
			,40
		);
	}

	$(".slider_loan").mouseenter(
		function(){
			window.clearInterval(mytimer1);
		}
	);

	$(".slider_loan").mouseleave(gun);
}
// 成功投资的效果
function wufeng02() {
	var nowtop = 0;	//信号量
	var mytimer1;
	var sum = 0;	//总和0

	$(".slider_invest ul li").each(
		function(){
			sum = sum + $(this).outerHeight(true);
		}
	);

	//复制一倍结点
	$(".slider_invest ul").html($(".slider_invest ul").html() + $(".slider_invest ul").html());

	//调用gun函数
	gun();

	//gun函数：
	function gun(){
		window.clearInterval(mytimer1);
		mytimer1 = window.setInterval(
			function(){
				if(nowtop == -sum){
					nowtop = 0;
				}else{
					nowtop = nowtop - 1;	//往上边跑。
				}
				$(".slider_invest ul").css("top",nowtop);
			}
			,40
		);
	}

	$(".slider_invest").mouseenter(
		function(){
			window.clearInterval(mytimer1);
		}
	);

	$(".slider_invest").mouseleave(gun);
}
// 浮动客服
function float_service(){
	$("#close").click(
		function(){
			$(".float").css("display","none");
		}
	);
}
function tab(){
	$("#verify li").click(
		function(){
			$(this).addClass("cur").siblings().removeClass("cur");
			$(".pe_verify").eq($(this).index()).show().siblings(".pe_verify").hide();
		}
	);
	$("#agree_login").mouseenter(
		function(){
			$(this).addClass("cur");
		}
	);
	$("#agree_login").mouseleave(
		function(){
			$(this).removeClass("cur");
		}
	);
	
	$("#jump_over").click(
		function(){
			$("#message_verify").hide();
			$(".login_success").show();
			$("#loginHead li.login02").addClass("cur").siblings().removeClass("cur");
		}
	);
	$("#goTo li input").mouseenter(
		function(){
			$(this).addClass("cur").siblings().removeClass("cur");
		}
	);
	$("#goTo li input").mouseleave(
		function(){
			$(this).removeClass("cur");
		}
	);
}


function singup(){
	$("#signUp li").click(
		function(){
			$(this).addClass("cur").siblings().removeClass("cur");
			$(".ul_content").eq($(this).index()).addClass("cur").siblings().removeClass("cur");
		}
	);
}