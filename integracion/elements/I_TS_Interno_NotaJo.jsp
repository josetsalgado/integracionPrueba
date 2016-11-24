
<%@ include file="../elements/TS_Common_Libraries.jsp" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<!doctype html>
<html>
<head>
<title></title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<nt:news>
    <%@ include file="../elements/TS_Common_Libraries.jsp" %>
    <%@page import="java.util.Date"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%@page import="java.text.DateFormat"%>
    <%@page import="java.util.Calendar"%>
    
    
<div id="preloader">
  <div id="status">&nbsp;</div>
</div>

<div class="container">
  <div class="box_wrapper">
    
    <section id="contentbody">
      <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
          <div class="row">
            <div class="left_bar">
              <div class="single_leftbar">
                <h2><span>Blogs por categorías</span></h2>
                <div class="singleleft_inner">
                  <ul class="recentpost_nav wow fadeInDown">
                  	<cms:include page="../elements/TS_Common_RightColumnJo.jsp" >
				<cms:param name="template">Opinion</cms:param>
			</cms:include> 
                    <%-- c:import url="http://www.telesurtv.net/_static_rankings/static_rankingCategory_blogs.html"/ --%>
                  </ul>
                </div>
              </div>
              <div class="single_leftbar wow fadeInDown">
                <h2><span>Publicidad</span></h2>
                <div class="singleleft_inner">
                
						<cms:include page="TS_Common_Banners.jsp">
							<cms:param name="template">Home</cms:param>
							<cms:param name="key">Advert-183x374-a</cms:param>
						</cms:include>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-7 col-md-7 col-sm-8 col-xs-12">
          <div class="row">
            <div class="middle_bar">
              <div class="single_post_area">
                <ol class="breadcrumb">
                  <li><a href="http://devindigo.telesurtv.net/system/modules/com.tfsla.diario.telesur/templates/indexIntegracionJo.jsp"><i class="fa fa-home"></i>Home<i class="fa fa-angle-right"></i></a></li>
                  <li>
                      <c:set var="seccionNota" scope="page">
		          <nt:section-name/>
		      </c:set>
		      <a href="http://devindigo.telesurtv.net/seccion/${seccionNota}/index.html">Noticias<i class="fa fa-angle-right"></i></a></li>
		 <li class="active"><nt:title value="detail"/></li>
                </ol>
                <h2 class="post_title wow ">
                    <div class="title">
                          <nt:title value="detail"/>
                    </div>
                </h2>
                <a href="#" class="author_name">
                    <%-- autor de la nota--%>
                    <i class="fa fa-user"></i>
                    <nt:conditional-include oncondition="${news.hideAuthor == 'false'}">
                        <nt:authors>
                            <c:set var="internalUser" scope="page"><nt:author-internaluser/></c:set>
                            <c:set var="authorName" scope="page"><nt:author-name/></c:set>
                            <c:if test="${internalUser != ''}">
                                <nt:user username="${internalUser}">
                                    <meta itemprop="name" content="<nt:user-firstname/> <nt:user-lastname/>"/>
                                    <nt:user-firstname/> <nt:user-lastname/>
                                </nt:user>
                            </c:if>
			    <c:if test="${internalUser == '' && authorName != ''}">
                                <meta itemprop="name" content="<nt:author-name/>"/>
                                <a style="width: auto" class="her" alt="<nt:author-name/>" title="<nt:author-name/>"><nt:author-name/></a>
                            </c:if>
                        </nt:authors>
                    </nt:conditional-include>
               
		</a> 
		<a href="#" class="post_date">
		    <i class="fa fa-clock-o"></i>
		    <nt:conditional-include oncondition="${news.hideTime == 'false'}">
                                    <c:set var="horaNotaSistema" scope="page"><fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${news.lastModificationDate}" /></c:set>
                                    <jsp:useBean id="horaNotaSistema" type="java.lang.String" />
                                                                                               <fmt:setLocale value="es_ES"/>
                                        <fmt:formatDate pattern="d MMMM yyyy" value="${news.lastModificationDate}" />
                                        <%  try{ %> <%=CalcularDias(horaNotaSistema)%> <% } catch (Exception e){ %>   <% } %>
                                        <!--<fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${news.lastModificationDate}" />-->
                           </nt:conditional-include>
		
		
		</a>
                <div class="single_post_content">
                
                
                
                <div class="image-container">
                        <!-- INICIO MULTIMEDIA -->
                        <%
                            String width = "930" ;
                            String height = "310" ;
                            int contadorVideo = 0;
                        %>

                        <nt:conditional-include oncondition="${news.detailPreview == 'imagen'}">
                            <nt:conditional-include oncondition="${news.imagescount > 0}">
                                <div id="fotos">
                                    <ul class="slides">
                                        <nt:image-gallery>
                                            <li itemscope class=".itemscope" itemtype="http://schema.org/ImageObject">
                                                <c:set var="imageDescription" scope="page"><nt:image-description/></c:set>
                                                <c:set var="imageSource" scope="page"><nt:image-source/></c:set>
                                                <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource != '')}">
                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title="<nt:image-description/> | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
                                                </nt:conditional-include>
                                                <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource == '')}">
                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title='<nt:image-description/>' width="<%=width %>" height="<%=height %>" />
                                                </nt:conditional-include>
                                                <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource != '')}">
                                                    <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title="${news.titles[news.titleDetailNum]} | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
                                                </nt:conditional-include>
                                                <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource == '')}">
                                                    <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title='${news.titles[news.titleDetailNum]}' width="<%=width %>" height="<%=height %>" />
                                                </nt:conditional-include>
                                            </li>
                                        </nt:image-gallery>
                                    </ul>
                                </div>
                            </nt:conditional-include>
                            <nt:conditional-include oncondition="${news.videoscount > 0}">
                                <div id="videos">
                                    <ul class="slides">
                                        <c:set var="videopath" value="" />
                                        <nt:video-flash>
                                            <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                <c:set var="videopath">
                                                    <nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/>
                                                </c:set>
                                                <meta itemprop="name" content='<nt:video-title/>' />
                                                <meta itemprop="publisher" content="<nt:video-publisher/>" />
                                                <meta itemprop="thumbnailUrl" content="<nt:video-thumbnail/>" />
                                                <meta itemprop="contentURL" content="<nt:video-path/>" />
                                                <meta itemprop="keywords" content="<nt:video-tags/>" />
                                                <meta itemprop="duration" content="<nt:video-duration/>" />
                                                <meta itemprop="bitrate" content="<nt:video-bitrate/>" />
                                                <cms:include page="TS_Common_VideoFlash.jsp">
                                                    <cms:param name="video">${videopath}</cms:param>
                                                    <cms:param name="imagen"><nt:video-thumbnail/></cms:param>
                                                    <cms:param name="titulo"><nt:video-title/></cms:param>
                                                    <cms:param name="width" value="100%"/>
                                                    <cms:param name="height" value="<%=height %>"/>
                                                </cms:include>
                                            </li>
                                        </nt:video-flash>

                                        <nt:video-youtube>
                                            <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                <meta itemprop="name" content='<nt:video-title/>' />
                                                <meta itemprop="publisher" content="<nt:video-publisher/>" />
                                                <meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
                                                <meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" />
                                                <iframe id="player<%=contadorVideo%>" class="iframeYT" width="100%" height="<%=height %>" src="//www.youtube.com/embed/<nt:video-youtubeid/>?enablejsapi=1&version=3&playerapiid=player<%=contadorVideo%>" frameborder="0" allowfullscreen> </iframe>
                                                <% contadorVideo++; %>
                                            </li>
                                        </nt:video-youtube>

                                        <nt:video-embedded>
                                            <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                <meta itemprop="name" content='<nt:video-title/>' />
                                                <nt:video-code />
                                            </li>
                                        </nt:video-embedded>

                                    </ul>
                                </div>
                            </nt:conditional-include>
                        </nt:conditional-include>

                        <nt:conditional-include oncondition="${news.detailPreview != 'imagen'}">
                            <nt:conditional-include oncondition="${news.videoscount > 0}">
                                <div id="videos">
                                    <ul class="slides">
                                        <nt:conditional-include oncondition="${news.detailPreview == 'videoFlash'}">
                                            <c:set var="videopath" value="" />
                                            <nt:video-flash>
                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                    <c:set var="videopath">
                                                        <nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/>
                                                    </c:set>
                                                    <meta itemprop="name" content='<nt:video-title/>' />
                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
                                                    <meta itemprop="thumbnailUrl" content="<nt:video-thumbnail/>" />
                                                    <meta itemprop="contentURL" content="<nt:video-path/>" />
                                                    <meta itemprop="keywords" content="<nt:video-tags/>" />
                                                    <meta itemprop="duration" content="<nt:video-duration/>" />
                                                    <meta itemprop="bitrate" content="<nt:video-bitrate/>" />
                                                    <cms:include page="TS_Common_VideoFlash.jsp">
                                                        <cms:param name="video">${videopath}</cms:param>
                                                        <cms:param name="imagen"><nt:video-thumbnail/></cms:param>
                                                        <cms:param name="titulo"><nt:video-title/></cms:param>
                                                        <cms:param name="width" value="100%"/>
                                                        <cms:param name="height" value="<%=height %>"/>
                                                    </cms:include>
                                                </li>
                                            </nt:video-flash>

                                            <nt:video-youtube>
                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                    <meta itemprop="name" content='<nt:video-title/>' />
                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
                                                    <meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
                                                    <meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" />
                                                    <iframe id="player<%=contadorVideo%>" class="iframeYT" width="100%" height="<%=height %>" src="//www.youtube.com/embed/<nt:video-youtubeid/>?enablejsapi=1&version=3&playerapiid=player<%=contadorVideo%>" frameborder="0" allowfullscreen> </iframe>
                                                    <% contadorVideo++; %>
                                                </li>
                                            </nt:video-youtube>

                                            <nt:video-embedded>
                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                    <meta itemprop="name" content='<nt:video-title/>' />
                                                    <nt:video-code />
                                                </li>
                                            </nt:video-embedded>
                                        </nt:conditional-include>

                                        <nt:conditional-include oncondition="${news.detailPreview == 'videoYouTube'}">
                                            <nt:video-youtube>
                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                    <meta itemprop="name" content='<nt:video-title/>' />
                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
                                                    <meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
                                                    <meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" />
                                                    <iframe id="player<%=contadorVideo%>" class="iframeYT" width="100%" height="<%=height %>" src="//www.youtube.com/embed/<nt:video-youtubeid/>?enablejsapi=1&version=3&playerapiid=player<%=contadorVideo%>" frameborder="0" allowfullscreen> </iframe>
                                                    <% contadorVideo++; %>
                                                </li>
                                            </nt:video-youtube>

                                            <c:set var="videopath" value="" />
                                            <nt:video-flash>
                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                    <c:set var="videopath">
                                                        <nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/>
                                                    </c:set>
                                                    <meta itemprop="name" content='<nt:video-title/>' />
                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
                                                    <meta itemprop="thumbnailUrl" content="<nt:video-thumbnail/>" />
                                                    <meta itemprop="contentURL" content="<nt:video-path/>" />
                                                    <meta itemprop="keywords" content="<nt:video-tags/>" />
                                                    <meta itemprop="duration" content="<nt:video-duration/>" />
                                                    <meta itemprop="bitrate" content="<nt:video-bitrate/>" />
                                                    <cms:include page="TS_Common_VideoFlash.jsp">
                                                        <cms:param name="video">${videopath}</cms:param>
                                                        <cms:param name="imagen"><nt:video-thumbnail/></cms:param>
                                                        <cms:param name="titulo"><nt:video-title/></cms:param>
                                                        <cms:param name="width" value="100%"/>
                                                        <cms:param name="height" value="<%=height %>"/>
                                                    </cms:include>
                                                </li>
                                            </nt:video-flash>

                                            <nt:video-embedded>
                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                    <meta itemprop="name" content='<nt:video-title/>' />
                                                    <nt:video-code />
                                                </li>
                                            </nt:video-embedded>
                                        </nt:conditional-include>

                                        <nt:conditional-include oncondition="${news.detailPreview == 'videoEmbedded'}">
                                            <nt:video-embedded>
                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                    <meta itemprop="name" content="<nt:video-title/>" />
                                                    <nt:video-code />
                                                </li>
                                            </nt:video-embedded>

                                            <c:set var="videopath" value="" />
                                            <nt:video-flash>
                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                    <c:set var="videopath"><nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/></c:set>
                                                    <meta itemprop="name" content='<nt:video-title/>' />
                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
                                                <meta itemprop="thumbnailUrl" content="<nt:video-thumbnail/>" />
                                                <meta itemprop="contentURL" content="<nt:video-path/>" />
                                                <meta itemprop="keywords" content="<nt:video-tags/>" />
                                                <meta itemprop="duration" content="<nt:video-duration/>" />
                                                <meta itemprop="bitrate" content="<nt:video-bitrate/>" />
                                                <cms:include page="TS_Common_VideoFlash.jsp">
                                                    <cms:param name="video">${videopath}</cms:param>
                                                    <cms:param name="imagen"><nt:video-thumbnail/></cms:param>
                                                    <cms:param name="titulo"><nt:video-title/></cms:param>
                                                    <cms:param name="width" value="100%"/>
                                                    <cms:param name="height" value="<%=height %>"/>
                                                </cms:include>
                                                </li>
                                            </nt:video-flash>

                                            <nt:video-youtube>
                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                                    <meta itemprop="name" content='<nt:video-title/>' />
                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
                                                    <meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
                                                    <meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" />
                                                    <iframe id="player<%=contadorVideo%>" class="iframeYT" width="100%" height="<%=height %>" src="//www.youtube.com/embed/<nt:video-youtubeid/>?enablejsapi=1&version=3&playerapiid=player<%=contadorVideo%>" frameborder="0" allowfullscreen> </iframe>
                                                    <% contadorVideo++; %>
                                                </li>
                                            </nt:video-youtube>
                                        </nt:conditional-include>
                                    </ul>
                                </div>
                            </nt:conditional-include>
                            <nt:conditional-include oncondition="${news.imagescount > 0}">
                                <div id="fotos">
                                    <ul class="slides">
                                        <nt:image-gallery>
                                            <li itemscope class=".itemscope" itemtype="http://schema.org/ImageObject">
                                                <c:set var="imageDescription" scope="page"><nt:image-description/></c:set>
                                                                <c:set var="imageSource" scope="page"><nt:image-source/></c:set>
                                                <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource != '')}">
                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title="<nt:image-description/> | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
                                                    <div class="caption" content='<nt:image-description/>'><h2><nt:image-description/> | Foto: <nt:image-source/></h2></div>
                                                </nt:conditional-include>
                                                <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource == '')}">
                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title='<nt:image-description/>' width="<%=width %>" height="<%=height %>" />
                                                    <div class="caption" content='<nt:image-description/>'><h2><nt:image-description/></h2></div>
                                                </nt:conditional-include>
                                                <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource != '')}">
                                                    <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title="${news.titles[news.titleDetailNum]} | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
                                                    <div class="caption" content='<nt:image-description/>'><h2><nt:image-description/> | Foto: <nt:image-source/></h2></div>
                                                </nt:conditional-include>
                                                <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource == '')}">
                                                    <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title='${news.titles[news.titleDetailNum]}' width="<%=width %>" height="<%=height %>" />
                                                </nt:conditional-include>
                                            </li>
                                        </nt:image-gallery>
                                    </ul>
                                </div>
                            </nt:conditional-include>
                        </nt:conditional-include>

                        <nt:conditional-include oncondition="${news.imagescount == 0 && news.videoscount == 0}">
                            <div id="fotos">
                                <nt:preview-image>
                                        <c:set var="imageDescription" scope="page">
                                            <nt:image-description/>
                                        </c:set>
                                        <c:set var="imageSource" scope="page">
                                            <nt:image-source/>
                                        </c:set>
                                        <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource != '')}">
                                            <img class="img-responsive" itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title="<nt:image-description/> | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
                                        </nt:conditional-include>
                                        <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource == '')}">
                                            <img class="img-responsive" itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title='<nt:image-description/>' width="<%=width %>" height="<%=height %>" />
                                        </nt:conditional-include>
                                        <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource != '')}">
                                            <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
                                            <img class="img-responsive" itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title="${news.titles[news.titleDetailNum]} | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
                                        </nt:conditional-include>
                                        <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource == '')}">
                                            <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
                                            <img class="img-responsive" itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title='${news.titles[news.titleDetailNum]}' width="<%=width %>" height="<%=height %>" />
                                        </nt:conditional-include>
                                </nt:preview-image>
                            </div>
                        </nt:conditional-include>
                        <!-- FIN MULTIMEDIA -->
                    </div>
                    
                    
                    
                    
                  <%-- cuerpo de la nota --%>  
		<p>
		    <nt:body-splitter>
                    <nt:polls-dynamic-position style="TS-ES/NOTA"> </nt:polls-dynamic-position>
                        <c:set var="bodyP" scope="page">
                            <nt:body-paragraph/>
                        </c:set>
                        <%-- Verificar si El parrafo contiene un Iframe, que a su vez sea un Video de Youtube, modifica sus atributos. Coloca que  pertenece a la clase:'vid-youtube', height='100%' y width='100%' --%>
                        <%String bodyParagrahp=pageContext.getAttribute("bodyP").toString();
                            String bodyPa="";
                            if((bodyParagrahp.contains("<iframe ")) && (bodyParagrahp.contains("youtube"))){
                                bodyParagrahp=bodyParagrahp.replace("height="," class='vid-youtube' height=");
                                String[] cortos= bodyParagrahp.split(" ");
                                    for (int i = 0; i < cortos.length; i++) {
                                        if (cortos[i].contains( "height=")) {
                                            cortos[i]="height='100%'";
                                        }
                                        if (cortos[i].contains( "width=")) {
                                            cortos[i]="width='100%'></iframe></p>";
                                        }
                                        bodyPa=bodyPa+" "+ cortos[i];
                                    }
                                bodyParagrahp=bodyPa;
                             }
                        %>
		        <%=bodyParagrahp%>
                    </nt:body-splitter>
		</p>
		
		<p>
		    <nt:tags-list separator=",">
                        <nt:conditional-include onposition="1">
                            <div class="tagBarNews" itemprop="keywords" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
                                <h4>Tags</h4>
                        </nt:conditional-include>
                        <a class="btn btn-default" href="/tags/<nt:tags-item/>" alt="<nt:tags-item/>" title="<nt:tags-item/>" itemprop="title">
                            <nt:tags-item/>
                        </a>
                        <nt:conditional-include onposition="last">
                            </div>
                        </nt:conditional-include>
                    </nt:tags-list>
                </p>   
                
                <div class="social_area wow fadeInLeft">
                
                <%--  compartir en redes socuales --%>
                                     <cms:include page="TS_Common_RedesSocialesNotaJo.jsp" >
                                     <cms:param name="link"><nt:link/></cms:param>
                                     </cms:include>                                     
                               	 
                                
                  <%-- ul>
                    <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                    <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                    <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                    <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                    <li><a href="#"><span class="fa fa-pinterest"></span></a></li>
                  </ul --%>
                </div>
                <%-- notas relacionadas --%>
                <div class="related_post">
                    <h2 class="wow fadeInLeftBig">Relacionados: <i class="fa fa-thumbs-o-up"></i></h2>
                        <ul class="recentpost_nav relatedpost_nav wow fadeInDown animated">
                    <nt:news>
                <c:set var="i" value="0" scope="page"/>
                <ul class="recentpost_nav relatedpost_nav wow fadeInDown animated">    
                    <nt:related-news size="3">  
                    <c:set var="i" value="${i+1}" />            
                    <c:if test="${i<= 3 }">                                                 
                        <li>
                            <nt:conditional-include oncondition="${news.homePreview == 'imagen'}">
                                <nt:preview-image>
                                    <meta itemprop="description" content='${imageDescription}'>
                                    <%-- imagenes de las notas relacionadas --%>
                                    <img itemprop="contentURL" src="<nt:image-path width='180' height='120' scaletype='1'/>" data-original="<nt:image-path width='180' height='120' scaletype='2'/>" width='180' height='120' alt="${imageDescription}" />
                                </nt:preview-image>
                            </nt:conditional-include>
                            <%-- notas relacionadas --%>
                            <a href="<nt:link/>" title="<nt:title value='home' />" alt="<nt:title value='home' />">
                                <nt:title value="home" maxlength="63" />
                            </a>
                       </li>                                                                                     
                   </c:if> 
                </nt:related-news>  
                                
            </nt:news>  

                    
                    <!-- FIN Relacionados-->
                            
                          
                </ul>
            </div>
            
	    <div class="single_post_content">
	    	<%-- bloque de comentarios --%>
                <cms:include page="TS_Article_CommentsJo.jsp" />
            </div>
                                      
                                      
            <div class="clearfix"></div>
                  <%-- ul class="recentpost_nav relatedpost_nav wow fadeInDown animated">
                    <li><a href="#"><img alt="" src="/arte/imagenesJo/150x80.jpg"></a> <a href="#" class="recent_title"> Curabitur ac dictum nisl eu hendrerit ante</a></li>
                    <li><a href="#"><img alt="" src="/arte/imagenesJo/150x80.jpg"></a> <a href="#" class="recent_title"> Curabitur ac dictum nisl eu hendrerit ante</a></li>
                    <li><a href="#"><img alt="" src="/arte/imagenesJo/150x80.jpg"></a> <a href="#" class="recent_title"> Curabitur ac dictum nisl eu hendrerit ante</a></li>
                  </ul --%>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
          <div class="row">
            <div class="right_bar">
              <div class="single_leftbar wow fadeInDown">
                <h2><span>Nuevas</span></h2>
                <div class="singleleft_inner">
                    <ul class="catg3_snav ppost_nav wow fadeInDown">
                        <cms:include page="../elements/TS_Common_RightColumnJo.jsp" >
				<cms:param name="template">Analisis</cms:param>
			</cms:include> 
		    </ul>
                  
                </div>
              </div>
              <div class="single_leftbar wow fadeInDown">
                <h2><span>Publicidad</span></h2>
                <div class="singleleft_inner"> 
                	<cms:include page="TS_Common_Banners.jsp">
							<cms:param name="template">Analysis</cms:param>
							<cms:param name="key">Show-Promotion-220x145-a</cms:param>
						</cms:include>
                </div>
              </div>
              <div class="single_leftbar wow fadeInDown">
                <ul class="nav nav-tabs custom-tabs" role="tablist">
                  <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Most Popular</a></li>
                  <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Most Reader</a></li>
                  <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Recent Comment</a></li>
                </ul>
                <div class="tab-content">
                  <div role="tabpanel" class="tab-pane fade in active" id="home">
                    <ul class="catg3_snav ppost_nav wow fadeInDown">
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div role="tabpanel" class="tab-pane fade" id="profile">
                    <ul class="catg3_snav ppost_nav wow fadeInDown">
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div role="tabpanel" class="tab-pane fade" id="messages">
                    <ul class="catg3_snav ppost_nav wow fadeInDown">
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                          <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="single_leftbar wow fadeInDown">
                <h2><span>Blog Archive</span></h2>
                <div class="singleleft_inner">
                  <div class="blog_archive">
                    <form action="#">
                      <select>
                        <option value="">Blog Archive</option>
                        <option value="">October(20)</option>
                      </select>
                    </form>
                  </div>
                </div>
              </div>
              <div class="single_leftbar wow fadeInDown">
                <h2><span>Labels</span></h2>
                <div class="singleleft_inner">
                  <ul class="label_nav">
                    <li><a href="#">Arts</a></li>
                    <li><a href="#">Cinema</a></li>
                    <li><a href="#">Comedy</a></li>
                    <li><a href="#">Sports</a></li>
                    <li><a href="#">Tourism</a></li>
                    <li><a href="#">Videos</a></li>
                    <li><a href="#">Nature</a></li>
                  </ul>
                </div>
              </div>
              <div class="single_leftbar wow fadeInDown">
                <h2><span>Links</span></h2>
                <div class="singleleft_inner">
                  <ul class="link_nav">
                    <li><a href="#">Blog Home</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Error Page</a></li>
                    <li><a href="#">Wpfreeware</a></li>
                    <li><a href="#">Facebook Account</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <footer id="footer">
      <div class="footer_top">
        <div class="col-lg-3 col-md-3 col-sm-6">
          <div class="single_footer_top wow fadeInLeft">
            <h2>Follow By Email</h2>
            <div class="subscribe_area">
              <p>"Subscribe here to get our newsletter, it is safe just Put your Email and click subscribe"</p>
              <form action="#">
                <div class="subscribe_mail">
                  <input class="form-control" type="email" placeholder="Email Address">
                  <i class="fa fa-envelope"></i></div>
                <input class="submit_btn" type="submit" value="Submit">
              </form>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6">
          <div class="single_footer_top wow fadeInLeft">
            <h2>Popular Post</h2>
            <ul class="catg3_snav ppost_nav">
              <li>
                <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                  <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                </div>
              </li>
              <li>
                <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                  <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                </div>
              </li>
              <li>
                <div class="media"> <a class="media-left" href="#"> <img src="/arte/imagenesJo/70x70.jpg" alt=""> </a>
                  <div class="media-body"> <a class="catg_title" href="#"> Aliquam malesuada diam eget turpis varius</a></div>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6">
          <div class="single_footer_top wow fadeInRight">
            <h2>Labels</h2>
            <ul class="footer_labels">
              <li><a href="#">Comedy</a></li>
              <li><a href="#">Arts</a></li>
              <li><a href="#">Cinema</a></li>
              <li><a href="#">Nature</a></li>
              <li><a href="#">Sports</a></li>
              <li><a href="#">Tourism</a></li>
              <li><a href="#">Videos</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6">
          <div class="single_footer_top wow fadeInRight">
            <h2>Contact Form</h2>
            <form action="#" class="contact_form">
              <label>Name</label>
              <input class="form-control" type="text">
              <label>Email*</label>
              <input class="form-control" type="email">
              <label>Message*</label>
              <textarea class="form-control" cols="30" rows="10"></textarea>
              <input class="send_btn" type="submit" value="Send">
            </form>
          </div>
        </div>
      </div>
      <div class="footer_bottom">
        <div class="footer_bottom_left">
          <p>Copyright &copy; 2045</p>
        </div>
        <div class="footer_bottom_right">
          <ul>
            <li><a class="tootlip" data-toggle="tooltip" data-placement="top" title="Twitter" href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a class="tootlip" data-toggle="tooltip" data-placement="top" title="Facebook" href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a class="tootlip" data-toggle="tooltip" data-placement="top" title="Googel+" href="#"><i class="fa fa-google-plus"></i></a></li>
            <li><a class="tootlip" data-toggle="tooltip" data-placement="top" title="Youtube" href="#"><i class="fa fa-youtube"></i></a></li>
            <li><a class="tootlip" data-toggle="tooltip" data-placement="top" title="Rss" href="#"><i class="fa fa-rss"></i></a></li>
          </ul>
        </div>
      </div>
    </footer>
  </div>
