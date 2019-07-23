<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->

<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/page-name.cfm'>
<cfoutput>
    <a class="sr-only sr-only-focusable" href="#pageURL###mainContent">Skip Side Navigation</a>
    <div class="container-fluid pt-3">
        <div class="row">
            <div class="col-lg-3">
                <nav class="nav flex-column mb-3 sticky-top sticky-padding rounded" id="sideNav">
                    <a class="nav-link text-secondary" href="#pageURL###title1">Title of Section 1</a>
                    <a class="nav-link text-secondary" href="#pageURL###title2">Title of Section 2</a>
                    <!---- Add links with nav-link class like the example above this comment--->
                    <a aria-hidden="true" class="nav-link d-none d-lg-block text-secondary" href="#pageURL###body">Back to Top</a>
                </nav>
            </div>
            <div class="col-lg-9" id="mainContent">
                <div id="title1" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Title 1</h2>
                    <!--- Content goes here. --->
                    <h4>Sub Section</h4>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a>
                    <hr/>   
                </div>
                <div id="title2" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Title 2</h2>
                    <!--- Content goes here. --->
                    <h4>Sub Section</h4>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a>
                    <hr/>   
                </div>
            </div>
        </div>
    </div>
</cfoutput>