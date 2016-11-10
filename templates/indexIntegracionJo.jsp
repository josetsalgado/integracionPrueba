<%@ include file="../elements/TS_Common_Libraries.jsp" %>
<!DOCTYPE HTML>
<!--
	Theory by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
			
		<cms:include page="../elements/TS_Common_HeadJo.jsp">
			<cms:param name="template">homeIntegracion</cms:param>
		</cms:include>
		<nt:page-builder-init/>

	</head>
	<body>
	
			<cms:include page="../elements/TS_Common_Blocks.jsp">
				<cms:param name="template">HomeVideo</cms:param>
			</cms:include>
			
	<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="indexIntegracionJo.jsp" class="logo">teleSUR</a>
					
					<div id="nav12">
						<cms:include page="../elements/TS_Common_HeaderJo.jsp" >
							<cms:param name="pageTitle"></cms:param>
							<cms:param name="pageSeccion">home</cms:param>
							<cms:param name="subMenu"></cms:param>
							<cms:param name="agenda">si</cms:param>
							<cms:param name="latest">si</cms:param>
						</cms:include>
					</div>
					<a href="#navPane" class="navPanelToggle"><span class="fa fa-bars"></span></a>
					
				</div>
			</header>

		<!-- Banner -->
			<section id="banner">
				<img src="/arte/Dise_Web/home/logo-telesur.png">
				<p>La nueva Televisión del Sur.</p>
			</section>
			
			<%-- iframe id="video-background" width="560" height="315" src="//www.youtube.com/embed/e-hPEu06PUM?rel=0&amp;controls=0&amp;showinfo=0&amp;autoplay=1&amp;html5=1&amp;allowfullscreen=true&amp;wmode=transparent" frameborder="0" allowfullscreen></iframe --%>
			
	
	<!-- One -->
	<div class="article-time" style="margin-top:100px;">
	    <cms:include page="../elements/TS_Common_Blocks.jsp">
		<cms:param name="template">Publicidad-728x90-c</cms:param>
	    </cms:include>
	</div>
	<%-- aca empiezan las pruebas --%>
	
	<section id="three" class="wrapper special" style="padding:0">
		<div class="inner">
			<cms:include page="../elements/TS_Home_Destacada_Portada1Jo.jsp">
				<cms:param name="template">Dest-secundaria</cms:param>
			</cms:include>
		</div>
	</section>

			<section id="one" class="wrapper" style="padding-top:0">
				<%-- div class="inner" --%>
				<div class="inner">
					<div class="flex flex-2">
						
						<article>
							<cms:include page="../elements/TS_Common_BlocksJo.jsp">
								<cms:param name="template">HomeLastNews</cms:param>
							</cms:include>
						</article>
						<article style="float:left">
							<div >
							<cms:include page="../elements/TS_Home_DeportesJo.jsp">
								<cms:param name="template">HomeLastNews</cms:param>
							</cms:include>
						</article>
					</div>
				</div >
			</section>
	<div align="center">
		<cms:include page="../elements/TS_Common_Banners.jsp">
			<cms:param name="template">BlogPage</cms:param>
			<cms:param name="key">Advert-468x60-a-mobile</cms:param>
		</cms:include>
	</div>	
		<%-- resultados --%>
		<!-- Two -->
			<section id="two" class="wrapper style1 special">
				<div class="inner">
				
					<cms:include page="../elements/TS_Common_BlocksJo.jsp">
						<cms:param name="template">HomeResult</cms:param>
					</cms:include>
				
				</div>
				</section>	
				<div>
					<div style="float:left; width:50%">
						<cms:include page="../elements/TS_Common_Banners.jsp">
							<cms:param name="template">Country</cms:param>
							<cms:param name="key">Advert-728x90-b</cms:param>
						</cms:include>
					</div>
			
					<div style="float:right; width:50%">
						<cms:include page="../elements/TS_Common_Banners.jsp">
							<cms:param name="template">Audio</cms:param>
							<cms:param name="key">Advert-950x90</cms:param>
						</cms:include>
					</div>
				</div>
		
			<%-- finde la seccion de resultados --%>
			
			<%--Nota destacada--%>		
			<section id="three" class="wrapper special">
				<div class="inner">
					<cms:include page="../elements/TS_Common_BlocksJo.jsp">
						<cms:param name="template">HomeDestacamos</cms:param>
					</cms:include>
				</div>
			</section>
			
			<%-- Nota secundaria --%>	
			<section id="three" class="wrapper special">
				<div class="inner">
					<cms:include page="../elements/TS_Common_BlocksJo.jsp">
						<cms:param name="template">Dest-secundaria</cms:param>
					</cms:include>
				</div>
			</section>
			
			
	
<cms:include page="../elements/TS_Common_FooterJo.jsp"></cms:include>

<!-- Footer -->

<!--AdsLive-->
<script async='async' src='https://www.googletagservices.com/tag/js/gpt.js'></script>
<script type="text/javascript" src="http://pfapi.xyz/AdServerApi/api/ads/js/tag.js"></script> 
<script>
  var googletag = googletag || {};
  googletag.cmd = googletag.cmd || [];
</script>

<!-- /18910235/1x1.incontent -->
<div id='div-gpt-ad-1474583384073-0'>
<script>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1474583384073-0'); });
</script>
</div>
<!-- /11322282/Telesurtv.net//1x1 -->
<div id='div-gpt-ad-1476114832443-0'>
<script>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1476114832443-0'); });
</script>
</div>
<!--AdsLive-->
