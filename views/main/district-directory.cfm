<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->
<cfparam name="district" default="">
<cfinvoke
	webservice="http://msis.msdr.org/web_services/districtDirectory.cfc?wsdl"
	method="getDirectory"
	returnvariable="directory">
	<cfinvokeargument name="sy" value="2018-2019"/>
</cfinvoke><!------>

<!---<cfset requestBody = toString( getHttpRequestData().content ) />--->
<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/district-directory.cfm'>
<cfoutput>
    <div class="container pt-3">
        <div class="row">
            <!--- Content goes here. use bootstrap v4.3 column classes for desired column spacing. example here is 4 column --->
            <!--- For column classes help, visit https://getbootstrap.com/docs/4.3/layout/grid/ --->
            <div class="col-lg-12">
                
                <h2>District Directory</h2>
                <form class="bg-light border mb-3 p-3 rounded" method="post" action="/main/district-directory.cfm">
                    <div class="form-group">
                        <label for="district">District</label>
                        <div class="input-group">
                            <select class="form-control" id="district" name="district">
                                <option value="">Select District</option>

                            </select>
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-outline-primary">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
                <cfif district NEQ ''>
                    <cfoutput query="directory" group="dist_title">
                        <cfif district EQ dist_id>
                            <h2 class="selected">#dist_title#</h2>
                            <strong>Address </strong>
                            <p class="">
                                
                                #address#,
                                #city#,
                                #state#
                                #zip#
                            </p>
                            <strong>Regular Term</strong>
                            <p class="">
                                #dateFormat(first_day, 'm/dd/yyyy')#
                                –
                                #dateFormat(last_day, 'm/dd/yyyy')#
                            </p>
                            <Strong>Spring Break</Strong>
                            <p class="">
                                #dateFormat(spring_break, 'm/dd/yyyy')# – #dateFormat(springlast, 'm/dd/yyyy')#
                            </p>
                            <Strong>Winter Break</Strong>
                            <p class="">
                                #dateFormat(winter_break, 'm/dd/yyyy')# – #dateFormat(winterlast, 'm/dd/yyyy')#
                            </p>
                            <cfoutput group="position">
                                <h4>#Position#</h4>
                                <cfoutput group="name">

                                    <div>
                                        <strong>#first_name# #last_name#</strong><br/>
                                        Phone #phone#<br/>
                                        <cfif fax NEQ ''>Fax #fax#<br/></cfif>
                                        <a href="mailto:#email#">#email#</a><br/>
                                        <br/>
                                    </div>
                
                                </cfoutput>
                            </cfoutput>
                        </cfif>
                    </cfoutput><!------>
                </cfif>
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
        //alert(resp.DATA);
        
        $('#district').append('<optgroup label=""></optgroup>');

        $('#district').append('<optgroup label="Project Agencies">');
        
        $.each(distObj, function (i, dist) {
            if($('.selected').text() == dist.district){
                $('#district').append($('<option>', {

                value: dist.distid,

                text : dist.district,

                selected : true

                }));
            }
            else{

                $('#district').append($('<option>', {

                    value: dist.distid,

                    text : dist.district

                }));
            }

        });

        $('#district').append('</optgroup>');



    }
</script>