<cfoutput>
    <!---<div class="jumbotron">
        Hello
        <hola></hola>
    </div>--->
    <a class="sr-only sr-only-focusable d-none d-lg-block" href="##mainContent">Skip Slideshow Carousel</a>
    <div id="carousel" class="carousel slide carousel-fade d-none d-lg-block" data-ride="carousel" >
        <ol class="carousel-indicators">
            <li data-target="##carousel" data-slide-to="0" class="active"></li>
            <li data-target="##carousel" data-slide-to="1"></li>
            <li data-target="##carousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <!---<div class="carousel-item active">
                <a href="##" aria-label="Link for Online Registration for Washington State MEP Conference">
                    <img src="includes/images/conference-2019-low.jpg" class="d-block w-100 h-25" alt="Picture of 2019 State MEP Conference Theme"/>
                </a>
            </div>--->
            <div></div>
            <div class="carousel-item active" data-interval="20000" style="height: 500px">
                <img src="includes/images/cherries-crop-low.jpg" class="d-block w-100" alt="Picture of Rainier Cherries in a bag"/>
                <div class="carousel-caption d-none d-md-block rounded bg-info p-3">
                    <h2>Welcome to MSDRS</h2>
                    <p>
                        <!---The goal of the Migrant Education Program is to ensure that all migrant students reach challenging 
                        academic standards and graduate with a high school diploma (or complete a GED) that prepares them 
                        for responsible citizenship, further learning, and productive employment.
                        MSDRS is funded by the State of Washington Office of Superintendent of Public Instruction (OSPI) 
                        in partnership with Sunnyside School District. MSDRS Provides a number of different services for 
                        Migrant Students and district staff.--->
                        The goal of the Title I Part C Migrant Education Program is to ensure all migrant students reach 
                        challenging academic standards and graduate with a high school diploma (or equivalent) that prepares 
                        them for responsible citizenship, further learning, and productive employment. 
                        As a support office funded by the Office of Superintendent of Public Instruction’s Migrant Education Program, 
                        MSDRS play a significant role in implementing state program directives. A working agreement between OSPI and 
                        Sunnyside School District ensures program requirements and activities are implemented in a timely fashion.
                    </p>
                    <p>
                        <a class="btn btn-outline-light my-2 my-sm-0" href="/main/about-us.cfm" role="button">Learn More</a>
                    </p>
                </div>
            </div>
            <div class="carousel-item" data-interval="20000" style="height: 500px">
                <img src="includes/images/fields-crop-low.jpg" class="d-block w-100" alt="Picture of fields"/>
                <div class="carousel-caption d-none d-md-block rounded bg-info p-3">
                    <h2>Migrant Student Information System</h2>
                    <p>
                        The Migrant Student Data, Recruitment and Support (MSDRS) student records are protected by the 
                        Family Educational Rights and Privacy Act (FERPA), federal regulations which assign rights to 
                        students and responsibilities to educational institutions regarding student's education records. 
                        The Act governs the maintenance and release of information from those records.

                        The MSDRS Office is in agreement with the Office of Superintendent of Public Instruction (OSPI). 
                        All users that access student level data via MSIS are required to sign the 
                        Non-disclosure of Confidential Information Form each school year before granting access to the MSIS.
                    </p>
                    <p>
                        <a class="btn btn-outline-light my-2 my-sm-0" href="/main/request-account" role="button">Request Account</a>
                    </p><!------>
                </div>
            </div>
            <div class="carousel-item" data-interval="20000" style="height: 500px">
                <img src="includes/images/graduates-crop-low.jpg" class="d-block w-100" alt="Picture of Graduates throwing their caps in the air"/>
                <div class="carousel-caption d-none d-md-block rounded bg-info p-3">
                    <h2>Rights of Children Enrolled in School</h2>
                    <!---<i>Photo by Clem Onojeghuo</i>--->
                    <p>
                        All Children in the United States are entitled to equal access to a basic public elementary 
                        and secondary education regardless of their actual or perceived race, color, national origin, 
                        citizenship, immigration status, or the status of their parents/guardians. School districts 
                        that either prohibit or discourage, or maintain policies that have the effect of prohibiting or 
                        discouraging, children from enrolling in schools because they or their parents/guardians are not 
                        U.S. citizens or are undocumented may be in violation of Federal Law.
                    </p>
                    <!---<p>
                        <a class="btn btn-outline-info my-2 my-sm-0" href="https://www2.ed.gov/policy/landing.jhtml?src=image" role="button" target="_blank">Learn More</a>
                    </p>--->
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="##carousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous Slide</span>
        </a>
        <a class="carousel-control-next" href="##carousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next Slide</span>
        </a>
    </div>
    <div class="jumpotron jumbotron-fluid mt-3 d-lg-none">
        <div class="container-fluid">
            <h2>Welcome to MSDRS</h2>
            <p class="lead">
                The goal of the Title I Part C Migrant Education Program is to ensure all migrant students reach 
                challenging academic standards and graduate with a high school diploma (or equivalent) that prepares 
                them for responsible citizenship, further learning, and productive employment. 
                As a support office funded by the Office of Superintendent of Public Instruction’s Migrant Education Program, 
                MSDRS play a significant role in implementing state program directives. A working agreement between OSPI and 
                Sunnyside School District ensures program requirements and activities are implemented in a timely fashion.
            </p>
            <p>
                <a class="btn btn-outline-primary my-2 my-sm-0" href="/main/about-us.cfm">Learn More</a>
            </p>
        </div>
    </div>
    <div class="container-fluid" id="mainContent">
        <div class="row mt-3">
            <div class="col-lg-3">
                <h3><abbr title="Family Eligibility Review" aria-label="Family Eligibility Review">FER</abbr> Scheduler</h3>
                <p>
                    The Family Eilgibility Review Scheduler helps plan and track federally required re-interviews with Migrant Families. 
                    An MSIS account is required to access the
                    FER Scheduler.
                </p>
                <p>
                    <a class="btn btn-outline-primary my-2 logged-out" href="/main/log-in.cfm?redirect=FER" role="button">Log In</a>
                    <span class="logged-in">
                        <a class="btn btn-outline-primary my-2" href="https://msis.msdr.org/msis/scheduler/index.cfm" role="button">FER Scheduler</a>
                    </span>
                </p>
            </div>
            <div class="col-lg-3">
                <h3>Health Program</h3>
                <p>
                    The Washington State Migrant Education Health Program (WAMEHP) provides health care services to migrant students 
                    because of our strong belief that healthy students are more likely to reach their fullest educational 
                    potential.
                </p>
                <p>
                    <a class="btn btn-outline-primary my-2" href="http://health.msdr.org/" role="button">Learn More</a>
                    <a class="btn btn-outline-primary my-2" href="https://msis.msdr.org/health/provider.cfm" role="button">Log In</a>
                </p>
            </div>
            <div class="col-lg-3">
                <h3><abbr title="Migrant Education Program" aria-label="Migrant Education Program">MEP</abbr> Events</h3>
                <p>
                    The Washington State Migrant Education Program is proud to offer special engagement and learning events 
                    for migrant students, parents, and district staff.
                </p>
                <p>
                    <a class="btn btn-outline-primary my-2" href="/main/news-events.cfm" role="button">Learn More</a>
                    <a class="btn btn-outline-primary my-2 logged-out" href="/main/news-events.cfm##log-in" role="button">Log In</a>
                    <span class="logged-in">
                        <a class="btn btn-outline-primary my-2" href="https://msis.msdr.org/DTD/" role="button">Events Database</a>
                    </span>
                    <!------>
                </p>
            </div>
            <div class="col-lg-3">
                <h3>PASS</h3>
                <p>
                    The Portable Assisted Study Sequence (PASS) Program offers fully accredited high school courses 
                    that can be completed by a student semi-independently.
                </p>
                <p>
                    <a class="btn btn-outline-primary my-2 my-sm-0" href="/main/pass.cfm" role="button">Learn More</a>
                    <a class="btn btn-outline-primary my-2 my-sm-0 pass-out" href="/main/pass.cfm##log-in" role="button">Log In</a>
                    <span class="pass-in">
                        <a class="btn btn-outline-primary my-2" href="https://msis.msdr.org/wapass123/main.cfm" role="button">PASS</a>
                    </span><!------>
                </p>
            </div>
            
            
        </div>    
    </div>
    
</cfoutput>