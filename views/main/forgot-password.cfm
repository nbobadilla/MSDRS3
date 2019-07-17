<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->
<cfparam name="status" default="">
<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/forgot-password.cfm'>
<cfoutput>
    <div class="container mt-3">
        <div class="row">
            <!--- Content goes here. use bootstrap v4.3 column classes for desired column spacing. example here is 4 column --->
            <!--- For column classes help, visit https://getbootstrap.com/docs/4.3/layout/grid/ --->
            <div class="col-lg-12">
                
                <h2>Forgot Password</h2>
                <p>
                    If you already have an account and cannot access it, one method of resolving this issue is to 
                    reset your password to be able to log in. To reset your password, enter your email below and submit. 
                    You then should recieve an email with further instructions.

                    If you don't receive instructions via email after a password reset and you are still unable to access the account, 
                    please contact our office at <span style="white-space: nowrap;">1&##8211;800&##8211;274&##8211;6084.</span> 
                </p>
                <form class="bg-light border mb-3 p-3 rounded">
                    <cfif status EQ 'success'>
                        <div class="alert alert-success" role="alert">
                            <strong>Your request has been sent!</strong><br/> 
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
 
                    <div class="form-group">

                        <label for="email" class="mb-0">Account Email Address</label>
                        <small id="email-help" class="form-text text-muted">Use the same Email when the account was requested.</small>
                        <div class="input-group">
                            <input type="email" class="form-control" id="email" placeholder="Account Email Address"></input>
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-outline-primary">Reset Password</button>
                            </div>
                            
                        </div>
                        
                        
                        
                    </div>
                    
                </form>
                <p>
                    <a href="/main/request-account.cfm">Click here to request an account if you do not have one.</a>
                </p>
                
            </div>
        </div>
    </div>
</cfoutput>