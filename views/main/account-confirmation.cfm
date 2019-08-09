<!--- For styling, visit:  https://getbootstrap.com/docs/4.3/components/alerts/ --->

<!--- Add page index to make back-to-top and hashtags work --->
<cfset pageURL = '/main/agenda.cfm'>
<cfoutput>
    <div class="container-fluid pt-3">
        <div class="row">
            <!--- Content goes here. use bootstrap v4.3 column classes for desired column spacing. example here is 4 column --->
            <!--- For column classes help, visit https://getbootstrap.com/docs/4.3/layout/grid/ --->
            <div class="col-lg-12">
                
                <h2>Account Confirmation</h2>
                <div id="response">
                    We will update this page shortly.
                </div>
            </div>
        </div>
    </div>
</cfoutput>

<script>
    $(function(){
        
        if(getUrlParam('signature') != undefined){
            if(getUrlParam('reset') != undefined){
                $.ajax({url: 'https://msis.msdr.org/remote-objects/account.cfc' 
                    ,type:"get",
                    dataType: "jsonp"
                    ,jsonpCallback:"showConfirmation",
                    data: { method:"SendPassword",signature: getUrlParam('signature'), returnformat: "plain"}
                });
            }
            else{
                $.ajax({url: 'https://msis.msdr.org/remote-objects/account.cfc'
                    ,type:"get",
                    dataType: "jsonp"
                    ,jsonpCallback:"showConfirmation",
                    data: { method:"confirmAccount",signature: getUrlParam('signature'), returnformat: "plain"}
                });
            }
        }

        if(getUrlParam('healthSignature') != undefined){
            if(getUrlParam('reset') != undefined){
                $.ajax({url: 'https://msis.msdr.org/remote-objects/account.cfc' 
                    ,type:"get",
                    dataType: "jsonp"
                    ,jsonpCallback:"showConfirmation",
                    data: { method:"SendHealthPassword",healthSignature: getUrlParam('healthSignature'), returnformat: "plain"}
                });
            }
            else{
                $.ajax({url: 'https://msis.msdr.org/remote-objects/account.cfc'
                    ,type:"get",
                    dataType: "jsonp"
                    ,jsonpCallback:"showConfirmation",
                    data: { method:"confirmHealthAccount",healthSignature: getUrlParam('healthSignature'), healthAction:'approveEmail',returnformat: "plain"}
                });
            }
          
        }
    });
    function showConfirmation(message){
        $('#response').html(message);
    }
    function getUrlVars() {
        var vars = {};
        var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
            vars[key] = value;
        });
        return vars;
    }
    function getUrlParam(parameter, defaultvalue){
      var urlparameter = defaultvalue;
      if(window.location.href.indexOf(parameter) > -1){
          urlparameter = getUrlVars()[parameter];
          }
      return urlparameter;
    }
</script>