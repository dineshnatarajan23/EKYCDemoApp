function getBotVsHumanApp(){
	var queryStr = "select count('id'), approvedby from public.\"KYCApplications\" Group by public.\"KYCApplications\".approvedby";
	try{
		$s.query("KYCDS", queryStr);
			results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getBotVsHumanApp();
