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
                <!---<p>
                    All users that access student level data via the MSIS, PASS, or the Migrant Education Health Portal 
                    are required to complete a Non-Disclosure of Confidential Information process for each school year 
                    before access to the MSIS or the Migrant Education Health Portal is granted.
                </p>--->
                <p>
                    All new users that would like to request access to student level data in MSIS must submit this online form.
                    Once this online form has been submitted, you will receive a confirmation email 
                    to the email address you provided. After your email address is confirmed, please allow one week for the approval
                    process to be completed. You will be emailed your MSIS password as soon as the approval process is complete.
                </p>
                <p>
                    The Migrant Student Data, Recruitment and Support (MSDRS) student records are protected by the 
                    <a href="#link('FERPA')#">Family Educational Rights and Privacy Act (FERPA)</a>, 
                    federal regulations which assign rights to students 
                    and responsibilities to educational institutions regarding student's education records. 
                    The Act governs the maintenance and release of information from those records.
                </p>
                <p>
                    <a href="/main/forgot-password.cfm">Click here if you already have an account but forgot your password.</a>
                </p>
                <p id="response">

                </p>
            </div>
            <div class="col-lg-6">
                <div class=" mt-5 p-3 mb-4 pb-5 border rounded bg-light">
                    <!---<cfif status EQ 'success'>
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
                    <cfelseif status EQ 'account'>
                        <div class="alert alert-warning" role="alert">
                            <strong>It appears you already have an account.</strong><br/>
                            Your account may be in the process of being approved.
                            <a href="/main/forgot-password">Click here if you forgot your password.</a>
                            If you have any issues, please call our office at 
                            <span style="white-space: nowrap;">1&##8211;800&##8211;274&##8211;6084</span>.
                        </div>
                    <cfelse>
                    </cfif>--->
                    
                    
                    <form class="" id="frmAccount" name="frmAccount">
                        <!---<div class="form-group">
                            <label for="account">Account Type</label>
                            <select class="form-control" id="account" name="account">
                                <option value="">Select Account Type</option>
                                <option value="Health">Health</option>
                                <option value="MSIS">MSIS</option>
                                <option value="PASS">PASS</option>
                            </select>
                        </div>--->
                        <div class="form-group">
                            <label for="first-name">First Name</label>
                            <input type="text" class="form-control" id="first-name" name="FIRST_NAME" placeholder="First Name"></input>
                        </div>
                        <div class="form-group">
                            <label for="last-name">Last Name</label>
                            <input type="text" class="form-control" id="last-name" name="LAST_NAME" placeholder="Last Name"></input>
                        </div>
                        <div class="form-group">
                            <label for="email">School/Provider Email Address</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="School/Provider Email Address"></input>
                        </div>
                        <div class="form-group">
                            <label for="district">District</label>
                            <select class="form-control" id="district" name="district">
                                <option value="">Select District</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="position">Position</label>
                            <select class="form-control" id="position" name="position">
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
                            <input type="tel" class="form-control" id="phone" name="phone" placeholder="Phone" maxlength="10"></input>
                        </div>
                        <div class="alert alert-success" style="display: none;" id="alertSuccess" role="alert">
                            <strong>Thank you for requesting an Account!</strong><br/> 
                            A confirmation has been sent to the the email address you provided. 
                            If you have any questions, please call us anytime at 
                            <span style="white-space: nowrap;">1&##8211;800&##8211;274&##8211;6084</span>.
                        </div>
                    
                        <div class="alert alert-danger" style="display: none;" id="alertError" role="alert">
                            <strong>An error has occurred, please try again.</strong><br/> 
                            If the problem continues, please try again at a later time or call us at 
                            <span style="white-space: nowrap;">1&##8211;800&##8211;274&##8211;6084</span>.
                        </div>
                    
                        <div class="alert alert-warning" style="display: none;" id="alertAccount" role="alert">
                            <strong>It appears you already have an account or an account pending.</strong><br/>
                            Your account may be in the process of being approved.
                            
                            If you have any issues, please call our office at 
                            <span style="white-space: nowrap;">1&##8211;800&##8211;274&##8211;6084</span>.
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-outline-primary float-right">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</cfoutput>

<script>
    $.ajax({

        url: "https://msis.msdr.org/web_services/districtDirectory.cfc",

        type:"get",

        dataType: "jsonp",

        jsonpCallback:"cb",

        data: { method:"getDirectoryJSONP" }

    });
    function cb(resp){

        var districts = [];

        distObj = [];

        $.each(resp.DATA, function(i, el){

            if($.inArray(el[0], districts) === -1){

            districts.push(el[0])

            distObj.push({district: el[0], distid : el[1]})

            };

        });

        $('#district').append('<optgroup label=""></optgroup>');

        $('#district').append('<optgroup label="Project Agencies">');

        $.each(distObj, function (i, dist) {

            $('#district').append($('<option>', {

                value: dist.distid,

                text : dist.district

            }));

        });

        $('#district').append('</optgroup>');

    }
    $.ajax({

        url: "https://msis.msdr.org/web_services/districtDirectory.cfc",

        type:"get",

        dataType: "jsonp",

        jsonpCallback:"callback",

        data: { method:"getNonDistrictDirectoryJSONP" }

    });
    function callback(resp){

        var districts = [];

        distObj = [];

        $.each(resp.DATA, function(i, el){

            if($.inArray(el[0], districts) === -1){

            districts.push(el[0])

            distObj.push({district: el[0], distid : el[1]})

            };

        });

        $('#district').append('<optgroup label=""></optgroup>');

        $('#district').append('<optgroup label="Non Project Agencies">');

        $.each(distObj, function (i, dist) {

            $('#district').append($('<option>', {

                value: dist.distid,

                text : dist.district

            }));

        });

        $('#district').append('</optgroup>');

    }

    $(function(){
        //window.captcha_verified = false;
        var accountUrl = 'https://msis.msdr.org/remote-objects/account.cfc?';
        var devUrl = 'http://0.0.0.0:58615/remote-objects/account.cfc?';
        var url = accountUrl;

        //$("label[for=healthTitle], #theHealthTitle, #providerSelectRow").hide();

        $("#frmAccount").submit(function(e){
            e.preventDefault(); // Keep the form from submitting
            var data = $(this).serialize();


            //make sure to change the url

            $.ajax({url: url + data
                ,type:"post",
                dataType: "jsonp"
                ,jsonpCallback:"sbmt",
                data: { method:"requestAccount",returnformat: "plain"}
            });
        });
    });
    function sbmt(resp){
        if(resp.DBERROR == "USER ALREADY EXISTS - NO ACTION"){
            //window.location.href = "/main/request-account.cfm?status=account";
            $(".alert").hide();
            $("#alertAccount").show();
        }
        else if(resp.DBERROR == "success"){
            //window.location.href = "/main/request-account.cfm?status=success";
            $(".alert").hide();
            $("#alertSuccess").show();
        }
        else{
            //window.location.href = "/main/request-account.cfm?status=error";
            $(".alert").hide();
            $("#alertError").show();
        }/**/
        //alert(resp);
        //$("#response").html(resp.DBERROR);
        //window.location.replace = "/main/request-account.cfm?status=account";
        
    }

</script>