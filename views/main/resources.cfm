<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->

<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/resources.cfm'>
<cfoutput>
    <a class="sr-only sr-only-focusable" href="#pageURL###mainContent">Skip Side Navigation</a>
    <div class="container-fluid pt-3">
        <div class="row">
            <div class="col-lg-2">
                <nav class="nav flex-column mb-3 sticky-top sticky-padding rounded" id="sideNav">
                    <a class="nav-link text-secondary" href="#pageURL###title1">Resources</a>
                    <a class="nav-link text-secondary" href="#pageURL###title2">MEP External Links</a>
                    <a class="nav-link text-secondary" href="/main/news-events.cfm">MEP Events</a>
                    <a class="nav-link text-secondary" href="/main/pass.cfm">PASS</a>
                    <!---- Add links with nav-link class like the example above this comment--->
                    <a aria-hidden="true" class="nav-link d-none d-lg-block text-secondary" href="#pageURL###body">Back to Top</a>
                </nav>
            </div>
            <div class="col-lg-10" id="mainContent">
                <div id="title1" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Resources</h2>
                    <p>View useful migrant documents and resources for Recruiters, Records Clerks, and other education staff.</p>
                    <cfset redirect="Resources">
                    <cfinclude  template="/layouts/log-in.cfm">
                    <hr/>   
                </div>
                <div id="title2" class="scroll-anchor" aria-hidden="true"></div>
                <div class="row">
                    <div class="col pb-4">
                        <h2>Migrant Education Program External Links</h2>
                        <p>
                            The following is a list of useful links regarding the Migrant Education Program. 
                            Please note that all these links are external and will direct you outside of the MSDRS website.
                        </p>    
                    </div>
                    <div class="w-100"></div><!---this start a new row for columns--->
                    <div class="col-lg pb-4">
                        <div class="d-flex flex-column">
                            <h4>High School Equivalency Program (HEP)</h4>
                            <a class="p-1"  href="http://www.cwu.edu/hep/">Central Washington University</a>
                            <a class="p-1"  href="http://www.columbiabasin.edu/index.aspx?page=518">Columbia Basin College</a>
                            <a class="p-1"  href="http://www.heritage.edu/Future-Students/Support-Services/HEP-Program">Heritage University</a>
                            <a class="p-1"  href="http://www.hep.wsu.edu/">Washington State University</a>
                        </div>
                    </div>

                    <div class="col-lg pb-4">
                        <div class="d-flex flex-column">
                            <h4 class="">Graduation Requirements</h4>
                            <a class="p-1" href="https://nceo.info/standards_and_accountability/grad_requirements/overview">National Center on Education Outcomes (NCEO) Graduation Requirements</a>
                            <a class="p-1" href="https://www.k12.wa.us/student-success/graduation/graduation-requirements">Office of Superintendent of Public Instruction (OSPI) Graduation Requirements</a>
                            <a class="p-1" href="http://www.sbe.wa.gov/our-work/graduation-requirements##.WZtSzj6GOUk">Washington State Board of Education Graduation Requirements</a>
                        </div>
                    </div>
                    
                    
                    
                    <div class="col-lg pb-4">
                        <div class="d-flex flex-column">
                            <h4 class="">College Assistance Migrant Program (CAMP)</h4>
                            <a class="p-1" href="http://www.cwu.edu/camp">Central Washington University</a>
                            <a class="p-1" href="http://www.columbiabasin.edu/camp">Columbia Basin College</a>
                            <a class="p-1" href="http://www.ewu.edu/css/camp">Eastern Washington University</a>
                            <a class="p-1" href="http://www.heritage.edu/camp">Heritage University</a>
                            <a class="p-1" href="http://www.depts.washington.edu/omadcs/camp/">University of Washington</a>
                            <a class="p-1" href="http://www.camp.wsu.edu/">Washington State University</a>
                            <a class="p-1" href="http://www.wvc.edu/camp">Wenatchee Valley College</a>
                        </div>
                    </div>
                    
                    <div class="col-lg pb-4">                        
                        <div class="d-flex flex-column">
                            <h4 class="">Other National Migrant Systems</h4>
                            <a class="p-1" href="https://ngsmigrant.com/">New Generation System (NGS)</a>
                            <a class="p-1" href="https://www2.ed.gov/programs/mep/index.html">Office of Migrant Education (OME) - Washington DC</a>
                            <a class="p-1" href="https://district.ode.state.or.us/apps/omsis5/">Oregon Migrant Student Information System (OMSIS)</a>
                        </div>    
                    </div>
                    <div class="w-100"></div><!---this start a new row for columns--->
                    <div class="col-lg pb-4">
                        <div class="d-flex flex-column">
                            <h4 class="">Other Useful Links</h4>
                            <a class="p-1" href="http://www.escort.org/">ESCORT Identification and Recruitment</a>
                            <a class="p-1" href="https://consulmex.sre.gob.mx/seattle/index.php/es/">Mexican Consulate Office in Seattle</a>
                            <a class="p-1" href="https://nces.ed.gov/">National Center for Education Statistics (NCES)</a>
                            <a class="p-1" href="https://nces.ed.gov/ccd/schoolsearch/">National Public School Locator</a>
                            <a class="p-1" href="https://nwjustice.org/home">Northwest Justice Project</a>
                            <a class="p-1" href="https://www.k12.wa.us/student-success/equity-education/migrant-and-bilingual-education/migrant-education-program##committee">Washington Migrant Education State Advisory Committee (SAC)</a>

                        </div>    
                    </div>
                    
                    <div class="col-lg pb-4">
                        <div class="d-flex flex-column">
                            <h4 class="">Other Useful Links for Students</h4>
                            <a class="p-1" href="https://www.sbctc.edu/becoming-a-student/default.aspx">Becoming a Student</a>
                            <a class="p-1" href="https://hepcampassociation.org/">HEP/CAMP Association</a>
                            <a class="p-1" href="https://www.k12.wa.us/support-programs/equity-education/migrant-education-program/immigrant-student%E2%80%99s-rights-attend-public">Immigrant Students Rights to Attend Public School</a>
                            <a class="p-1" href="https://www.k12.wa.us/office-superintendent-public-instruction-students-rights">Learning by Choice Guide</a>
                            <a class="p-1" href="https://www.k12.wa.us/student-success/equity-education/migrant-and-bilingual-education">Migrant and Bilingual Education</a>
                            <a class="p-1" href="https://www2.ed.gov/policy/landing.jhtml?src=image">The Rights of All Children Enrolled in School</a>
                        </div>
                    </div>
                    
                    <div class="col-lg pb-4">
                        <div class="d-flex flex-column">
                            <h4 class="">Washington State Offices</h4>
                            <a class="p-1" href="https://www.esd105.org/domain/56">ESD 105 Regional Office - Yakima</a>
                            <a class="p-1" href="http://www.esd123.org/">ESD 123 Regional Office - Pasco</a>
                            <a class="p-1" href="http://www.ncesd.org/page/360/">ESD 171 Regional Office - Wenatchee</a>
                            <a class="p-1" href="https://www.nwesd.org/">ESD 189 Regional Office - Anacortes</a>
                            <a class="p-1" href="https://www.k12.wa.us/">Office of Superintendent of Public Instruction (OSPI)</a>
                        </div>
                    </div>
                    <div class="col-lg"></div>
                    <!---
                    <div class="col-lg pb-4">
                        <div class="list-group ">
                            <div class="list-group-item bg-info text-light">High School Equivalency Program (HEP)</div>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.cwu.edu/hep/">Central Washington University</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.columbiabasin.edu/index.aspx?page=518">Columbia Basin College</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.heritage.edu/Future-Students/Support-Services/HEP-Program">Heritage University</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.hep.wsu.edu/">Washington State University</a>
                        </div>
                    </div>

                    <div class="col-lg pb-4">
                        <div class="list-group">
                            <div class="list-group-item bg-info text-light">Graduation Requirements</div>
                            <a class="list-group-item list-group-item-action text-primary" href="https://nceo.info/standards_and_accountability/grad_requirements/overview">National Center on Education Outcomes (NCEO) Graduation Requirements</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www.k12.wa.us/student-success/graduation/graduation-requirements">Office of Superintendent of Public Instruction (OSPI) Graduation Requirements</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.sbe.wa.gov/our-work/graduation-requirements##.WZtSzj6GOUk">Washington State Board of Education Graduation Requirements</a>
                        </div>
                    </div>
                    
                    
                    <div class="w-100"></div><!---this start a new row for columns--->
                    <div class="col-lg pb-4">
                        <div class="list-group">
                            <div class="list-group-item bg-info text-light">College Assistance Migrant Program (CAMP)</div>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.cwu.edu/camp">Central Washington University</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.columbiabasin.edu/camp">Columbia Basin College</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.ewu.edu/css/camp">Eastern Washington University</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.heritage.edu/camp">Heritage University</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.depts.washington.edu/omadcs/camp/">University of Washington</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.camp.wsu.edu/">Washington State University</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.wvc.edu/camp">Wenatchee Valley College</a>
                        </div>
                    </div>
                    
                    <div class="col-lg pb-4">                        
                        <div class="list-group">
                            <div class="list-group-item bg-info text-light">Other National Migrant Systems</div>
                            <a class="list-group-item list-group-item-action text-primary" href="https://ngsmigrant.com/">New Generation System (NGS)</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www2.ed.gov/programs/mep/index.html">Office of Migrant Education (OME) - Washington DC</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://district.ode.state.or.us/apps/omsis5/">Oregon Migrant Student Information System (OMSIS)</a>
                        </div>    
                    </div>
                    <div class="w-100"></div><!---this start a new row for columns--->
                    <div class="col-lg pb-4">
                        <div class="list-group">
                            <div class="list-group-item bg-info text-light">Other Useful Links</div>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.escort.org/">ESCORT Identification and Recruitment</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://consulmex.sre.gob.mx/seattle/index.php/es/">Mexican Consulate Office in Seattle</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://nces.ed.gov/">National Center for Education Statistics (NCES)</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://nces.ed.gov/ccd/schoolsearch/">National Public School Locator</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://nwjustice.org/home">Northwest Justice Project</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www.k12.wa.us/student-success/equity-education/migrant-and-bilingual-education/migrant-education-program##committee">Washington Migrant Education State Advisory Committee (SAC)</a>

                        </div>    
                    </div>
                    
                    <div class="col-lg pb-4">
                        <div class="list-group">
                            <div class="list-group-item bg-info text-light">Other Useful Links for Students</div>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www.sbctc.edu/becoming-a-student/default.aspx">Becoming a Student</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://hepcampassociation.org/">HEP/CAMP Association</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www.k12.wa.us/support-programs/equity-education/migrant-education-program/immigrant-student%E2%80%99s-rights-attend-public">Immigrant Students Rights to Attend Public School</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www.k12.wa.us/office-superintendent-public-instruction-students-rights">Learning by Choice Guide</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www.k12.wa.us/student-success/equity-education/migrant-and-bilingual-education">Migrant and Bilingual Education</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www2.ed.gov/policy/landing.jhtml?src=image">The Rights of All Children Enrolled in School</a>
                        </div>
                    </div>
                    
                    <div class="w-100"></div><!---this start a new row for columns--->
                    <div class="col-lg pb-4">
                        <div class="list-group ">
                            <div class="list-group-item bg-info text-light">Washington State Offices</div>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www.esd105.org/domain/56">ESD 105 Regional Office - Yakima</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.esd123.org/">ESD 123 Regional Office - Pasco</a>
                            <a class="list-group-item list-group-item-action text-primary" href="http://www.ncesd.org/page/360/">ESD 171 Regional Office - Wenatchee</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www.nwesd.org/">ESD 189 Regional Office - Anacortes</a>
                            <a class="list-group-item list-group-item-action text-primary" href="https://www.k12.wa.us/">Office of Superintendent of Public Instruction (OSPI)</a>
                        </div>
                    </div>--->
                    <!---<div class="col-lg pb-4">
                        <div class="list-group">
                            <div class="list-group-item bg-light">title</div>
                            <a class="list-group-item list-group-item-action text-primary" href="">link</a>
                            <a class="list-group-item list-group-item-action text-primary" href="">link</a>
                            <a class="list-group-item list-group-item-action text-primary" href="">link</a>
                            <a class="list-group-item list-group-item-action text-primary" href="">link</a>
                            <a class="list-group-item list-group-item-action text-primary" href="">link</a>
                            <a class="list-group-item list-group-item-action text-primary" href="">link</a>
                        </div>
                    </div>--->

                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to Side Navigation</a>
                </div>
            </div>
        </div>
    </div>
</cfoutput>