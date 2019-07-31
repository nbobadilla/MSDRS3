<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->
<!---This redirect parameter will send the user to MSIS, PASS, Events, Resources, Health or FER Scheduler--->
<cfoutput>
    <div class="container mt-4">
        <div class="logged-out">
            <cfinclude  template="/layouts/log-in.cfm">
        </div>
        <div class="logged-in mt-4">
            <cfif redirect EQ 'FER'>
                <a href="https://msis.msdr.org/msis/scheduler/index.cfm">Click here to go the the Federal Examination Review Scheduler.</a>
            </cfif>
        </div>
        
    </div>
</cfoutput>