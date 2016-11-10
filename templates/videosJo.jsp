<%@ include file="../elements/TS_Common_Libraries.jsp" %>

<!DOCTYPE HTML>
<!--
	Theory by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Noticias</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="robots" content="NOODP">
		<meta name="description" content="teleSUR representa la alternativa informativa para el mundo. Nuestra agenda visibiliza a los pueblos, lo que no cuentan los grandes medio lo encuentra en teleSUR">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
		<meta property="fb:pages" content="186321186178">
		
		<meta name="cXense :recs:recommendable" content="false">
		<meta name="cXenseParse:pageclass" content="frontpage">
		<!-- Scripts -->
			<script src="www.google-analytics.com/analytics.js"></script>
			<script src="../resources/js/jquery.min.js"></script>
			<script src="../resources/js/skel.min.js"></script> 	
			<script src="../resources/js/util.js"></script>
			<script src="../resources/js/mainJo.js"></script>
		
		<%-- <link rel="stylesheet" href="../resources/css/main.css" />	--%>
		<%-- <link rel="stylesheet" href="../resources/css/main.css" /> --%>
		<link rel="stylesheet" href="../resources/css/reset.css" />
		<link rel="stylesheet" href="../resources/css/cssIntegracionJo.css" /> 
		<link rel="stylesheet" href="../resources/css/estilos-newIntegracionJo.css" />
		<link rel="stylesheet" href="../resources/css/font-awesome.min.css" />
		<link rel="stylesheet" href="../resources/css/flexslider.css" />

		<link rel="stylesheet" href="../resources/css/desing.css" />
		<link rel="stylesheet" href="../resources/css/claro.css" />
		<link rel="stylesheet" href="../resources/css/noticias.css" /> 
		<link rel="stylesheet" href="../resources/css/mainJo.css" />
		<%-- <link rel="stylesheet" href="../resources/css/main.css" /> --%>
		<%-- <link rel="stylesheet" href="../resources/css/mainIntegracionJo.css" /> --%>
		<link rel="stylesheet" href="../resources/css/reset.css" />
		<%-- <link rel="stylesheet" href="../resources/css/estilos-new.css" /> --%>
		
		
	<style>
		@import url(font-awesome.min.css);
		@import "https://fonts.googleapis.com/css?family=Raleway:100,300,600";

		header .sectionName{position:absolute;top:95px;width:100%;text-align:center;color:transparent;left:0}
		header{background:url('') right top no-repeat transparent;}
		article {
			min-width:'';
			max-width:'';

		}
		
		table td {
			padding:0;
		}
		*, *:before, *:after {
			box-sizing:content-box
		}
		h1, h2, h3, h4, h5, h6 {
		    color: #5385c1;
		    font-weight: 300;
		    line-height: 1.5;
		    margin: 0 0 0 0;
		}
		
		section .wrapper {
			padding: 0px
		}
		.wrapper img 
		     width: 0%; 
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
						<a href="genericJo.jsp">programa</a>
						<a href="elementsJo.jsp">Últimas Noticias</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				</div>
			</header>

		<!-- Three -->
		
		<section id="main" class="wrapper">
		    <div class="inner">
			<header class="align-center">
			    <h2>VIDEOS</h2>
			</header>
					
					
		    <div class="row>"
			<div class="6u$ 12u$(small)" style="width:100%;">
			    <cms:include page="../elements/TS_Home_VideosDestacadosJo.jsp">
				<cms:param name="titulo">Programas</cms:param>
				<cms:param name="parametro">programa</cms:param>
				<cms:param name="descripcion">no_es_nulo</cms:param>
			    </cms:include>
		        </div>
		    </div>
		
		    <div class="row>"
			<div class="6u$ 12u$(small)" style="width:100%;">
			    <cms:include page="../elements/TS_Home_VideosDestacadosJo.jsp">
				<cms:param name="titulo">America Latina</cms:param>
				<cms:param name="parametro">region</cms:param>
				<cms:param name="descripcion">america-latina</cms:param>
			    </cms:include>
			</div>
		    </div>
		
		<div class="row>"
		    <div class="6u$ 12u$(small)" style="width:100%;">
		        <cms:include page="../elements/TS_Home_VideosDestacadosJo.jsp">
		            <cms:param name="titulo">Europa</cms:param>
		            <cms:param name="parametro">region</cms:param>
		            <cms:param name="descripcion">europa</cms:param>
		        </cms:include>
		    </div>
		</div>
		
		<div>
		    <div class="blue tt-latest">Videos destacados</div>
		    <!-- Widget de Videos -->
		    <iframe width="100%" height="170px" frameborder="0" scrolling="no" src="http://multimedia.telesurtv.net/media/video/cmswidgets/index.html?widget=ultimos&idioma=es"></iframe>                
		    <!--fin Videos-->
		    </div>
		</div>
	</section>
		
		
	

		<cms:include page="../elements/TS_Common_FooterJo.jsp"></cms:include>
