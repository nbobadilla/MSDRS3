component accessors="true" singleton{
    property name="links";

    link function init(){

		variables.links = {
			"FERPA" :               { "id":1, "friendlyName": "FERPA", "AWSId": "80DD11E4-1FFF-435F-A42CDB1340F2132F.pdf"},
            "PFSDefinition" :       { "id":2, "friendlyName": "Priority For Service Definition", "AWSId": "80DD11E4-1FFF-435F-A42CDB1340F2132F.pdf"},
            "GradRequirements" :    { "id":3, "friendlyName": "Graduation Requirements", "AWSId": "80DD11E4-1FFF-435F-A42CDB1340F2132F.pdf"},
            "IDRPLAN" :             { "id":4, "friendlyName": "District ID&R Plan", "AWSId": "80DD11E4-1FFF-435F-A42CDB1340F2132F.pdf"},
            "MEPGuidance" :         { "id":5, "friendlyName": "MEP Guidance", "AWSId": "80DD11E4-1FFF-435F-A42CDB1340F2132F.pdf"},
            "MEPEligCriteria" :     { "id":6, "friendlyName": "MEP Eligibility Criteria", "AWSId": "80DD11E4-1FFF-435F-A42CDB1340F2132F.pdf"}
		};

		variables.lastID = 10;
		
		return this;
	}
    function getAWSResource(required friendlyName){

        if(structKeyExists(variables.links,friendlyName)){
            return variables.links[friendlyName]
        }else{
            return 'Resource Not Found'
        }
    }
    function getAWSLink(required friendlyName){
        var cloudLocation = 'https://s3-us-west-2.amazonaws.com/msdr-msis-data/cache/file/';
        var AWSResource = getAWSResource(friendlyName);
        if(isStruct(AWSResource)){
            return cloudLocation&AWSResource.AWSId;
        }else{
            return AWSResource;
        }
        
    }
    function getAWSTitle(required friendlyName){
        return getAWSResource(friendlyName).friendlyName;
    }



}