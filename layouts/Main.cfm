<cfoutput>
<cfparam name="pageURL" default="">
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>MSDRS</title>
	<meta name="description" content="MSDRS Application Template">
	<meta name="author" content="MSDRS">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!---Base URL Might Need to Remove this--->
	<cfif findNoCase(".cloudfront.net",cgi.server_name) GT 0 OR FindNoCase("www.msdr.org",cgi.server_name) GT 0>
		<base href="https://#cgi.server_name#/" />
	<cfelse>
		<base href="#event.getHTMLBaseURL()#" />
	</cfif>

	<!--- JS ---> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<!---<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>--->

	<!--- css --->
	<link rel="stylesheet" type="text/css" href="#html.elixirPath( "includes/css/app.css" )#" />
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">

    <!--- If there are any extracted Vue styles, they will be in this file --->
    <cfscript>
        if ( getCache( "template" ).getOrSet( "vue-styles", function() {
            return fileExists( html.elixirPath( "includes/js/app.css" ) );
        } ) ) {
            writeOutput( '<link rel="stylesheet" type="text/css" href="#html.elixirPath( "includes/js/app.css" )#" />' );
        }
	</cfscript>
	<!---CSS Styling to customize breakpoint of the nav bar and other Bootstrap styling extended--->
	<style>
		body{
			font-weight: 300;
		}
		strong{
			font-weight: bold
		}
		.navbar-expand-xl {
			flex-flow: wrap !important;
		}
		.bg-alert{
			background-color: ##ec9300/*##17a2b8*/  !important;
			background-image: url(includes/images/alert-warning@2x.png);
			background-position: -17px center;
    		background-repeat: no-repeat;
    		background-size: 80px 80px;
			display: flex;
			flex-direction: column;
			justify-content: center;
			/*position: relative;*/
		}
		.bg-alert a {
			color: rgba(255, 255, 255, 0.9) !important;
		}
		.bg-alert a:hover {
			color: white !important;
		}
		.bg-gray{
			background-color: ##f5f6f7 !important;
		}
		.bg-light-blue{
			background-color: ##e3f2fd !important;
		}
		.bg-nav{
			background-color: /*##62dd rgba(236, 147, 0, 0.9)*/ /* rgba(38, 174, 63, 1.0) rgba(78,139,249,1)*/ rgb(145,145,145,1)!important;
		}
		.navbar-dark .navbar-nav .nav-link {
			color: rgba(255, 255, 255, 0.8);
		}
		.navbar-dark .navbar-nav .nav-link:hover {
			color: white;
		}
		a{
			/*color: ##18a2b8 ;*/
		}
		footer p {
			font-size: 90%;
		}
		footer a {
			color: ##99a2ab;
		}
		footer a:hover {
			color: ##f8f9fa;
			text-decoration: none;
		}

		.logged-in, .pass-in{
			display: none;
		}

		.sticky-padding{
			top: 72px !important;
		}
		.scroll-anchor{
			position: relative;
			top: -56px;
			height: 0px;
			
		}
		##sideNav{
			z-index:0 !important;
		}
		.ui-tooltip {
			width: inherit;
			font-size: 80%;
			background-color: /*##EC92FE ##007bff ##7a44e3 ##17a2b8*/ ##444;
			color: white;
			border: none !important;
		}
		.ui-widget-shadow {
    		box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075) !important;
		}
		.navbar-nav .nav-link {
			padding-right: 1rem;
		}
		.navbar-dark ::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
			color: white;
			opacity: .7; /* Firefox */
		}

		.navbar-dark :-ms-input-placeholder { /* Internet Explorer 10-11 */
			color: white;
		}

		.navbar-dark ::-ms-input-placeholder { /* Microsoft Edge */
			color: white;
		}
		@media (min-width: 1250px){
			.navbar-expand-custom {
				flex-direction: row;
				flex-wrap: wrap;
				justify-content: flex-start;
			}
			.navbar-expand-custom .navbar-nav {
				flex-direction: row;
			}
			.navbar-expand-custom .navbar-nav .nav-link {
				padding-right: .5rem;
				padding-left: .5rem;
			}
			.navbar-expand-custom .navbar-collapse {
				display: flex!important;
			}
			.navbar-expand-custom .navbar-toggler {
				display: none;
			}
			.sticky-padding{
				top: 112px !important;
			}
			.scroll-anchor{
				position: relative;
				top: -96px;
				height: 0px;
			}
		}
		@media (max-width: 991px){
			.sticky-padding{
				position: initial !important;
			}
		}
		@media (max-width: 870px){
			##top-links{
				display: none;
			}
		}
	</style>
