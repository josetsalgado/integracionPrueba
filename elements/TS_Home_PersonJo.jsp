<%@ include file="TS_Common_Libraries.jsp" %>
<script type="text/javascript">
$(window).ready(function(){
  $('.flexslider').flexslider({
	animation: "slide",
	animationLoop: false,
	itemWidth: 250,
	itemHeight: 150,
	itemMargin: 20,
	pausePlay: false,
	start: function(slider){
	  $('body').removeClass('loading');
	}
  });
  $('.simpleSlide').flexslider({
	animation: "slide",
	start: function(slider){
	  $('body').removeClass('loading');
	}
  });
});

</script>
<style>
.flex {

-webkit-justify-content: space-between;
justify-content: space-around;

}

.flex-direction-nav .flex-disabled {opacity: 1!important;filter: alpha(opacity=0);cursor: default;}
.carruselPhotosSearch .flex-pauseplay, .flex-control-nav {display: inline;}

.wrapper {
	width:100%
}

section.wrapper, article.wrapper {
 pdding: 0px 0px 140px 140px;
}

.wrapper.style1.special {
	height:100px;
}
</style>

    <%-- div class="block resultados" --%>
    	<header>
	    <div class="cont conttitle">
                <h2>Resultados Perú</h2>
            </div>
	</header>
        <%-- div class="col" --%>
	<div class="flex flex-4">
            <nt:person-list state="1" size="2" tipo="personas/Peru_Decide/">
                 	                
		    <div class="box person">
			<div class="image round">
				<a href="http://www.telesurtv.net/pages/Especiales/votaciones-peru/peru/index.jsp" target="_blank" title="">	
					<img src="<nt:person-image scaletype='2' />"/>
                        	</a>	
			</div>
			<div class="overflow">
                        <h3><a href="" alt="" title=""> </a><nt:person-name /><br>(<nt:person-shortdescription />)</h3>	

                        <div>Resultados
                        <c:set var="divisor"></c:set>

                        <a href="" class="autor" alt="" title=""> 
                            ${divisor} 
                        </a>

                        </div>

                        <div class="captionr">
                            <div class="votes" style="width:<nt:person-custom2 />;"></div>
                            <span class="porcentual"><nt:person-custom2 /></span>
                        </div>
		    </div>
		</div>

            </nt:person-list>  
        </div>
    <%-- /div --%>
