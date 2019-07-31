<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->
<!---This redirect parameter will send the user to MSIS, PASS, Events, Resources, Health or FER Scheduler--->
<cfparam name="redirect" default="MSIS">
<cfparam name="status" default="">

<cfoutput>
    <!---
    <Form class="border rounded p-3 bg-light">
        <h4>Log In</h4>
        <p>Please Log In to access this content.</p>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Email"></input>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Password"></input>
        </div>
        <div class="form-row">
            <div class="col-12">
                <button type="submit" class="btn btn-outline-primary float-right">Log In</button>
            </div>
        </div>
        
    </form>--->
    <div id="log-in" class="scroll-anchor"></div>
    
    <div class="card bg-light">
        <div class="card-header bg-info text-white">
            Log In <small class="text-secondary float-right text-light" aria-hidden="true">#redirect#</small>
        </div>
        <div class="card-body">
            <cfif status EQ 'error'>
                <div class="alert alert-danger" role="alert">
                    Incorrect username or password.
                    Please try again.
                </div>
            <cfelse>
            </cfif>
            <p class="card-text">
                Log In to access this content.
            </p>
            <form <cfif redirect EQ 'PASS'>action="http://msis.msdr.org/wapass123/main.cfm"<cfelse>action="https://msis.msdr.org/scripts/_checkLogin.cfm"</cfif> method="post">
                <div class="form-group">
                    <cfif redirect EQ 'PASS'>
                        <input type="hidden" name="newLogin" value="Y">
                        <label for="email">Email or Username</label>
                    
                        <input type="text" class="form-control" id="email" placeholder="Email or Username"></input>
                    <cfelse>
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="fUsername" placeholder="Email"></input>
                    </cfif>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="fPassword" placeholder="Password"></input>
                </div>
                <div class="d-flex flex-column">
                    <a href="/main/forgot-password.cfm">Click here if you forgot your password</a>
                    <a href="/main/request-account.cfm">Click here to request an account</a>
                </div>
                <div class="form-row">
                    <div class="col-12">
                        
                        <button type="submit" class="btn btn-outline-primary float-right">Log In</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</cfoutput>