</head>

<body id="body">
	<a class="sr-only sr-only-focusable" href="#pageURL###mainBody">Skip Navigation</a>
	<!---Top Alert Bar--->
	<div id="nav-alert" class="bg-alert p-3">
		<a href="/main/news-events.cfm##conference" class="ml-5 pl-3 text-decoration-none">
			<!---Click here to register for the 2019 Washington State Migrant Education Program Conference.--->
			Thank you to all who registered to attend the State MEP Conference. 
            We have reached registration capacity. If you have any questions regarding onsite registration options, 
            please contact: <strong>Elizabeth Ramos</strong> at (509) 837-2712 or eramos@msdr.org.
		</a>
	</div>
	<nav id="mainNav" class="navbar sticky-top navbar-expand-custom navbar-dark bg-secondary shadow-sm">
		
		<a class="navbar-brand mr-auto" href="/" alt="Migrant Student Data, Recruitment and Support" aria-label="Return to Home Page">
			<!---<img src="includes/images/msdrs-logo.png" width="30" height="30" class="d-inline-block align-top" alt="MSDRS Logo">
			Migrant Student Data Recruitment & Support--->
			<img src="includes/images/msdrs-logo-full-white.png" class=" align-top d-none d-lg-block" alt="MSDRS Logo">
			<span class="d-lg-none">
				MSDRS
			</span>
		</a>
		<!---<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Site Search">
			<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
		</form>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="Email" placeholder="Email" aria-label="Log in Email">
			<input class="form-control mr-sm-2" type="Password" placeholder="Password" aria-label="Log in Password">
			<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Log In</button>
		</form>--->
		<small class="navbar-nav flex-sm-row mt-1" id="top-links">
			<a class="nav-link pt-0 logged-out" href="/main/log-in.cfm?redirect=FER">FER Scheduler</a>
			<a class="nav-link pt-0 logged-in" href="https://msis.msdr.org/msis/scheduler/index.cfm" aria-hidden="true">FER Scheduler</a>
			<a class="nav-link pt-0" href="http://health.msdr.org/">Health Program</a>
			<a class="nav-link pt-0" href="/main/news-events.cfm">MEP Events</a>
			<a class="nav-link pt-0" href="/main/pass.cfm">PASS</a>
		</small>
		<button class="navbar-toggler ml-sm-2" type="button" data-toggle="collapse" data-target="##navbarLinks" aria-controls="navbarLinks" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarLinks">
			<div class="navbar-nav mr-auto">
				<a id="navAbout" class="nav-item nav-link" href="/main/about-us.cfm">About Us</a>
				<a id="navDistrict" class="nav-item nav-link" href="main/district-directory.cfm">District Directory</a>
				<a id="navNews" class="nav-item nav-link" href="/main/news-events.cfm">News & Events</a>
				<a id="navResources" class="nav-item nav-link" href="/main/resources.cfm">Resources</a>
				<!---<a id="navLinks" class="nav-item nav-link" href="main/mep-links.cfm">MEP Links</a>--->
				<a id="navRequest" class="nav-item nav-link" href="/main/request-account.cfm">Request Account</a>
				<a id="navForgot" class="nav-item nav-link" href="/main/forgot-password.cfm">Forgot Password</a>
			</div>
			<form action="https://msis.msdr.org/scripts/_checkLogin.cfm" method="post" id="login" class="form-inline my-2 my-lg-0 logged-out" data-toggle="tooltip" data-placement="bottom" title="You can log into PASS from here too">
				<input class="form-control mr-sm-2 my-2 my-sm-0 bg-transparent text-light border-white" type="text" placeholder="Email or Username" name="fUsername" aria-label="Log in Email">
				<input class="form-control mr-sm-2 my-2 my-sm-0 bg-transparent text-light border-white" type="Password" placeholder="Password" name="fPassword" aria-label="Log in Password">
				<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Log In</button>
			</form>
			<!---<div class="navbar-nav pass-in border-right" aria-hidden="true">
				<a class="nav-item nav-link" href="https://msis.msdr.org/wapass123/main.cfm">Return to PASS</a>
			</div>--->
			<div id="msis-link" class="navbar-nav logged-in border-right" aria-hidden="true">
				<a class="nav-item nav-link" href="http://msis.msdr.org/msis/searchscreen/index.cfm">Return to MSIS</a>
			</div>
			<div class="navbar-nav logged-in" aria-hidden="true">
				<a class="nav-item nav-link" href="https://msis.msdr.org/scripts/logout.cfm">Log Out</a>
			</div>
			<!---
			<div class="navbar-nav">
				<a class="nav-item nav-link" href="##">Forgot Password</a>
				<a class="nav-item nav-link" href="##">Request Account</a>
			</div>
			--->
		</div>
	</nav>
	<!---Container And Views --->
	<div class="" id="mainBody" style="min-height: 53vh;">
		#renderView()#
		<a class="sr-only sr-only-focusable" href="#pageURL###body">End of Page, return to top</a>
	</div>

	<footer class="footer pt-3 align-bottom text-light bg-dark"  style="background-color: ##333;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3">
					<h6>Contact Us</h6>
					<p>
						<strong>Toll Free:</strong> (800) 274-6084<br/>
						<strong>Phone:</strong> (509) 837-2712<br/>
						<strong>Fax:</strong> (509) 837-9017<br/>
						<strong>Email:</strong> webmaster@msdr.org<br/>
						<a href="/main/about-us.cfm##staff">Staff Directory</a><br/>
						<a href="https://sunnyside.tedk12.com/hire/index.aspx">Employment Opportunities</a>
					</p>
				</div>
				<div class="col-lg-3">
					<h6>Visit Us</h6>
					<p>810-B East Custer Avenue<br/>
					Sunnyside <abbr title="Washington" aria-label="Washington">WA</abbr>, 98944<br/>
					<a href="https://goo.gl/maps/cyaDEFHP3TpgPSAj6" target="_blank">Google Maps</a><br/><br/>
					<Strong>Office Hours:</Strong> 8:00 AM – 5:00 PM
					
					
					
					</p>
				</div>
				<div class="col-lg-3">
					<h6>Navigation</h6>
					<p class="d-flex flex-column">
						
						<a href="/main/news-events.cfm##conference">State MEP Conference <span class="badge badge-warning">Registration Closed</span></a>
						<a href="/">Home</a>
						<a href="/main/log-in.cfm?redirect=FER"><abbr title="Family Eligibility Review" aria-label="Family Eligibility Review">FER</abbr> Scheduler</a>
						<a href="http://health.msdr.org/">Health Program</a>
						<a href="/main/news-events.cfm"><abbr title="Migrant Education Program" aria-label="Migrant Education Program">MEP</abbr> Events</a>
						<a href="/main/pass.cfm">PASS</a>
					</p>
				</div>
				<div class="col-lg-3">
					<p class="d-flex flex-column">
						<a href="/main/about-us.cfm">About Us</a>
						<a href="/main/district-directory.cfm">District Directory</a>
						<!---<a href="/main/mep-links.cfm">MEP Links</a>--->
						<a href="/main/news-events.cfm">News & Events</a>
						<a href="/main/resources.cfm">Resources</a>
						<a href="/main/request-account.cfm">Request Account</a>
						<a href="/main/forgot-password.cfm">Forgot Password</a>
					</p>
				</div>
			</div>
			<div class="row" style="background-color: inherit;">
				<div class="col-lg-12">
					<p class="text-secondary text-center mt-3">
						<small>Copyright 2019 Migrant Student Data Recruitment and Support. All rights reserved.
							<a href="#pageURL###body"><i class="glyphicon glyphicon-arrow-up"></i> Back to top</a>
						</small>
					</p>
				</div>
			</div>
		</div>
		
	</footer>
	<script type="application/javascript">
		/*function scrollTo(){
			//document.getElementById('staff').scrollIntoView();
			alert("I am an alert box!");
			//alert(id);
		}*/
		function jumpTo(id){
			//event.preventDefault();
			document.getElementById('staffHeader').focus();
			document.getElementById(id).scrollIntoView();
			
		}
	</script>

	<!--- MSIS Cookie Script --->
	<script>


		function getCookie(cname) {
			var name = cname + "=";
			var ca = document.cookie.split(';');
			for(var i = 0; i < ca.length; i++) {
				var c = ca[i];
				while (c.charAt(0) == ' ') {
					c = c.substring(1);
				}
				if (c.indexOf(name) == 0) {
					return c.substring(name.length, c.length);
				}
			}
			return "";
		}
		function checkCookie() {
			var user = getCookie("username");
			if (user != "") {
				alert("Welcome again " + user);
			} 
			else {
				user = prompt("Please enter your name:", "");
				if (user != "" && user != null) {
					setCookie("username", user, 365);
				}
			}
		}
		$(function(){
			//$('##msis-link').hide();
			if(decodeURIComponent(getCookie('MSISEXP')) != ""){
				$('.logged-in').show();
				$('.logged-out').hide();
			}
			else{
				$('.logged-out').show();
				$('.logged-in').hide();
			};
			if(decodeURIComponent(getCookie('PASSCOOKIE')) != ""){
				$('.pass-in').show();
				$('.pass-out').hide();
			}
			else{
				$('.pass-out').show();
				$('.pass-in').hide();
			};
			/*$(["/"]).each(
			function(index, value){
				$("##navPrimary [href='" + value + "']").closest("li").addClass("active");
			}
			);
			$.material.init();*/
			/*if( $('.navbar-toggler').attr('aria-expanded') === true ){
				alert('open!');
			}
			alert($('.navbar-toggler').attr('aria-expanded'));*/
			/*$( document ).on('show.bs.collapse', '.navbar', function () {
				// do something
				alert('hi');
			});*/
			//var offsets = document.getElementById('mainNav').getBoundingClientRect();
			//alert(offsets.top)
			$('[data-toggle="tooltip"]').tooltip();
			if( $('.navbar-toggler').css('display') == 'none' ){
				if(decodeURIComponent(getCookie('MSISEXP')) == ""){
					$('[data-toggle="tooltip"]').tooltip().tooltip("open");
					setTimeout(function(){ $('[data-toggle="tooltip"]').tooltip().tooltip("close"); }, 5000);
				}	
			}
			//$( '##login' ).focus(function(){$('[data-toggle="tooltip"]').tooltip().tooltip("open");});
			/*$( document ).scroll(function(){ $('[data-toggle="tooltip"]').tooltip().tooltip("close");});*/
			//$( document ).scroll(function(){ $('##ui-id-1').css({'top': window.scrollY + offsets.top + 'px'});});

			$( document ).scroll( 
				function(){ 
					var offsets = document.getElementById('mainNav').getBoundingClientRect();
					/*if( window.scrollY < 56){
						$('##ui-id-1').css({'top': window.scrollY + 150 + 'px'});
					}
					else{
						$('##ui-id-1').css({'top': window.scrollY + 100 + 'px'});
					}*/
					$('##ui-id-1').css({'top': window.scrollY + 102 + offsets.top + 'px'});
					
				}
			);

			
			//$( document ).scroll(function(){ alert('scroll');});
		});
	</script>

	<script type="application/javascript" src="#html.elixirPath( "includes/js/runtime.js" )#"></script>
    <script type="application/javascript" src="#html.elixirPath( "includes/js/vendor.js" )#"></script>
    <cfloop array="#prc.assetBag.getFooterContent()#" index="assetPath">
        <cfif right( assetPath, 2 ) EQ "js">
            <script type="application/javascript" src="#assetPath#"></script>
        </cfif>
    </cfloop>
	<!---This is causing a javascript error behind in inspect where it is looking for Vue. 
		However this is needed for the slideshow to work. We need to look into this--->
    <script type="application/javascript" src="#html.elixirPath( "includes/js/app.js" )#"></script>
</body>
</html>
</cfoutput>
