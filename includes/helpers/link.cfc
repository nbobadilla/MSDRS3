component accessors="true" singleton{
    property name="links";

    link function init(){

		variables.links = {
			"FERPA" :               { "id":1, "friendlyName": "FERPA", "AWSId": "80DD11E4-1FFF-435F-A42CDB1340F2132F.pdf"},
            "PFSDefinition" :       { "id":2, "friendlyName": "Priority For Service Definition", "AWSId": "291F4B92-F20D-4C9F-8F6BE78C45DD15F3.pdff"},
            "GradRequirements" :    { "id":3, "friendlyName": "Graduation Requirements", "AWSId": "80DD11E4-1FFF-435F-A42CDB1340F2132F.pdf"},
            "IDRPLAN" :             { "id":4, "friendlyName": "District ID&R Plan", "AWSId": "76429FB3-C8DB-4B10-96B831CDF948E035.docx"},
            "MEPGuidance" :         { "id":5, "friendlyName": "MEP Guidance", "AWSId": "17FE03C2-96B9-446E-B2A6EB99DDF6AEA9.pdf"},
            "MEPEligCriteria" :     { "id":6, "friendlyName": "MEP Eligibility Criteria", "AWSId": "DC774E3B-CFC7-4445-BFA574FB8F535FBC.pdf"},
            "MGS":                  { "id":7, "friendlyName": "Graduation Specialist Job Description", "AWSId": "DC391011-47F7-4A05-AA513428A5D68FD9.pdf"},
            "MEPCRITE": {"id":1, "friendlyName":"MEP Eligibility Criteria", "AWSId": "DC774E3B-CFC7-4445-BFA574FB8F535FBC.pdf"},
            "MEPGUIDE": {"id":1, "friendlyName":"MEP Guidance", "AWSId": "17FE03C2-96B9-446E-B2A6EB99DDF6AEA9.pdf"},
            "MEPSUPDEF": {"id":1, "friendlyName":"MEP Supplemental Service Definitions", "AWSId": "44896B82-3D8A-47DD-99EB89595CCBE018.pdf"},
            "PLANNER": {"id":1, "friendlyName":"MSDRS Planner", "AWSId": "CEBDD2A2-984C-4B66-A937DD0FADED4D6A.pdf"},
            "RRREQUIRE": {"id":1, "friendlyName":"MSIS and ID&R Record Retention Requirements","AWSId": "291F4B92-F20D-4C9F-8F6BE78C45DD15F3.pdf"},
            "PROJMAP": {"id":1, "friendlyName":"Project District Map", "AWSId": "5ED5D564-E4D3-423C-9AFD8DAFAF54F141.pdf"},
            "RCJOB": {"id":1, "friendlyName":"Records Clerk Job Description", "AWSId": "5B02E991-52A3-4A1A-B3F32759E41F32B3.pdf"},
            "RTJOB": {"id":1, "friendlyName":"Recruiter Job Description", "AWSId": "ECEF795D-AFFD-4C42-B3A01A8C877C3FAF.pdf"},
            "MSAJOB": {"id":1, "friendlyName":"Student Advocate Job Description", "AWSId": "79FDD34E-7212-413D-AFD37E6390D08CDB.pdf"},
            "ESTABLUNCH": {"id":1, "friendlyName":"Establishing Migrant Eligibility (USDA Nov. 2004)", "AWSId": "9A7B522F-0504-4993-98BF5266EE70B496.pdf"},
            "FREELUNCH": {"id":1, "friendlyName":"Migrant Free Lunch Eligibility (USDA Aug. 2004)", "AWSId": "F6996A5A-6D5E-4868-936A5946B3107935.pdf"},
            "OSPILUNCH": {"id":1, "friendlyName":"OSPI Memorandum (Free Lunch Memo Dec. 2005)", "AWSId": "A8FEF696-BFF1-4A14-8F72F6E86536652E.pdf"},
            "RCBOOK": {"id":1, "friendlyName":"MSIS Handbook", "AWSId": "79F95E3F-C04C-4F36-9419C40249B37737.pdf"},
            "REPORTSBOOK": {"id":1, "friendlyName":"MSIS Reports Booklet", "AWSId": "62D03742-A3D5-43E9-AA7F68097CC21A64.pdf"},
            "CHALLCOE": {"id":1, "friendlyName":"Challenged COE Form", "AWSId": "4D030515-F7EB-45CD-BADEB5FFD5F3399A.pdf"},
            "COE": {"id":1, "friendlyName":"Eligibility Certification", "AWSId": "0F227880-8391-41A6-A4CFCA39AC206B58.pdf"},
            "UMOVE": {"id":1, "friendlyName":"Have you recently moved?", "AWSId": "5D939CC7-919F-4FFF-9BD65CB5B9E6DEC8.pdf"},
            "HSFORM": {"id":1, "friendlyName":"Home and Private School Form", "AWSId": "D615334D-9038-464A-B727CA9338574D57.pdf"},
            "HSFORMSPAN": {"id":1, "friendlyName":"Priority For Service Definition", "AWSId": "366BF193-ED2C-473B-9A1C3EC99D2DD8FC.pdf"},
            "RTBOOK": {"id":1, "friendlyName":"ID&R Handbook", "AWSId": "C5AB8F2D-B7B5-419D-B4CD36D8653727B7.pdf"},
            "RTPLAN": {"id":1, "friendlyName":"Individual MEP Recruiter Plan", "AWSId": "F12ED4CE-8BAA-4FCE-84712E96E5FFB368.pdf"},
            "RTHD": {"id":1, "friendlyName":"The Qualifying Moves and MEP Eligibility Criteria Handouts", "AWSId": "58C23A57-DE7C-4C2B-B10FAF6431EADA74.pdf"},
            "RTVIDEO": {"id":1, "friendlyName":"Video – The Qualifying Moves for the MEP", "AWSId": "0BxgpmxyQ79rmbGhiTm1YOFZXc1U/view"},
            "FARMLABOR": {"id":1, "friendlyName":"Washington State Licensed Farm Labor Contractors", "AWSId": "licensedFLCs.pdf"},
            "FARMHOUSE": {"id":1, "friendlyName":"Washington State Licensed Farm Labor Contractors", "AWSId": "BBF8264B-B5D3-4DAF-984D24B7E7B7D482 (3)"},
            "MEPMAC": {"id":1, "friendlyName":"History of the MEP Mac", "AWSId": "49D3DCC4-80C6-49A3-8690F95CB3A180F6.mp4"},
            "MEPWINDOWS": {"id":1, "friendlyName":"History of the MEP Windows", "AWSId": "  "},
            "POLICIES": {"id":1, "friendlyName":"Quality Control Policies and Procedures", "AWSId": "D0C7318D-8CB0-4412-9652D1CB515DEBD4 (1)"},
            "REFGUIDE": {"id":1, "friendlyName":"Reference Guide for COE Completion", "AWSId": "89281C0C-0909-4B22-A1919DCF609726E1.pdf"},
            "GRANTBRO": {"id":1, "friendlyName":"Grant and Ferry Counties", "AWSId": "425BFBF8-5D0E-4975-86826F466B9109F7.pdf"},
            "GRAYSBRO": {"id":1, "friendlyName":"Grays Harbor, Mason and Kitsap Counties", "AWSId": "DB85687A-16B6-44BC-8757C04176E8BD55.pdf"},
            "KITTITASBRO": {"id":1, "friendlyName":"Kittitas County", "AWSId": "36193476-DD25-424F-82279A7EBD7D02AC.pdf"},
            "PIERCEBRO": {"id":1, "friendlyName":"Pierce and King Counties", "AWSId": "E9D05911-87AA-450B-B4C36575DE2B7E5A.pdf"},
            "SKAGITBRO": {"id":1, "friendlyName":"Skagit County", "AWSId": "14BE89FD-A28A-4B8C-A47525B289979926.pdf"},
            "THURSTONBRO": {"id":1, "friendlyName":"Thurston, Cowlitz and Clark Counties", "AWSId": "D4EC537F-F766-4E23-A914AF6F93F6D1AF.pdf"},
            "WALLABRO": {"id":1, "friendlyName":"Walla Walla County", "AWSId": "17D80708-29A7-45D7-B3CCCCA1AF729E3A.pdf"},
            "WHATCOMBRO": {"id":1, "friendlyName":"Whatcom County", "AWSId": "34410DA1-D1DD-424B-96A757CCE1C77E27.pdf"},
            "YAKIMABRO": {"id":1, "friendlyName":"Yakima County", "AWSId": "728765A1-E3E9-4920-8F6892DB70583A03.pdf"},
            "rclog": {"id":1, "friendlyName":"Migrant Recruiter Log Form", "AWSId": "7816D754-DD3C-4584-AB41DF50274C9F4D.xls"},
            "qualcrop": {"id":1, "friendlyName":"qualifying activities and crops", "AWSId": "0959C3BB-DCF2-4738-B0B3D0DC147CCE0A.pdf"},
            "rcguide": {"id":1, "friendlyName":"recruiters guide to determine eligibility", "AWSId": "75FBA290-4AAF-4C09-834C91103C882649.pdf"},
            "physical": {"id":1, "friendlyName":"migrant physical and dental exams", "AWSId": "BDDCE52D-9743-4599-BCA3566C34091540.pdf"},
            /**/


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