<%-- librerías comunes --%>
<%@ include file="TS_Common_Libraries.jsp" %>
<%@ page import="java.net.URLEncoder" %>

<%-- Declaración-solicitud/variables/SEO --%>

<meta charset="utf-8">
<meta name="robots" content="NOODP">
<meta name="description" content="teleSUR representa la alternativa informativa para el mundo. Nuestra agenda visibiliza a los pueblos, lo que no cuentan los grandes medio lo encuentra en teleSUR" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes" />

<%-- Faceboock/SEO --%>
    <meta property="og:title" content="Home - teleSUR" />
    <meta property="og:type" content="website" />
    <meta property="og:description" content="teleSUR representa la alternativa informativa para el mundo. Nuestra agenda visibiliza a los pueblos, lo que no cuentan los grandes medio lo encuentra en teleSUR" />
    <meta property="og:site_name" content="teleSUR" />
    <meta property="og:locale" content="sp_VE" />
    <meta property="og:article:author" content="teleSUR" />
    <meta property="og:article:section" content="Home" />
    <meta property="og:url" content="http://www.telesurtv.net/" />
<%-- Twitter/SEO --%>  
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@teleSURtv">
    <meta name="twitter:title" content="Home - teleSUR">
    <meta name="twitter:description" content="Visit BBC News for up-to-the-minute news, breaking news, video, audio and feature stories. BBC News provides trusted World and UK news as well as local and regional perspectives. Also entertainment, business, science, technology and health news.">
    <meta name="twitter:creator" content="@teleSURtv">
    <meta name="twitter:domain" content="www.telesurtv.net">
    
  <link rel="shortcut icon" href="http://www.telesurtv.net/arte/favicon.ico" type="image/x-icon"  />

<%
String template = (request.getParameter("template") == null ) ? "home" : request.getParameter("template") ;
String copy = (request.getParameter("copy") == null ) ? "si" : request.getParameter("copy") ;
org.opencms.jsp.CmsJspXmlContentBean cms = new org.opencms.jsp.CmsJspXmlContentBean(pageContext, request, response);
String Title = cms.property("Title");
String Keywords = cms.property("Keywords");
String Description = cms.property("Description");
String LastUpdate =  cms.property("ultimaModificacion");
String currentUri = cms.getRequestContext().getUri();
if (Title == null) Title = "teleSUR";
%>

<%-- Condiciones de títulos --%>
<% if (template.equals("home") || template.equals("homeNew") || template.equals("search")){ %>  
  <title><%=Title%></title>
  
  <meta name="cXense :recs:recommendable" content="false"/>
  <meta name="cXenseParse:pageclass" content="frontpage"/>
  <link rel="canonical" href="http://www.telesurtv.net"/>
<% } %>

<% if (template.equals("news") || template.equals("multimedia") || template.equals("opinion") || template.equals("Analysis") || template.equals("blog") || template.equals("joinus") || template.equals("telesur_agenda") || template.equals("soyreportero")) { %>  
  <title><%=Title%> | teleSUR</title>
  
  <meta name="cXenseParse:recs:recommendable" content="false"/>
  <meta name="cXenseParse:pageclass" content="frontpage"/>
<% } %>


<%-- Fuentes necesarias --%>
  
<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic' rel='stylesheet' type='text/css'>

<%-- Estilos generales --%>


<link href="<cms:link>/system/modules/com.tfsla.diario.telesur/resources/css/mainInternoJo.css</cms:link>" rel="stylesheet" type="text/css" />

<script src="<cms:link>/system/modules/com.tfsla.diario.telesur/resources/js/jquery.js</cms:link>"></script>



  
  <link rel="shortcut icon" href="http://www.telesurtv.net/arte/favicon.ico" type="image/x-icon"  />
  <meta charset="utf-8">
  <meta name="robots" content="NOODP">
  <meta name="description" content="teleSUR representa la alternativa informativa para el mundo. Nuestra agenda visibiliza a los pueblos, lo que no cuentan los grandes medio lo encuentra en teleSUR" />
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes" />
  <meta property="fb:pages" content="186321186178" />






 
  
  <cms:editable provider="org.opencms.workplace.editors.directedit.CmsDirectEditDefaultProvider" />



<script>
  var device = navigator.userAgent
  var movil = device.match(/Iphone/i)|| 
  device.match(/Ipod/i)|| 
  device.match(/Android/i)|| 
  device.match(/J2ME/i)|| 
  device.match(/BlackBerry/i)|| 
  device.match(/iPhone|iPad|iPod/i)|| 
  device.match(/Opera Mini/i)|| 
  device.match(/IEMobile/i)|| 
  device.match(/Mobile/i)|| 
  device.match(/Windows Phone/i)|| 
  device.match(/windows mobile/i)|| 
  device.match(/windows ce/i)|| 
  device.match(/webOS/i)|| 
  device.match(/palm/i)|| 
  device.match(/bada/i)|| 
  device.match(/series60/i)|| 
  device.match(/nokia/i)|| 
  device.match(/symbian/i)|| 
  device.match(/HTC/i);
</script>
<%--
<nt:news>
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:site" content="@TelesurTV">
</nt:news>--%>


