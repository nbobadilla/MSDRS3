<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->

<cfparam name="status" default="">

<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/online-registration.cfm'>
<cfoutput>
    <div class="container pt-3">
        <div class="row">
            <!--- Content goes here. use bootstrap v4.3 column classes for desired column spacing. example here is 4 column --->
            <!--- For column classes help, visit https://getbootstrap.com/docs/4.3/layout/grid/ --->
            <div class="col-lg-12">
                <cfif status EQ 'success'>
                    <div class="alert alert-success" role="alert">
                        <strong>Thank you for registering for the State MEP Conference!</strong><br/> 
                        An email confirmation has just been sent to the School District/Agency email address you provided. 
                        Any conference updates will be sent to the email addresses you provided. 
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
                <h2>Exhibitor Registration</h2>
                <H6>Washington State Migrant Education Program Conference 2019</H6>
                <p>
                    <strong>When:</strong> August 15 – 16, 2019<br/>
                    <strong>Where:</strong> Yakima Convention Center 10 N 8th St, Yakima, WA 98901
                </p>
                <div class="alert alert-warning" role="alert">
                    <strong>Warning:</strong> This online registration form is for <strong>Exhibitors</strong>
                </div>
                <p>
                    <a href="/main/attendee-registration.cfm">Click here to register as an <strong>Attendee</strong></a>
                </p>
                <form class="mb-5 p-4 border rounded bg-light" method="post" name="attendeeInfo">
                    <input name="event" type="hidden" value="183">
                    <input name="referer" type="hidden" value="index">
                    <input name="title" type="hidden" value="Exhibitor">
                    
                    <div class="form-group">
                        <label for="fname">First Name</label>
                        <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name" required="true"></input>
                    </div>


                    <div class="form-group">
                        <label for="lname">Last Name</label>
                        <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" required="true"></input>
                    </div>

                    <div class="form-group">
                        <label for="email">District Email or Agency Email</label>
                        <input type="email" class="form-control" id="email" name="email" required="true" placeholder="District Email or Agency Email"></input>
                    </div>


                    <div class="form-group">
                        <label for="summerEmail">Secondary Email</label>
                        <input type="email" class="form-control" id="summerEmail" name="summerEmail" placeholder="Secondary Email"></input>
                    </div>

                    <div class="form-group">
                        <label for="agency">Agency/Company Name</label>
                        <input type="text" class="form-control" id="agency" required="true" name="agency" placeholder="Agency/Company Name"></input>
                    </div>

                    <div class="form-row">

                        <div class="form-group col-lg-6">
                            <label for="phone">Phone <small class="text-secondary">*Numbers Only</small></label>
                            <input type="tel" class="form-control" required="true" id="phone" maxlength="10" name="phone" placeholder="Phone Number"></input>
                        </div>

                        <div class="form-group col-lg-6">
                            <label for="fax">Fax <small class="text-secondary">*Numbers Only</small></label>
                            <input type="tel" class="form-control" id="fax" name="fax" maxlength="10" placeholder="Fax"></input>
                        </div>    
                    </div>
                    

                    <div class="form-group">
                        <label for="agency">Address</label>
                        <input type="text" class="form-control" id="address" required="true" name="address" placeholder="Address"></input>
                    </div>


                    <div class="form-row">
                        <div class="form-group col-lg-8">
                            <label for="city">City</label>
                            <input type="text" class="form-control" required="true" id="city" name="city" placeholder="City"></input>
                        </div>
                        <div class="form-group col">
                            <label for="state">State</label>
                            <input type="text" class="form-control" maxlength="2" required="true" id="state" name="state" placeholder="State"></input>
                        </div>
                        <div class="form-group col">
                            <label for="zip">Zip <small class="text-secondary">*Numbers Only</small></label>
                            <input type="text" class="form-control"  maxlength="5" required="true" id="zip" name="zip" placeholder="Zip"></input>
                            
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="desc">Brief Exhibit Description</label>
                        <textarea class="form-control" id="desc" name="desc" rows="3"></textarea>
                    </div>
                    
                    <div class="form-group">
                        <label for="needs">Additional Needs</label>
                        <textarea class="form-control" id="needs" name="needs" rows="3"></textarea>
                    </div>

                    <p>Exhibit Type</p>
                    <div class="form-check">
                        <input class="form form-check-input" type="radio" name="profit" value="0" id="">
                        <label class="form-check-label" for="">
                            <strong>Non-Profit:</strong> No registration fee is required. 
                            Includes one 8x10 skirted table and two chairs (table cloth not included).
                        </label>
                    </div>
                    <hr/>
                    <div class="form-check">
                        <input class="form form-check-input" type="radio" name="profit" value="1" id="">
                        <label class="form-check-label" for="">
                            <strong>Profit:</strong> $25.00 fee per table. 
                            Includes one 8x10 skirted table and two chairs (table cloth not included).
                            Make check payable to:<br/><br/>
                            SSD/MSDRS<br/>
                            810 B East Custer, Sunnyside, WA 98944
                        </label>

                    </div>
                    <div class="form-group mb-5 mt-3">
                        <button type="submit" class="btn btn-outline-primary float-right">Submit</button>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</cfoutput>