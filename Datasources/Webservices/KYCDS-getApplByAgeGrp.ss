function getApplByAgeGrp(){
	var queryStr = "select count('id'), age from public.\"KYCApplications\" Group by public.\"KYCApplications\".age";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getApplByAgeGrp();
