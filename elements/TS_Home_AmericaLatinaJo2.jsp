<%@ include file="TS_Common_Libraries.jsp" %>

<style>

section.wrapper, article.wrapper {
 padding: 50px 0px 200px 0px;
}


</style>

<header class="align-center">
	<a href="http://www.telesurtv.net/SubSecciones/news/latinaamerica/index.html"><h2>América Latina<%-- cms:img src="/arte/redes/latina.png" scaleType="2" alt="Telesur" / --%></h2></a> 
</header>

<%-- div class="flex flex-2">
	
<div class="image fit" style="float:left" --%>

<%-- nt:news-list zone="latinaamerica_carousel" onmainpage="home" order="user-modification-date desc" size="4">
	<cms:include page="TS_Common_BoxArticleJo2.jsp">			
		<cms:param name="path"><nt:local-path /></cms:param>
	</cms:include>
</nt:news-list --%>
<div class="wpArticles" style="height: 450px">
<nt:news-list zone="latinaamerica_carousel" onmainpage="home" order="user-modification-date desc" size="20">
	<cms:include page="TS_Common_BoxArticleJo2.jsp">			
		<cms:param name="path"><nt:local-path /></cms:param>
	</cms:include>
	
	<%-- nt:conditional-include onposition="last">
		</div>
	</nt:conditional-include --%>
	
</nt:news-list>
<%-- /div --%>
</div>
