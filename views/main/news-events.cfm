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
                    <a class="nav-link text-secondary" href="#pageURL###conference">WA MEP Conference <!---<span class="badge badge-warning">Registration Closed</span>---></a>
                    <!---<nav class="nav flex-column rounded ml-4">
                        <a class="nav-link text-secondary" href="#link('grid')#">Sessions Grid</a>
                        <a class="nav-link text-secondary" href="/main/attendee-registration.cfm">Attendee Registration</a>
                        <a class="nav-link text-secondary" href="/main/exhibitor-registration.cfm">Exhibitor Registration</a>
                    </nav>--->
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
                    <div class="logged-out">
                        <cfset redirect="Student Events">
                        <cfinclude  template="/layouts/log-in.cfm">
                    </div>
                    
                    <a class="logged-in" href="https://msis.msdr.org/DTD/">Click here to go the the Student Events Database.</a>
                    
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
                <div id="conference" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Washington State Migrant Education Program Conference <!---<small class="badge badge-warning">Registration Closed</small>---></h2>
                    <!--- Content goes here. --->
                    
                    <p>
                        A series of trainings and conference sessions will be provided to enhance the program goals for 
                        Washington State's Migrant Education Program.
                    </p>
                    <p>
                        <strong>When:</strong> To Be Determined<br/>
                        <strong>Where:</strong> To Be Determined
                    </p>
                    <!---<div class="alert alert-warning" role="alert">
                        Thank you to all who registered to attend the State MEP Conference. 
                        We have reached registration capacity. If you have any questions regarding onsite registration options, 
                        please contact: <strong>Elizabeth Ramos</strong> at (509) 837-2712 or eramos@msdr.org.
                    </div>
                    <p class="d-flex flex-column">
                        <a href="/main/attendee-registration.cfm" class="p-1">Click here to register as an <strong>Attendee</strong></a>
                        <a href="/main/exhibitor-registration.cfm" class="p-1">Click here to register as an <strong>Exhibitor</strong></a>
                        <a href="#link('grid')#">Click here to download the 2019 State MEP Conference Sessions Grid</a>
                    </p>--->
                    
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a>
                      
                </div>
            </div>
        </div>
    </div>
</cfoutput>