<!--- All methods in this helper will be available in all handlers,views & layouts --->
<cfscript>
    linkHelper = new link();
    function link(friendlyName){
        
        return linkHelper.getAWSLink(friendlyName);
    } 
    function linkTitle(friendlyName){
        return linkHelper.getAWSTitle(friendlyName);
    } 
</cfscript>