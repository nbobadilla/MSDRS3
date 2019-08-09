<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->
<cfparam name="status" default="">
<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/forgot-password.cfm'>
<cfoutput>
    <div class="container pt-3">
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
                <p id="response">

                </p>
                <form id="frmReset" name="frmReset" class="bg-light border mb-3 p-3 rounded">
                    <!---<cfif status EQ 'success'>
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
                    </cfif>--->
 
                    <div class="form-group">

                        <label for="email" class="mb-0">Account Email Address</label>
                        <small id="email-help" class="form-text text-muted">Use the same Email when the account was requested.</small>
                        <div class="input-group mt-3">
                            <input name="email" type="email" class="form-control" id="email" placeholder="Email"></input>
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-outline-primary">Reset Password</button>
                            </div>
                            
                        </div>
                        <div id="alertSuccess" class="alert alert-success mt-4" style="display: none;" role="alert">
                            <strong>Your request has been sent!</strong><br/> 
                            If you have any questions, please call us anytime at 
                            <span style="white-space: nowrap;">1&##8211;800&##8211;274&##8211;6084</span>.
                        </div>
                        
                        <div id="alertError" class="alert alert-danger mt-4" style="display: none;" role="alert">
                            <strong>An error has occurred, please try again.</strong><br/> 
                            If the problem continues, please try again at a later time or call us at 
                            <span style="white-space: nowrap;">1&##8211;800&##8211;274&##8211;6084</span>.
                        </div><!------>
                        
                        
                        
                    </div>
                    
                </form>
                <p>
                    <a href="/main/request-account.cfm">Click here to request an account if you do not have one.</a>
                </p>
                
            </div>
        </div>
    </div>
</cfoutput>

<script>
    $(function(){
        var accountUrl = 'https://msis.msdr.org/remote-objects/account.cfc?';
        var devUrl = 'http://0.0.0.0:58615/remote-objects/account.cfc?';

        var url = accountUrl;
            
        $("#frmReset").submit(function(e){
            e.preventDefault(); // Keep the form from submitting
            var data = $(this).serialize();

            //make sure to change the url

            $.ajax({url: url + data
                ,type:"post",
                dataType: "jsonp"
                ,jsonpCallback:"sbmt",
                data: { method:"resetPassword",returnformat: "plain"}
            });
        });

    });
    function sbmt(resp){
        if(resp == "success"){
            //window.location.href = "/main/request-account.cfm?status=account";
            $(".alert").hide();
            $("#alertSuccess").show();
        }
        else{
            //window.location.href = "/main/request-account.cfm?status=error";
            $(".alert").hide();
            $("#alertError").show();
        }
    }
</script>