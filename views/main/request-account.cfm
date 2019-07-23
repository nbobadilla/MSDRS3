<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->
<cfparam name="status" default="">
<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/request-account.cfm'>
<cfoutput>
    <div class="container pt-3">
        <div class="row">
            <!--- Content goes here. use bootstrap v4.3 column classes for desired column spacing. example here is 4 column --->
            <!--- For column classes help, visit https://getbootstrap.com/docs/4.3/layout/grid/ --->
            <div class="col-lg-6">
                
                <h2>Request Account</h2>
                <h4>Terms & Conditions</h4>
                <p>
                    All users that access student level data via the MSIS, PASS, or the Migrant Education Health Portal 
                    are required to complete a Non-Disclosure of Confidential Information process for each school year 
                    before access to the MSIS or the Migrant Education Health Portal is granted.
                </p>
                <p>
                    The Migrant Student Data, Recruitment and Support (MSDRS) student records are protected by the 
                    Family Educational Rights and Privacy Act (FERPA), federal regulations which assign rights to students 
                    and responsibilities to educational institutions regarding student's education records. 
                    The Act governs the maintenance and release of information from those records.
                </p>
                <p>
                    <a href="/main/forgot-password.cfm">Click here if you already have an account but forgot your password.</a>
                </p>
            </div>
            <div class="col-lg-6 mt-5 p-3 mb-4 border rounded bg-light">
                <cfif status EQ 'success'>
                    <div class="alert alert-success" role="alert">
                        <strong>Thank you for requesting an Account!</strong><br/> 
                        A confirmation has been sent to the the email address you provided. 
                        If you have any questions, please call us anytime at 
                        <span style="white-space: nowrap;">1&##8211;800&##8211;274&##8211;6084</span>.
                    </div>
                <cfelseif status EQ 'error'>
                    <div class="alert alert-danger" role="alert">
                        <strong>An error has occurred, please try again.</strong><br/> 
                        If the problem continues, please try again at a later time or call us at 
                        <span style="white-space: nowrap;">1&##8211;800&##8211;274&##8211;6084</span>.
                    </div>
                <cfelse>
                </cfif>
                <form class="">
                    <div class="form-group">
                        <label for="account">Account Type</label>
                        <select class="form-control" id="account">
                            <option value="">Select Account Type</option>
                            <option value="Health">Health</option>
                            <option value="MSIS">MSIS</option>
                            <option value="PASS">PASS</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="first-name">First Name</label>
                        <input type="text" class="form-control" id="first-name" placeholder="First Name"></input>
                    </div>
                    <div class="form-group">
                        <label for="last-name">Last Name</label>
                        <input type="text" class="form-control" id="last-name" placeholder="Last Name"></input>
                    </div>
                    <div class="form-group">
                        <label for="email">School/Provider Email Address</label>
                        <input type="email" class="form-control" id="email" placeholder="School/Provider Email Address"></input>
                    </div>
                    <div class="form-group">
                        <label for="district">District</label>
                        <select class="form-control" id="district">
                            <option value="">Select District</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="position">Position</label>
                        <select class="form-control" id="position">
                            <option value="">Select Position</option>
                            <option value="Health Provider">Health Provider</option>
                            <option value="HEP/CAMP">HEP/CAMP</option>
                            <option value="Other Ed Staff">Other Ed Staff</option>
                            <option value="RC/RT">RC/RT</option>
                            <option value="RC">Records Clerk</option>
                            <option value="RT">Recruiter</option>                            
                            <option value="State Staff">State Staff</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone <small class="text-secondary">*Numbers Only</small></label>
                        <input type="tel" class="form-control" id="phone" placeholder="Phone" maxlength="10"></input>
                    </div>
                    <button type="submit" class="btn btn-outline-primary float-right">Submit</button>
                </form>
                
            </div>
        </div>
    </div>
</cfoutput>