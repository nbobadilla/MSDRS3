<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->

<cfparam name="status" default="">

<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/attendee-registration.cfm'>
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
                <h2>Attendee Registration</h2>
                <H6>Washington State Migrant Education Program Conference 2019</H6>
                <p>
                    <strong>When:</strong> August 15 – 16, 2019<br/>
                    <strong>Where:</strong> Yakima Convention Center 10 N 8th St, Yakima, WA 98901
                </p>
                <p>
                    <a href="/main/exhibitor-registration.cfm">Click here to register as an <strong>Exhibitor</strong></a>
                </p>
                <form class="mb-5 p-4 border rounded bg-light" action="http://msis.msdr.org/news-events/webservice/confirmation.cfm" method="post" id="attendeeInfo" name="attendeeInfo">
                    <input name="event" type="hidden" value="183">
                    <input name="referer" type="hidden" value="index">

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
                        <label for="account">Title</label>
                        <select class="form-control" id="title" name="title" required="true">
                            <option value="">Select Title</option>
                            <option value="FPD">Federal Programs Director (FPD)</option>
                            <option value="MGS/MSA">MGS/MSA</option>
                            <option value="Parapro">Paraprofessional</option>
                            <option value="Parent">Parent</option>
                            <option value="RC/RT">RC/RT</option>
                            <option value="RC">Records Clerk (RC)</option>
                            <option value="RT">Recruiter (RT)</option>
                            <option value="State/Regional">State/Regional Staff</option>
                            <option value="Student">Student</option>
                            <option value="Teacher">Teacher</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="form-group">

                        <label for="gradelevel">Student Grade <small class="text-secondary">*Only if Title is Student</small></label>
                        <select class="form-control" id="gradelevel" name="gradelevel">
                            <option value="">Select Grade</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>

                    </div>
                    <div class="form-group">

                        <label for="otherTitle">Other Title</label> <small class="text-secondary">*Only if Title is Other</small></label>
                        <input type="text" class="form-control" id="otherTitle" name="otherTitle" maxlength="50" placeholder="Other Title"></input>

                    </div>
                    <div class="form-group">
                        <label for="account">District</label>
                        <select class="form-control" id="district" name="district" required="true">
                            <option value="">Select District</option>
                        </select>
                    </div>
                    <p>Meal Selection</p>
                    <div class="form-check">
                        <input class="form form-check-input" type="checkbox" name="add1" value="1" id="">
                        <label class="form-check-label" for="">Breakfast Thursday: August 15, 7:30 A.M. – 8:30 A.M.</label>
                    </div>
                    <div class="form-check">
                        <input class="form form-check-input" type="checkbox" name="add2" value="1" id="">
                        <label class="form-check-label" for="">Lunch Thursday: August 15, 11:30 A.M. – 12:45 P.M.</label>
                    </div>
                    <div class="form-check">
                        <input class="form form-check-input" type="checkbox" name="add4" value="1" id="">
                        <label class="form-check-label" for="">Reception (Appetizers) Thursday: August 15, 5:00 A.M. – 7:00 A.M.</label>
                    </div>
                    <div class="form-check">
                        <input class="form form-check-input" type="checkbox" name="add3" value="1" id="">
                        <label class="form-check-label" for="">Breakfast Friday: August 16, 7:30 A.M. – 8:30 A.M.</label>
                    </div>
                    <hr/>
                    <div class="form-check">
                        <input class="form form-check-input" type="checkbox" name="vegmeals" value="1" id="">
                        <label class="form-check-label" for="">Vegetarian Meals Only (Applies to all)</label>
                    </div>
                    <div class="form-check">
                        <input class="form form-check-input" type="checkbox" name="vegan" value="1" id="">
                        <label class="form-check-label" for="">Vegan Meals Only (Applies to all)</label>
                    </div>
                    <div class="form-check">
                        <input class="form form-check-input" type="checkbox" name="glutenFree" value="1" id="">
                        <label class="form-check-label" for="">Gluten Free Meals Only (Applies to all)</label>
                    </div>
                    <div class="form-group mb-5 mt-3">
                        <button type="submit" class="btn btn-outline-primary float-right">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</cfoutput>
<script>
    
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

        $('#district').append('<optgroup label="Migrant Project Agencies">');

        $.each(distObj, function (i, dist) {

            $('#district').append($('<option>', {

                value: dist.distid,

                text : dist.district

            }));

        });

        $('#district').append('</optgroup>');

    }
</script>