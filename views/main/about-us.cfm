<cfset pageURL = '/main/about-us.cfm'>
<cfoutput>
    <a class="sr-only sr-only-focusable" href="#pageURL###mainContent">Skip Side Navigation</a>
    <div class="container-fluid pt-3">
        <div class="row">
            <div class="col-lg-2">
                <nav class="nav flex-column mb-3 sticky-top sticky-padding rounded" id="sideNav">
                    <a class="nav-link text-secondary" href="#pageURL###msdrs">MSDRS</a>
                    <a class="nav-link text-secondary" href="#pageURL###data">Migrant Student Data</a>
                    <a class="nav-link text-secondary" href="#pageURL###recruitment">Recruitment</a>
                    <a class="nav-link text-secondary" href="#pageURL###support">Support</a>
                    <nav class="nav flex-column rounded ml-4">
                        <a class="nav-link text-secondary" href="/main/news-events.cfm">MEP Events</a>
                        <a class="nav-link text-secondary" href="/main/pass.cfm">PASS</a>
                    </nav>
                    <a class="nav-link text-secondary" href="#pageURL###staff">Staff Directory</a>
                    <!---<a href="#pageURL###secretary" style="width: fit-content;" class="badge badge-warning ml-3">Position Available!</a>--->
                    <a aria-hidden="true" class="nav-link d-none d-lg-block text-secondary" href="#pageURL###body">Back to Top</a>
                </nav>
            </div>
            <div class="col-lg-10" id="mainContent">
                <div id="msdrs" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>MSDRS</h2>
                    <p>
                        The goal of the Migrant Education Program is to ensure that all migrant students 
                        reach challenging academic standards and graduate with a high school diploma (or complete a GED) 
                        that prepares them for responsible citizenship, further learning, and productive employment. 
                        As a support office funded through a Migrant Education state grant, the MSDRS Office plays 
                        an important role in administering of state program directives. A working agreement between 
                        the administrator of the grant (Sunnyside School District) and the grantor and program director 
                        (Office of Superintendent of Public Instruction in Olympia) ensures that all program activities 
                        are implemented.
                    </p>
                    <p>
                        <a href="https://sunnyside.tedk12.com/hire/index.aspx">Click here for employment listings and opportunities.</a>
                    </p>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to About Us Navigation</a>
                    <hr/>    
                </div>
                <div id="data" class="scroll-anchor" aria-hidden="true"></div>
                    <div>
                    <h2>Migrant Student Data</h2>
                    <p>
                        The MSDRS Office hosts the Migrant Student Information System (MSIS) 
                        and oversees the transfer of Migrant Education Program student academic 
                        and health records in Washington State. The MSDRS Office receives academic 
                        and health data on over 32,000 students from migrant-funded school districts and preschools.
                        Online access to the statewide MSIS is available through secure Internet communication lines 
                        from school district and preschool agency staff that provide service to migrant students. 
                        Migrant-funded agencies and school districts are able to access their individual student information 
                        or district reports online. A toll-free line (800-274-6084) enables school districts 
                        and preschool agencies to contact MSDRS staff when additional assistance is needed.
                    </p>
                    <p>
                        <a href="/main/request-account.cfm">Click here to request access to MSIS.</a>
                    </p>
                    <h4>Records Clerk Training</h4>
                    <p>
                        MSDRS staff provide a statewide, consistent and systematic training to 
                        Migrant Records Clerks in migrant-funded districts regarding their local MSDRS requirements. 
                        Records clerks are trained on the reporting of migrant student data online. In addition, 
                        an overview on other aspects of the Migrant Education Program that are under the direction 
                        of the MSDRS office are reviewed.
                    </p> 
                    <p>
                        For more information or if you would like to request that a Records Clerk training be conducted in your district, 
                        please contact <a href="mailto:lschlenker@msdr.org">Lisa Schlenker</a>
                    </p>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to About Us Navigation</a>
                    <hr/>
                </div>
                <div id="recruitment" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Recruitment</h2>
                    <p>
                        MSDRS recruiters travel and assist migrant students and district staff in all non project districts 
                        across Washington state.
                    </p>
                    <p>
                        <a href="#pageURL###staff">Click here to view MSDRS Staff Directory.</a>
                    </p>
                    <h4>Identification & Recruitment (ID&R) Training</h4>
                    <p>
                        MSDRS staff provide a statewide, consistent and systematic training to recruiters 
                        in migrant-funded districts regarding their local ID&R requirements. Recruiters receive the 
                        following training: An overview of the Migrant Education Program; role of the Recruiter; 
                        eligibility criteria based on the federal register; completion of the certificate of eligibility; 
                        familiarization with the growers and crops/activities in their area; coordination between 
                        preschools/school districts; coordination with social service agencies; and conducting effective 
                        interviews with migrant families; etc. 
                    </p>
                    <p>
                        For more information or if you would like to request that 
                        a Recruiter training be conducted in your district, please contact <a href="mailto:lschlenker@msdr.org">Lisa Schlenker</a>
                    </p>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to About Us Navigation</a>
                    <hr/>
                </div>
                <div id="support" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2>Support</h2>
                    <h4>Migrant Education Program Events</h4>
                    <p>
                        MSDRS staff host and provide assistance for a multitude of events that benefit migrant students, parents and district staff 
                        accross Washington State.
                    </p>
                    <p>
                        <a href="/main/news-events.cfm">Click here for more information on events.</a>
                    </p>
                    <h4>Portable Assisted Study Sequence (PASS)</h4>
                    <p>
                        The Portable Assisted Study Sequence (PASS) Program offers fully accredited high school courses 
                        that can be completed by a student semi-independently. By completing PASS courses, 
                        a student makes up credit deficiencies, catches up with peers, and is encouraged to continue and graduate. 
                        Each course is shipped from Sunnyside, Washington. Tests are administered locally and scored by PASS staff. 
                        Grade reports and transcripts are issued. 
                    </p>
                    <p>
                        To find out how to implement PASS at your school, please contact <a href="mailto:hmendoza@msdr.org">Heather Garcia-Mendoza</a>
                    </p>
                    <p>    
                        <a href="/main/pass.cfm">
                            Click here to view PASS resources, log in to PASS, or for more information.
                        </a>
                    </p>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to About Us Navigation</a>
                    <hr/>
                </div>
                <div id="staff" class="scroll-anchor" aria-hidden="true"></div>
                <div>
                    <h2 id="staffHeader">Staff Directory</h2>
                    <h4>
                        Administration
                    </h4>
                    <p>
                        Director<br/>
                        <a href="mailto:lcampos@msdr.org">Lionel Campos</a>
                    </p>
                    <p>
                        Administrative Assistant<br/>
                        <a href="mailto:dtrautman@msdr.org">Denise Trautman</a>
                    </p>
                    <h4>
                        Office & Data Management Services (DMS)
                    </h4>
                    <p>
                        Office & Data Management Services Coordinator<br/>
                        <a href="mailto:lschlenker@msdr.org">Lisa Schlenker</a>
                    </p>
                    <p>
                        Data Management Specialist/Trainer<br/>
                        <a href="mailto:baguilar@msdr.org">Bengie Aguilar</a><br/>
                        <a href="mailto:mjimenez@msdr.org">Martha Jimenez</a><br/>
                        <a href="mailto:mlopez@msdr.org">Margaret Lopez</a><br/>
                    </p>
                    <p>
                        Identification & Recruitment Trainer<br/>
                        <a href="mailto:egarza@msdr.org">Eric Garza</a>
                    </p>
                    <p>
                        Fiscal Specialist<br/>
                        <a href="mailto:achampion@msdr.org">Alicia Champion</a>
                    </p>
                    <p>
                        Secretary<br/>
                        <a href="mailto:tmortensen@msdr.org">Tina Mortensen</a>
                    </p>
                    <h4>Migrant Student Information System (MSIS)</h4>
                    <p>
                        System Administrator<br/>
                        <a href="mailto:asanchez@msdr.org">Adrian Sanchez</a>
                    </p>
                    <p>
                        Programmer/Systems Analyst<br/>
                        <a href="mailto:nbobadilla@msdr.org">Norberto Bobadilla</a><br/>
                        <a href="mailto:scopenhaver@msdr.org">Susan Copenhaver</a><br/>
                        <a href="mailto:syager@msdr.org">Steven Yager</a>
                    </p>
                    <p>
                        Technical Assistant<br/>
                        <a href="mailto:aocegueda@msdr.org">Alvina Ocegueda</a>
                    </p>
                    <h4>Identification & Recruitment (ID&R)</h4>
                    <p>
                        Identification & Recruitment Coordinator<br/>
                        <a href="mailto:ihernandez@msdr.org">Isral Hernandez</a>
                    </p>
                    <p>
                        Recruiter<br/>
                        <a href="mailto:earanda@msdr.org">Elsa Aranda</a><br/>
                        <a href="mailto:mrodriguez@msdr.org">Mary Rodriguez</a><br/>
                        <a href="mailto:minervar@msdr.org">Minerva Rodriguez</a><br/>
                        <a href="mailto:npalomarez@msdr.org">Natalie Palomarez</a><br/>
                        <a href="mailto:rsegovia@msdr.org">Ramiro Segovia</a><br/>
                        <a href="mailto:vcruz@msdr.org">Valerea Cruz</a>
                    </p>
                    <h4>Student Support Services</h4>
                    <p>
                        Student Support Services Coordinator<br/>
                        <a href="mailto:hmendoza@msdr.org">Heather Garcia-Mendoza</a><br/>
                    </p>
                    <p>
                        Publication Specialist/Events Manager<br/>
                        <a href="mailto:eramos@msdr.org">Elizabeth Ramos</a><br/>
                    </p>
                    <div id="secretary" class="scroll-anchor" aria-hidden="true"></div>
                    <p>
                        Secretary <br/>
                        <a href="mailto:lsanchez@msdr.org">Lilianna Sanchez</a><br/>
                    </p>
                    <a class="sr-only sr-only-focusable" href="#pageURL###sideNav">Return to About Us Navigation</a>
                </div>
            </div>
        </div>
    </div>
</cfoutput>

<script>
    function showEmail(email){
        $(this).text(email);
    }
</script>