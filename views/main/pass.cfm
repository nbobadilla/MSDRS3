<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->

<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/pass.cfm'>
<cfoutput>
    <div class="container-fluid pt-3 pb-4">
        <div class="row">
            <div class="col-lg-2">
                <nav class="nav flex-column mb-3 sticky-top sticky-padding rounded" id="sideNav">
                    <a class="nav-link text-secondary" href="#pageURL###pass">PASS</a>
                    <a class="nav-link text-secondary" href="#pageURL###title1">Log In</a>
                    <a class="nav-link text-secondary" href="#pageURL###title2">Awards (Coming Soon)</a>
                    <a class="nav-link text-secondary" href="#pageURL###title3">Resources (Coming Soon)</a>
                    <!---- Add links with nav-link class like the example above this comment--->
                    <a aria-hidden="true" class="nav-link d-none d-lg-block text-secondary" href="#pageURL###body">Back to Top</a>
                </nav>
            </div>
            <div class="col-lg-10" id="mainContent">
                <div id="pass" class="scroll-anchor" aria-hidden="true"></div>
                
                <h2>Portable Assisted Study Sequence (PASS)</h2>
                <p>
                    The Portable Assisted Study Sequence (PASS) Program offers fully accredited high school courses 
                    that can be completed by a student semi-independently. 
                    By completing PASS courses, a student makes up credit deficiencies, catches up with peers, 
                    and is encouraged to continue and graduate. Each course is shipped from Sunnyside, Washington. 
                    Tests are administered locally and scored by PASS staff. Grade reports and transcripts are issued.
                </p>
                <p>
                    Resources and PASS Awards coming soon!
                </p>
                <div class="alert alert-warning" role="alert">
                    <strong>Confidentiality Warning:</strong> 
                    This database contains confidential information intended exclusively for the educator accessing 
                    PASS student and course information and for educational purposes. 
                    Confidentiality of student-specific information contained in the ‘PASS Online’ database is protected by 
                    Federal law through the Family Educational Rights and Privacy Act (FERPA) and the 
                    Protection of Pupil Rights Amendment (PPRA) (20 USC 1232g). 
                    Users are reminded that the password they have received to access student, course and 
                    Program information through the ‘PASS Online’ database is for their use only, 
                    and not to be shared with others.
                </div>
                <cfset redirect="PASS">
                <cfinclude  template="/layouts/log-in.cfm">
                <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a>
            </div>
        </div>
    </div>
</cfoutput>