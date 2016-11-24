<%@ include file="TS_Common_Libraries.jsp" %>

<script type="text/javascript" src="<cms:link>/system/modules/com.tfsla.diario.telesur/resources/js/jquery-1.11.0.min.js</cms:link>"></script>
<script src="//jwpsrv.com/library/HeeyEgeeEeS9bCIAC0MJiQ.js"></script>
<script type="text/javascript" src="<cms:link>/system/modules/com.tfsla.diario.telesur/resources/js/videos-fnJo.js</cms:link>"></script>

<script>
	jQuery(document).ready(function($){
		
		var parametro='<%=( request.getParameter("parametro") != null ) ? request.getParameter("parametro") : "" %>';
		var desc='<%=( request.getParameter("descripcion") != null ) ? request.getParameter("descripcion") : "" %>';
		var title='<%=( request.getParameter("titulo") != null ) ? request.getParameter("titulo") : "" %>';
		
		$().GetVideosDestacados(parametro, desc, title);
		
	});

</script>

<style>

</style>

<div class="block videos" id="VideosContenedor"></div>

