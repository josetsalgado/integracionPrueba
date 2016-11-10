<%@ include file="../elements/TS_Common_Libraries.jsp" %>

<!DOCTYPE HTML>
<!--
	Theory by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<%-- title>Noticias</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		
		<link rel="stylesheet" href="../resources/css/main.css" />	
		<link rel="stylesheet" href="../resources/css/main.css" />
		<link rel="stylesheet" href="../resources/css/reset.css" />
		<link rel="stylesheet" href="../resources/css/css.css" />
		<link rel="stylesheet" href="../resources/css/estilos-new.css" />
		<link rel="stylesheet" href="../resources/css/font-awesome.min.css" />
		<link rel="stylesheet" href="../resources/css/flexslider.css" />

		<link rel="stylesheet" href="../resources/css/desing.css" />
		<link rel="stylesheet" href="../resources/css/claro.css" />
		<link rel="stylesheet" href="../resources/css/noticias.css" />
		<link rel="stylesheet" href="../resources/css/mainJo.css" />
		<link rel="stylesheet" href="../resources/css/main.css" />
		<link rel="stylesheet" href="../resources/css/main.css" />
		<link rel="stylesheet" href="../resources/css/reset.css" />
		<link rel="stylesheet" href="../resources/css/estilos-new.css" / --%>
		<cms:include page="../elements/TS_Common_HeadJo.jsp">
			<cms:param name="template">americaLatina</cms:param>
		</cms:include>
		<nt:page-builder-init/>
	
		<style>
			header .sectionName{position:absolute;top:95px;width:100%;text-align:center;color:transparent;left:0}
			header{background:url('') right top no-repeat transparent;}
			article {
				min-width:'';
				max-width:'';
	
			}
			article h2 {
				width: calc(100%);	
			} 
			
		</style>
	</head>
	<body class="subpage">

		<!-- Header -->
		
			<header id="header">
				<div class="inner">
					<a href="indexIntegracionJo.jsp" class="logo">teleSUR</a>
					<nav id="nav">
						
						<a href="indexIntegracionJo.jsp">Home</a>
						<a href="genericJo.jsp">América Latina</a>
						<a href="elementsJo.jsp">Últimas Noticias</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>



		<!-- Three -->
			<section id="three" class="wrapper">
				<div class="inner">
					<cms:include page="../elements/TS_Home_AmericaLatinaJo2.jsp">
						<cms:param name="template">HomeLastNews</cms:param>
					</cms:include>
					
				</div>
			</section>
		

		<cms:include page="../elements/TS_Common_FooterJo.jsp"></cms:include>

		<!-- Footer -->
	</body>
</html>
