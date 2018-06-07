<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>后台首页</title>
	<%@ include file="../system/allresources.jsp"%>

		<SCRIPT language=javascript> 
<!-- 
window.onerror=function(){return true;} 
// --> 
</SCRIPT> 
</head>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/plugins/echarts/echarts.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/scripts/homepage/gauge.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/scripts/homepage/qrcode_aweek_line.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/scripts/homepage/qrcode_industry_bar.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/scripts/util/jquery-1.11.1.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/static/scripts/util/unslider.min.js"></script>
<body>
<div style="width: 50%;height:300px;float: left;background-color: red">

	<style>
		html, body { font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;}
		ul, ol { padding: 0;}
		.banner { position: relative; overflow: auto; text-align: center;}
		.banner li { list-style: none; }
		.banner ul li { float: left; }

		#b04 { width: 460px;}
		#b04 .dots { position: absolute; left: 0; right: 0; bottom: 20px;}
		#b04 .dots li
		{
			display: inline-block;
			width: 10px;
			height: 10px;
			margin: 0 4px;
			text-indent: -999em;
			border: 2px solid #fff;
			border-radius: 6px;
			cursor: pointer;
			opacity: .4;
			-webkit-transition: background .5s, opacity .5s;
			-moz-transition: background .5s, opacity .5s;
			transition: background .5s, opacity .5s;
		}
		#b04 .dots li.active
		{
			background: #fff;
			opacity: 1;
		}
		#b04 .arrow { position: absolute; top: 200px;}
		#b04 #al { left: 15px;}
		#b04 #ar { right: 15px;}
	</style>
	<div class="banner" id="b04">
		<ul>
			<li><img src="${pageContext.request.contextPath }/static/images/main/01.jpg" alt="" width="460" height="300" ></li>
			<li><img src="${pageContext.request.contextPath }/static/images/main/02.jpg" alt="" width="460" height="300" ></li>
			<li><img src="${pageContext.request.contextPath }/static/images/main/03.jpg" alt="" width="460" height="300" ></li>
			<li><img src="${pageContext.request.contextPath }/static/images/main/04.jpg" alt="" width="460" height="300" ></li>
			<li><img src="${pageContext.request.contextPath }/static/images/main/05.jpg" alt="" width="460" height="300" ></li>
		</ul>
		<a href="javascript:void(0);" class="unslider-arrow04 prev"><img class="arrow" id="al" src="${pageContext.request.contextPath }/static/images/main/arrowl.png" alt="prev" width="20" height="35"></a>
		<a href="javascript:void(0);" class="unslider-arrow04 next"><img class="arrow" id="ar" src="${pageContext.request.contextPath }/static/images/main/arrowr.png" alt="next" width="20" height="37"></a>
	</div>
	<script>
        $(document).ready(function(e) {
            var unslider04 = $('#b04').unslider({
                    dots: true
                }),
                data04 = unslider04.data('unslider');
            $('.unslider-arrow04').click(function() {
                var fn = this.className.split(' ')[1];
                data04[fn]();
            });
        });
	</script>
</div>
<div style="width: 48%;height:300px;float: right;background-color: #1b91ff;">
	<div><span style="border: solid 1px red;width: 5px;height: 35px;background-color: #00B83F"></span><h3>最新资讯</h3></div>
	<ol style="line-height: 10px">
		<li>[新番] 抖M福利！《调教咖啡厅》推出每日毒舌企划</li>
		<li>[动漫] 日漫明年将大爆发？众多人气续作明年播出</li>
		<li>[动画] 日媒评最让人想运动的动画 《灌篮高手》第三</li>
		<li>[剧场] 引进有望？《Fate》HF剧场版简体中文预告公布</li>
		<li>[杂谈] 话题：你怎么看《龙珠超》等官方同人</li>
		<li>[漫展] 看漫展点这里喵，持续更新中~~~</li>
	</ol>
</div>
<div style="width: 33%;height:300px;float: left;background-color: #00083F;margin-top: 15px">

</div>
<div style="width: 33%;height:300px;float: left;background-color: #00B830;margin-top: 15px">

</div>
<div style="width: 33%;height:300px;float: left;background-color: #00B00F;margin-top: 15px">

</div>
</body>
</html>