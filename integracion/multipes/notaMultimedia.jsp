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
