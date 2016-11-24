<%@ include file="../elements/TS_Common_Libraries.jsp" %>

<%
    Boolean worldPage = false;
    Boolean reporteroPage = false;
    Boolean agendaPage = false;
    Boolean analisisPage = false;
    Boolean audioPage = false;
    Boolean galleryPage = false;
    Boolean InfographicsPage = false;
    Boolean WebSpecial = false;
    Boolean Opinion = false;
    Boolean NotaScrollPage = false;
%>

<nt:news>
    <c:set var="state" scope="page">${news.state} </c:set> 
    <%
      String estado = (String) pageContext.getAttribute("state");
      if (estado.equalsIgnoreCase("pendienteModeracion") || estado.equalsIgnoreCase("rechazada")) {
    %>
    <script type="text/javascript">
        window.location.href = "/index.html";
    </script>
    <% } %>
    <c:set var="seccion" scope="page">
        <nt:section-name/>
    </c:set>
<c:set var="val" value="${seccion}"/>
    <c:set var="category" scope="page">
        <nt:categories>
            <nt:category-description/>
        </nt:categories>
    </c:set>
<script>

//console.log("la seccion es art es ${seccion}");
</script>
    <jsp:useBean id="category" type="java.lang.String" />
    <jsp:useBean id="seccion" type="java.lang.String" />   
</nt:news>


<c:choose>
	<c:when test="${seccion.equals('integracionJo')}">
		<cms:include page="I_TS_Interno_NotaJo.jsp" />
	</c:when>
	<c:otherwise>
		<cms:include page="I_TS_NewsView.jsp" />
	</c:otherwise>
</c:choose>
