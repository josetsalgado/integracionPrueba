<%@ include file="TS_Common_Libraries.jsp" %>
<%@ include file="../elements/webusers/TS_RecoverySession.jsp" %>
<%@ include file="../elements/webusers/TS_Common_UserFunctions.jsp" %>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Locale"%>







<cms:include page="webusers/TS_Logout.jsp" />
<cms:include page="webusers/TS_RecoverySession.jsp" />

<header>


<link rel="stylesheet" type="text/css" href="/system/modules/com.tfsla.diario.telesur/resources/css/internoNotaJo/bootstrapJo.min.css">
<link rel="stylesheet" type="text/css" href="/system/modules/com.tfsla.diario.telesur/resources/css/internoNotaJo/font-awesomeJo.min.css">
<link rel="stylesheet" type="text/css" href="/system/modules/com.tfsla.diario.telesur/resources/css/internoNotaJo/animateJo.css">
<link rel="stylesheet" type="text/css" href="/system/modules/com.tfsla.diario.telesur/resources/css/internoNotaJo/li-scrollerJo.css">
<link rel="stylesheet" type="text/css" href="/system/modules/com.tfsla.diario.telesur/resources/css/internoNotaJo/slickJo.css">
<link rel="stylesheet" type="text/css" href="/system/modules/com.tfsla.diario.telesur/resources/css/internoNotaJo/themeJo.css">
<link rel="stylesheet" type="text/css" href="/system/modules/com.tfsla.diario.telesur/resources/css/internoNotaJo/styleJo.css">

<script src="/system/modules/com.tfsla.diario.telesur/resources/js/internoNotaJo/jqueryJo.min.js"></script>
<script src="/system/modules/com.tfsla.diario.telesur/resources/js/internoNotaJo/wowJo.min.js"></script>
<script src="/system/modules/com.tfsla.diario.telesur/resources/js/internoNotaJo/bootstrapJo.min.js"></script>
<script src="/system/modules/com.tfsla.diario.telesur/resources/js/internoNotaJo/slickJo.min.js"></script>
<script src="/system/modules/com.tfsla.diario.telesur/resources/js/internoNotaJo/jqueryJo.li-scroller.1.0.js"></script>
<script src="/system/modules/com.tfsla.diario.telesur/resources/js/internoNotaJo/customJo.js"></script>


<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
<div class="container">
    <div class="box_wrapper">
    <header id="header">
      <div class="header_top">
        <nav class="navbar navbar-default" role="navigation">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav custom_nav">
                <li><a href="http://devindigo.telesurtv.net/system/modules/com.tfsla.diario.telesur/templates/indexIntegracionJo.jsp">Home</a></li>
                <li><a href="http://devindigo.telesurtv.net/system/modules/com.tfsla.diario.telesur/templates/genericJo.jsp">America latina</a></li>
                <li><a href="http://devindigo.telesurtv.net/system/modules/com.tfsla.diario.telesur/templates/elementsJo.jsp">Ultimas noticias</a></li>
                <li><a href="http://devindigo.telesurtv.net/system/modules/com.tfsla.diario.telesur/templates/videosJo.jsp">Videos</a></li>
                <li><a href="404.html">404 Page</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <div class="header_search">
          <button id="searchIcon"><i class="fa fa-search"></i></button>
          <div id="shide">
            <div id="search-hide">
              <form action="#">
                <input type="text" size="40" placeholder="Search here ...">
              </form>
              <button class="remove"><span><i class="fa fa-times"></i></span></button>
            </div>
          </div>
        </div>
      </div>
      <div class="header_bottom">
        <div class="logo_area"><a class="logo" href="#"><b>t</b>eleSUR <span>La nueve television de sur.</span></a></div>
        <%-- div class="top_addarea"><a href="#"><img src="images/addbanner_728x90_V1.jpg" alt=""></a></div --%>
      </div>
    </header>
    <div class="latest_newsarea"> <span>LNoticias</span>
      <ul id="ticker01" class="news_sticker">
        <li><a href="http://devindigo.telesurtv.net/system/modules/com.tfsla.diario.telesur/templates/indexIntegracionJo.jsp">Home</a></li>
        <li><a href="http://devindigo.telesurtv.net/system/modules/com.tfsla.diario.telesur/templates/genericJo.jsp">America latina</a></li>
        <li><a href="http://devindigo.telesurtv.net/system/modules/com.tfsla.diario.telesur/templates/elementsJo.jsp">Ultimas noticias</a></li>
        <li><a href="http://devindigo.telesurtv.net/system/modules/com.tfsla.diario.telesur/templates/videosJo.jsp">Videos</a></li>
        <li><a href="http://wwww.telesurtv.net">ir a telesur</a></li>
        <li><a href="http://wwww.telesurtv.net">ir a telesur</a></li>
        <li><a href="http://wwww.telesurtv.net">ir a telesur</a></li>
      </ul>
    </div>
    
</div>

