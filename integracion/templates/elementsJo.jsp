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
		<!-- Scripts -->
			<script src="../resources/js/jquery.min.js"></script>
			<script src="../resources/js/skel.min.js"></script>
			<script src="../resources/js/util.js"></script>
			<script src="../resources/js/mainJo.js"></script>
			
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
		<link rel="stylesheet" href="../resources/css/estilos-new.css" />
		
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
		h1, h2, h3, h4, h6 {
		    color: #5385c1;
		    font-weight: 300;
		    line-height: 1.5;
		    margin: 0 0 0 0;
		}
		.block {
			width: 130%;
		}
		.titleUN {
			margin-left: -200px
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
			

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<header class="align-center">
						<h2>NOTICIAS</h2>
					</header>

				<!-- Content -->
					<h2 id="content"></h2>
					<div class="row>"
						<div class="6u$ 12u$(small)" style="width:100%;">
							<cms:include page="../elements/TS_Home_LastNewsCompleteJo.jsp">
								<cms:param name="template">HomeLastNews</cms:param>
							</cms:include>
						</div>
					</div>

				<hr class="major" />
				<!-- Container -->
	<%-- div id="container">
				<div class="wrapper"><!--wrapper--> 
				<div class="row clear">   
		   	<!-- inicio colmna izq col-six -->
		    	<div class="col-six" --%> 
		    	
		    	<div class="row 200%">
						<div class="6u 12u$(medium)">
						
						 
									<cms:include page="../elements/TS_Blogs_PageJo.jsp" />											            
						        	</div><!-- fin colmna izq col-six -->
						          	
						          	<cms:include page="../elements/TS_Common_RightColumnJo.jsp" >
								 	<cms:param name="template">Blog</cms:param>
								</cms:include>
	          	
		<%-- div>
	          	
		</div>
	          	
		</div  --%>
		</div><!--wrapper-->
	</div><!--conteiner-->
		
		
				
					</div>
					</div>

				</div>
			</section>

		<cms:include page="../elements/TS_Common_FooterJo.jsp"></cms:include>
	</body>
</html>
