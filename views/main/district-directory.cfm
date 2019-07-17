<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->

<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/district-directory.cfm'>
<cfoutput>
    <div class="container mt-3">
        <div class="row">
            <!--- Content goes here. use bootstrap v4.3 column classes for desired column spacing. example here is 4 column --->
            <!--- For column classes help, visit https://getbootstrap.com/docs/4.3/layout/grid/ --->
            <div class="col-lg-12">
                
                <h2>District Directory</h2>
                <form class="bg-light border mb-3 p-3 rounded">
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
                <h2>
                    <!---District Name--->
                </h2>
            </div>
        </div>
    </div>
</cfoutput>