</div>


</nt:news>


<%!
    public String CalcularDias(String fechaNota) {
        Date dateNow = new Date();
        SimpleDateFormat dateformatddMMyyyy = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
        String date_to_string = dateformatddMMyyyy.format(dateNow);

        String fechaInicial = fechaNota;
        String fechaFinal = date_to_string;

        java.util.GregorianCalendar jCal = new java.util.GregorianCalendar();
        java.util.GregorianCalendar jCal2 = new java.util.GregorianCalendar();
        jCal.set(Integer.parseInt(fechaInicial.substring(6, 10)), Integer.parseInt(fechaInicial.substring(3, 5)) - 1, Integer.parseInt(fechaInicial.substring(0, 2)), Integer.parseInt(fechaInicial.substring(11, 13)), Integer.parseInt(fechaInicial.substring(14, 16)), Integer.parseInt(fechaInicial.substring(17, 19)));
        jCal2.set(Integer.parseInt(fechaFinal.substring(6, 10)), Integer.parseInt(fechaFinal.substring(3, 5)) - 1, Integer.parseInt(fechaFinal.substring(0, 2)), Integer.parseInt(fechaFinal.substring(11, 13)), Integer.parseInt(fechaFinal.substring(14, 16)), Integer.parseInt(fechaFinal.substring(17, 19)));

        long diferencia = jCal2.getTime().getTime() - jCal.getTime().getTime();
        double minutos = diferencia / (1000 * 60);
        long horas = (long) (minutos / 60);
        long minuto = (long) (minutos % 60);
        long segundos = (long) diferencia % 1000;
        long dias = horas / 24;

        String[] mesesAnio = new String[12];
        mesesAnio[0] = "31";

        if (jCal.isLeapYear(jCal.YEAR)) {
            mesesAnio[1] = "29";
        } else {
            mesesAnio[1] = "28";
        }
        mesesAnio[2] = "31";
        mesesAnio[3] = "30";
        mesesAnio[4] = "31";
        mesesAnio[5] = "30";
        mesesAnio[6] = "31";
        mesesAnio[7] = "31";
        mesesAnio[8] = "30";
        mesesAnio[9] = "31";
        mesesAnio[10] = "30";
        mesesAnio[11] = "31";
        int diasRestantes = (int) dias;
        int totalMeses = 0;
        int mesActual = jCal.MONTH;
        for (int i = 0; i <= 11; i++) {
            if ((mesActual + 1) >= 12) {
                mesActual = i;
            }
            if ((diasRestantes - Integer.parseInt(mesesAnio[mesActual])) >= 0) {
                totalMeses++;
                diasRestantes = diasRestantes - Integer.parseInt(mesesAnio[mesActual]);
                mesActual++;
            } else {
                break;
            }
        }
        horas = horas % 24;
        String salida = "";

        int diaEntero = Integer.parseInt(String.valueOf(diasRestantes));
        int horasTranscurridas = Integer.parseInt(String.valueOf(horas));
        int minTranscurridos = Integer.parseInt(String.valueOf(minuto));
        System.out.println(diaEntero);

        if (diaEntero > 0) {

            salida = "";

        } else {

            if (horasTranscurridas > 1) {
                salida = "(Hace " + String.valueOf(horas) + " horas " + String.valueOf(minuto) + " minutos)";
            } else {
                if ((horasTranscurridas < 2) && (horasTranscurridas != 0)) {
                    salida = "(Hace " + String.valueOf(horas) + " hora " + String.valueOf(minuto) + " minutos)";
                } else {
                    if ((minTranscurridos > 1) || (minTranscurridos == 0)) {
                        salida = "(Hace " + String.valueOf(minuto) + " minutos)";
                    } else {
                        salida = "(Hace " + String.valueOf(minuto) + " minuto)";
                    }

                }
            }
        }

        return salida;
    }
%>


</body>
</html>
