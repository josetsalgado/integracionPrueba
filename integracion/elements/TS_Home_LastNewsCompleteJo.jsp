<%@ include file="TS_Common_Libraries.jsp" %>
<%
	org.opencms.jsp.CmsJspActionElement cmsO = new CmsJspActionElement(pageContext, request, response);
	Boolean isProjectOnline = cmsO.getCmsObject().getRequestContext().currentProject().isOnlineProject();
	String index = "TS_NEWS_ONLINE"; 
	if (!isProjectOnline) index = "TS_NEWS_OFFLINE";
%>

<%-- nt:news-list advancedfilter="(seccion:news OR seccion:blog)  AND NOT home.zone:destacada AND NOT home.zone:destacada_secundaria AND NOT home.zone:ultimas" order="user-modification-date desc" size="3" --%>
<nt:news-list advancedfilter="(seccion:news OR seccion:blog)  AND NOT home.zone:destacada AND NOT home.zone:destacada_secundaria AND NOT home.zone:ultimas" order="user-modification-date desc" size="9">

	<nt:conditional-include onposition="first">
		<div class="block latest">
			<a style="margin-left: -200px" href="http://www.telesurtv.net/seccion/news"><h5 style='font-size:15px;'>Últimas Noticias</h5></a>
	</nt:conditional-include>
		
	<%-- cms:include page="TS_Common_BoxArticleJo.jsp" --%>		
	<cms:include page="TS_Common_BoxArticleJo2.jsp">	
		<cms:param name="path"><nt:local-path /></cms:param>
	</cms:include>
		
	
</nt:news-list>
