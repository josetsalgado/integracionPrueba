<%@ include file="../elements/TS_Common_Libraries.jsp" %> 
<%
String link = (request.getParameter("link") == null ) ? "" : request.getParameter("link") ;
%>
<ul>
    <li>
        <a href="javascript:window.open('http://www.facebook.com/sharer.php?u=http://www.telesurtv.net<%=link%>','','width=400,height=200,left=180,top=250,left=700;toolbar=yes');void 0">
            <span class="fa fa-facebook"></span>
        </a>
    </li>	
    <li>
        <a href="javascript:window.open('https://twitter.com/share?url=http://www.telesurtv.net<%=link%>','','width=400,height=200,left=180,top=250,left=700;toolbar=yes');void 0">
            <span class="fa fa-twitter"></span>
        </a>
    </li>
    <li>
        <a href="javascript:window.open('https://plus.google.com/share?url=http://www.telesurtv.net<%=link%>','','width=500,height=200,left=180,top=250,left=700;toolbar=yes');void 0">
            <span class="fa fa-google-plus">
        </a>
    </li>
</ul>
                  
                  
                  <%-- ul>
                    <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                    <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                    <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                    <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                    <li><a href="#"><span class="fa fa-pinterest"></span></a></li>
                  </ul --%>
                  
                  

