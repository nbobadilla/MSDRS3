<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->

<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/news-events.cfm'>
<cfoutput>
    <a class="sr-only sr-only-focusable" href="#pageURL###mainContent">Skip Side Navigation</a>
    <div class="container-fluid pt-3">
        <div class="row">
            <div class="col-lg-3 bg">
                <nav class="nav flex-column mb-3 sticky-top sticky-padding rounded" id="sideNav">
                    <a class="nav-link text-secondary" href="#pageURL###title1">Emails/Newsletters</a>
                    <a class="nav-link text-secondary" href="#pageURL###title2">Student Events Database</a>
                    <a class="nav-link text-secondary" href="#pageURL###title3">Dare to Dream</a>
                    <a class="nav-link text-secondary" href="#pageURL###title5">Voices from the Field</a>
                    <a class="nav-link text-secondary" href="#pageURL###title4">WA MEP Conference 2019 <span class="badge badge-warning">Register Now!</span></a>
                    <nav class="nav flex-column rounded ml-4">
                        <a class="nav-link text-secondary" href="/main/attendee-registration.cfm">Attendee Registration</a>
                        <a class="nav-link text-secondary" href="/main/exhibitor-registration.cfm">Exhibitor Registration</a>
                    </nav>
                    <!---- Add links with nav-link class like the example above this comment--->
                    <a aria-hidden="true" class="nav-link d-none d-lg-block text-secondary" href="#pageURL###body">Back to Top</a>
                </nav>
            </div>
            <div class="col-lg-9" id="mainContent">
                <div id="title1" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Emails/Newsletters</h2>
                    <!--- Content goes here. --->
                    <p>Coming Soon!</p>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a>
                    <hr/>   
                </div>
                <div id="title2" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Student Events Database</h2>
                    <!--- Content goes here. --->
                    <p>
                        Manage and add migrant students in your District to events such as Dare to Dream and Voices from the Field 
                        using the Events Database.
                    </p>
                    <cfset redirect="Student Events">
                    <cfinclude  template="/layouts/log-in.cfm">
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a>
                    <hr/>   
                </div>
                <div id="title3" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Dare to Dream</h2>
                    <!--- Content goes here. --->
                    <p>
                        One amazing week of learning, held at a university campus. 
                        Classes are taught by university professors and are full hands-on, 
                        interactive activities promoting leadership, math, and/or science skills!
                    </p>
                    <p>
                        <strong>When:</strong> To Be Determined<br/>
                        <strong>Where:</strong> To Be Determined
                    </p>
                    <p>
                        Resources Coming Soon!
                    </p>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a>
                    <hr/>   
                </div>
                
                <div id="title4" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Voices from the Field</h2>
                    <!--- Content goes here. --->
                    <p>
                        A program to engage middle-school aged children of migrant workers in project-based 
                        learning experiences that will address multiple areas of academic learning including 
                        science, art, and communication skills.
                    </p>
                    <p>
                        <strong>When:</strong> To Be Determined<br/>
                        <strong>Where:</strong> To Be Determined
                    </p>
                    <p>
                        Resources Coming Soon!
                    </p>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a> 
                    <hr/> 
                </div>
                <div id="title5" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Washington State Migrant Education Program Conference 2019 <small class="badge badge-warning">Register Now!</small></h2>
                    <!--- Content goes here. --->
                    
                    <p>
                        A series of trainings and conference sessions will be provided to enhance the program goals for 
                        Washington State's Migrant Education Program.
                    </p>
                    <p>
                        <strong>When:</strong> August 15 – 16, 2019<br/>
                        <strong>Where:</strong> Yakima Convention Center 10 N 8th St, Yakima, WA 98901
                    </p>
                    <p class="d-flex flex-column">
                        <a href="/main/attendee-registration.cfm" class="p-1">Click here to register as an <strong>Attendee</strong></a>
                        <a href="/main/exhibitor-registration.cfm" class="p-1">Click here to register as an <strong>Exhibitor</strong></a>

                    </p>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a>
                      
                </div>
            </div>
        </div>
    </div>
</cfoutput>