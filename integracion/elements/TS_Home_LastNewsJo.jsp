<%@ include file="TS_Common_Libraries.jsp" %>
<%
	org.opencms.jsp.CmsJspActionElement cmsO = new CmsJspActionElement(pageContext, request, response);
	Boolean isProjectOnline = cmsO.getCmsObject().getRequestContext().currentProject().isOnlineProject();
	String index = "TS_NEWS_ONLINE"; 
	if (!isProjectOnline) index = "TS_NEWS_OFFLINE";
%>

<%-- nt:news-list advancedfilter="(seccion:news OR seccion:blog)  AND NOT home.zone:destacada AND NOT home.zone:destacada_secundaria AND NOT home.zone:ultimas" order="user-modification-date desc" size="3" --%>
<nt:news-list advancedfilter="(seccion:news OR seccion:blog)  AND NOT home.zone:destacada AND NOT home.zone:destacada_secundaria AND NOT home.zone:ultimas" order="user-modification-date desc" size="1">

	<nt:conditional-include onposition="first">
		<div class="block latest">
			<a style="font-size=10;" href="http://www.telesurtv.net/seccion/news"><h5 style='font-size:15px;'>Últimas Noticias</h5></a>
	</nt:conditional-include>
		
			<cms:include page="TS_Common_BoxArticleJo.jsp">			
				<cms:param name="path"><nt:local-path /></cms:param>
			</cms:include>
		
	<%-- nt:conditional-include onposition="last">
			<div class="banners pos640">
				<cms:include page="../elements/TS_Common_Banners.jsp">
					<cms:param name="template">Home</cms:param>
					<cms:param name="key">Advert-Mobile300x150-a</cms:param>
				</cms:include>
			</div>
		</div>
	</nt:conditional-include --%>
</nt:news-list>
