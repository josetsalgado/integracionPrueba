<%@ include file="TS_Common_Libraries.jsp" %>
<style>
#footer {
	background: #ffffff;
}
</style>
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/skel.min.js"></script>
<script src="../resources/js/util.js"></script>
<script src="../resources/js/mainJo.js"></script>

<footer id="footer">
	<div class="inner">
		<div class="flex">
			<div class="copyright">
				La nueva Televisión del Sur C.A. (TVSUR) RIF: G-20004500-0.
			</div>
			<div class="legal">
				<small></small>
				<span>© 2014 Telesur</span>
			</div>
			
			<a href="http://facebook.com/teleSUR" target="_blank"><cms:img src="/arte/redes/footer/facebook.png" scaleType="2" alt="facebook" /></a>
			<a href="http://twitter.com/teleSURtv" target="_blank"><cms:img src="/arte/redes/footer/twitter.png" scaleType="2" alt="twitter" /></a>
			<a href="https://plus.google.com/118206615613074383260/posts" target="_blank"><cms:img src="/arte/redes/footer/gplus.png" scaleType="2" alt="google plus" /></a>
			<a href="http://instagram.com/telesurtv" target="_blank"><cms:img src="/arte/redes/footer/instagram.png" scaleType="2" alt="instagram" /></a>
			<a href="http://www.pinterest.com/telesurtv/" target="_blank"><cms:img src="/arte/redes/footer/pinterest.png" scaleType="2" alt="pinteres" /></a>
			<a href="https://www.youtube.com/user/telesurtv" target="_blank"><cms:img src="/arte/redes/footer/youtube.png" scaleType="2" alt="youtube" /></a>
			
			
		</div>
		<div class="wpFootSuscrip">
		<cms:include page="TS_Common_NewsletterJo.jsp" >
			<cms:param name="name">footer</cms:param>  
		</cms:include> 
	</div>
	</div>
</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>


</body>

</html>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-736060-1', 'auto');
  ga('send', 'pageview');

</script>

<script src="<cms:link>/system/modules/com.tfsla.diario.telesur/resources/js/jquery.flexslider.js</cms:link>"></script>
<script src="<cms:link>/system/modules/com.tfsla.diario.telesur/resources/js/function.js</cms:link>"></script>
<script src="<cms:link>/system/modules/com.tfsla.diario.telesur/resources/js/tabs.min.jquery.js</cms:link>"></script>
<script src="<cms:link>/system/modules/com.tfsla.diario.telesur/resources/js/jquery.lazyload.min.js</cms:link>"></script>
	

<script type="text/javascript" src="<cms:link>/system/modules/com.tfsla.diario.newsTags/resources/js/DirectEditButtons.js</cms:link>"></script>
<script type="text/javascript" src="<cms:link>/system/modules/com.tfsla.diario.newsTags/resources/js/pollsFunctions.js</cms:link>"></script>
<script type="text/javascript" src="<cms:link>/system/modules/com.tfsla.diario.newsTags/resources/js/commentsFunctions.js</cms:link>"></script>
<script type="text/javascript" src="<cms:link>/system/modules/com.tfsla.diario.newsTags/resources/js/rankTagsFiller.js</cms:link>"></script>	
<script>		
	$(function() {	
	    $("img").lazyload({    
	        placeholder : "arte/grey.gif",	
	    	effect : "fadeIn"	    	
	    });
	});
</script>
